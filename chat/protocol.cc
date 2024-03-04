#include "protocol.h"
#include "util.h"
/*JSON（JavaScript Object Notation）和 
YAML（YAML Ain't Markup Language）都是用于数据序列化和交换的轻量级文本格式，
但它们在语法结构和设计理念上有一些不同。*/
namespace chat {

ChatMessage::ptr ChatMessage::Create(const std::string& v) {
    Json::Value json;
    if(!lyslg::JsonUtil::FromString(json, v)) {
        return nullptr;
    }
    ChatMessage::ptr rt(new ChatMessage);
    auto names = json.getMemberNames();
    for(auto& i : names) {
        rt->m_datas[i] = json[i].asString();
    }
    return rt;
}

ChatMessage::ChatMessage() {
}

std::string ChatMessage::get(const std::string& name) {
    auto it = m_datas.find(name);
    return it == m_datas.end() ? "" : it->second;
}

void ChatMessage::set(const std::string& name, const std::string& val) {
    m_datas[name] = val;
}

std::string ChatMessage::toString() const {
    Json::Value json;
    for(auto& i : m_datas) {
        json[i.first] = i.second;
    }
    return lyslg::JsonUtil::ToString(json);
}

}
