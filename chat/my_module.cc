#include "my_module.h"
#include "config.h"
#include "log.h"
#include "resource_servlet.h"
#include "application.h"
#include "env.h"
#include "chat_servlet.h"

namespace chat {

static lyslg::Logger::ptr g_logger = LYSLG_LOG_ROOT();

MyModule::MyModule()
    :lyslg::Module("chat_room", "1.0", "") {
}

bool MyModule::onLoad() {
    LYSLG_LOG_INFO(g_logger) << "onLoad";
    return true;
}

bool MyModule::onUnload() {
    LYSLG_LOG_INFO(g_logger) << "onUnload";
    return true;
}

// static int32_t handle(lyslg::http::HttpRequest::ptr request
//                       , lyslg::http::HttpResponse::ptr response
//                       , lyslg::http::HttpSession::ptr session) {
//    LYSLG_LOG_INFO(g_logger) << "handle";
//    response->setBody("handle");
//    return 0;
// }

bool MyModule::onServerReady() {
    LYSLG_LOG_INFO(g_logger) << "onServerReady";

    std::vector<lyslg::TcpServer::ptr> svrs;
    if(!lyslg::Application::GetInstance()->getServer("http",svrs)) {
        LYSLG_LOG_INFO(g_logger) << "no httpserver alive";
        return false;
    }

    for(auto& i : svrs) {
        lyslg::http::HttpServer::ptr http_server = 
            std::dynamic_pointer_cast<lyslg::http::HttpServer>(i);
        if(!http_server) {
            continue;
        }
        auto slt_dispatch = http_server->getServletDispatch();
        lyslg::http::ResourceServlet::ptr slt(new lyslg::http::ResourceServlet(lyslg::EnvMgr::GetInstance()->getCwd()));
        // 这里前面的/一定要加，因为url中一定是/html
        slt_dispatch->addGlobServlet("/html/*",slt);
    }
    svrs.clear();
    if(!lyslg::Application::GetInstance()->getServer("ws",svrs)) {
        LYSLG_LOG_INFO(g_logger) << "no websocket server alive";
        return false;
    }

    for(auto& i : svrs) {
        lyslg::http::WSServer::ptr ws_server = 
            std::dynamic_pointer_cast<lyslg::http::WSServer>(i);
        if(!ws_server) {
            continue;
        }
        lyslg::http::ServletDispatch::ptr slt_dispatch = ws_server->getWSServletDispatch();
        ChatWSServlet::ptr slt(new ChatWSServlet);
        
        slt_dispatch->addServlet("/lyslg/chat",slt);
    }


    return true;
}

bool MyModule::onServerUp() {
    LYSLG_LOG_INFO(g_logger) << "onServerUp";
    return true;
}

}

extern "C" {

lyslg::Module* CreateModule() {
    lyslg::Module* module = new chat::MyModule;
    LYSLG_LOG_INFO(chat::g_logger) << "CreateModule " << module;
    return module;
}

void DestoryModule(lyslg::Module* module) {
    LYSLG_LOG_INFO(chat::g_logger) << "CreateModule " << module;
    delete module;
}

}
