#ifndef __CHAT_CHAT_SERVLET_H__
#define __CHAT_CHAT_SERVLET_H__

#include "ws_servlet.h"

namespace chat {

class ChatWSServlet : public lyslg::http::WSServlet {
public:
    typedef std::shared_ptr<ChatWSServlet> ptr;
    ChatWSServlet();
    virtual int32_t onConnect(lyslg::http::HttpRequest::ptr header
                              ,lyslg::http::WSSession::ptr session) override;
    virtual int32_t onClose(lyslg::http::HttpRequest::ptr header
                             ,lyslg::http::WSSession::ptr session) override;
    virtual int32_t handle(lyslg::http::HttpRequest::ptr header
                           ,lyslg::http::WSFrameMessage::ptr msg
                           ,lyslg::http::WSSession::ptr session) override;
};

}

#endif
