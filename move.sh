#!/bin/sh

# if [ ! -d bin/module ]：这个条件语句检查是否存在 bin/module 目录。! -d 表示目录不存在的条件。
# 如果目录不存在，执行 mkdir bin/module 创建该目录。
# 如果目录已经存在，执行 unlink 命令删除 bin/chat_room 和 bin/module/libchat_room.so 这两个文件。

if [ ! -d /home/lyslg/Documents/chat_room/bin/module ]
then
    mkdir /home/lyslg/Documents/chat_room/bin/module
else
    unlink /home/lyslg/Documents/chat_room/bin/chat_room
    unlink /home/lyslg/Documents/chat_room/bin/module/libchat_room.so
fi

cp /home/lyslg/Documents/chat_room/lyslg/bin/lyslg /home/lyslg/Documents/chat_room/bin/chat_room
cp /home/lyslg/Documents/chat_room/lib/libchat_room.so /home/lyslg/Documents/chat_room/bin/module/
