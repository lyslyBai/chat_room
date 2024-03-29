#include "chat_servlet.h"
#include "log.h"
#include "protocol.h"

namespace chat {

static lyslg::Logger::ptr g_logger = LYSLG_LOG_ROOT();

lyslg::RWMutex m_mutex;
//name -> session
std::map<std::string, lyslg::http::WSSession::ptr> m_sessions;

bool session_exists(const std::string& id) {
    LYSLG_LOG_INFO(g_logger) << "session_exists id=" << id;
    lyslg::RWMutex::ReadLock lock(m_mutex);
    auto it = m_sessions.find(id);
    return it != m_sessions.end();
}

void session_add(const std::string& id, lyslg::http::WSSession::ptr session) {
    LYSLG_LOG_INFO(g_logger) << "session_add id=" << id;
    lyslg::RWMutex::WriteLock lock(m_mutex);
    m_sessions[id] = session;
}

void session_del(const std::string& id) {
    LYSLG_LOG_INFO(g_logger) << "session_add del=" << id;
    lyslg::RWMutex::WriteLock lock(m_mutex);
    m_sessions.erase(id);
}

int32_t SendMessage(lyslg::http::WSSession::ptr session
                    , ChatMessage::ptr msg) {
    LYSLG_LOG_INFO(g_logger) << msg->toString() << " - " << session;
    return session->sendMessage(msg->toString()) > 0 ? 0: 1;
}

void session_notify(ChatMessage::ptr msg, lyslg::http::WSSession::ptr session = nullptr) {
    lyslg::RWMutex::ReadLock lock(m_mutex);
    auto sessions = m_sessions;
    lock.unlock();

    for(auto& i : sessions) {
        if(i.second == session) {
            continue;
        }
        SendMessage(i.second, msg);
    }
}

ChatWSServlet::ChatWSServlet()
    :lyslg::http::WSServlet("chat_servlet") {
}

int32_t ChatWSServlet::onConnect(lyslg::http::HttpRequest::ptr header
                              ,lyslg::http::WSSession::ptr session) {
    LYSLG_LOG_INFO(g_logger) << "onConnect " << session;
    return 0;
}

int32_t ChatWSServlet::onClose(lyslg::http::HttpRequest::ptr header
                             ,lyslg::http::WSSession::ptr session) {
    auto id = header->getHeader("$id");
    LYSLG_LOG_INFO(g_logger) << "onClose " << session << " id=" << id;
    if(!id.empty()) {
        session_del(id);
        ChatMessage::ptr nty(new ChatMessage);
        nty->set("type", "user_leave");
        nty->set("time", lyslg::Time2Str());
        nty->set("name", id);
        session_notify(nty);
    }
    return 0;
}

int32_t ChatWSServlet::handle(lyslg::http::HttpRequest::ptr header
                           ,lyslg::http::WSFrameMessage::ptr msgx
                           ,lyslg::http::WSSession::ptr session) {
    LYSLG_LOG_INFO(g_logger) << "handle " << session
            << " opcode=" << msgx->getOpcode()
            << " data=" << msgx->getData();

    auto msg = ChatMessage::Create(msgx->getData());
    auto id = header->getHeader("$id");
    if(!msg) {
        if(!id.empty()) {
            lyslg::RWMutex::WriteLock lock(m_mutex);
            m_sessions.erase(id);
        }
        return 1;
    }

    ChatMessage::ptr rsp(new ChatMessage);
    auto type = msg->get("type");
    if(type == "login_request") {
        rsp->set("type", "login_response");
        auto name = msg->get("name");
        if(name.empty()) {
            rsp->set("result", "400");
            rsp->set("msg", "name is null");
            return SendMessage(session, rsp);
        }
        if(!id.empty()) {
            rsp->set("result", "401");
            rsp->set("msg", "logined");
            return SendMessage(session, rsp);
        }
        if(session_exists(id)) {
            rsp->set("result", "402");
            rsp->set("msg", "name exists");
            return SendMessage(session, rsp);
        }
        id = name;
        header->setHeader("$id", id);
        rsp->set("result", "200");
        rsp->set("msg", "ok");
        session_add(id, session);

        ChatMessage::ptr nty(new ChatMessage);
        nty->set("type", "user_enter");
        nty->set("time", lyslg::Time2Str());
        nty->set("name", name);
        session_notify(nty, session);
        return SendMessage(session, rsp);
    } else if(type == "send_request") {
        rsp->set("type", "send_response");
        auto m = msg->get("msg");
        if(m.empty()) {
            rsp->set("result", "500");
            rsp->set("msg", "msg is null");
            return SendMessage(session, rsp);
        }
        if(id.empty()) {
            rsp->set("result", "501");
            rsp->set("msg", "not login");
            return SendMessage(session, rsp);
        }

        rsp->set("result", "200");
        rsp->set("msg", "ok");

        ChatMessage::ptr nty(new ChatMessage);
        nty->set("type", "msg");
        nty->set("time", lyslg::Time2Str());
        nty->set("name", id);
        nty->set("msg", m);
        session_notify(nty, nullptr);
        return SendMessage(session, rsp);
        //TODO notify
    }
    return 0;
}

}
