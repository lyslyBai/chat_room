#ifndef __LYSLG_HTTP_RESOURCE_SERVLET_H__
#define __LYSLG_HTTP_RESOURCE_SERVLET_H__


#include "servlet.h"

namespace lyslg{
namespace http {

class ResourceServlet :public lyslg::http::Servlet {
public:
    typedef std::shared_ptr<ResourceServlet> ptr;
    ResourceServlet(const std::string& path);
    virtual int32_t handle(HttpRequest::ptr  request
                            ,HttpResponse::ptr response
                            , HttpSession::ptr session) override;
private:
    std::string m_path;
};

}
}

#endif