
#include "resource_servlet.h"
#include "log.h"



namespace lyslg{
namespace http {

static lyslg::Logger::ptr g_logger = LYSLG_LOG_NAME("system");

ResourceServlet::ResourceServlet(const std::string& path)
    :Servlet("ResourceServlet")
    ,m_path(path){
}


int32_t ResourceServlet::handle(HttpRequest::ptr request,
                        HttpResponse::ptr response,
                        HttpSession::ptr session){
    auto path = m_path+ "/" + request->getPath(); // 文件所在路径  
    LYSLG_LOG_INFO(g_logger) << "handle path=" << path; 
/*检查请求的路径中是否包含 ..，如果包含，说明存在路径遍历攻击的风险。
在这种情况下，设置响应体为 "invalid path"，响应状态为 404（NOT_FOUND），然后返回 0。*/
    if(path.find("..") != std::string::npos) {
        response->setBody("invalid path");
        response->setStatus(lyslg::http::HttpStatus::NOT_FOUND);
        return 0;
    } 
    std::ifstream ifs(path);
    if(!ifs) {
        response->setBody("invalid file");
        response->setStatus(lyslg::http::HttpStatus::NOT_FOUND);
        return 0;
    }

    std::stringstream ss;
    std::string line;

    while(std::getline(ifs,line)) {
        ss << line << std::endl;
    }

    response->setBody(ss.str());
    /*"content-type"：这是 HTTP 响应头的一部分，表示服务器返回的内容的类型。
"text/html"：指定内容的 MIME 类型为 HTML，告诉浏览器应该将其解释为 HTML 文档。
"charset=utf-8"：通过指定字符集为 UTF-8，确保浏览器能够正确解码和显示包含非ASCII字符的文本内容。*/
    response->setHeader("content-type", "text/html;charset=utf-8");
    return 0;
}


}
}


