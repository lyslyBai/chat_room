cmake_minimum_required(VERSION 3.0)
project(chat_room)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/lyslg)

include (lyslg/cmake/utils.cmake)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -O0 -ggdb -std=c++11 -Wall -Wno-deprecated -Werror -Wno-unused-function -Wno-builtin-macro-redefined")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/chat)
# include_directories(/apps/lyslg/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/lyslg/lyslg)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/lyslg/lyslg/http)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/lyslg/lyslg/util)
# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/lyslg/thirdpart)
# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/lyslg/thirdpart/yaml-cpp/include)
# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/lyslg/thirdpart/jsoncpp-1.8.4/include)
#link_directories(/apps/lyslg/lib)

find_package(Boost REQUIRED)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
endif()

#find_package(Protobuf REQUIRED)
#if(Protobuf_FOUND)
#    include_directories(${Protobuf_INCLUDE_DIRS})
#endif()
# find_package(OpenSSL REQUIRED)
# if(OPENSSL_FOUND)
#     include_directories(${OPENSSL_INCLUDE_DIR})
# endif()

# set(LIB_SRC
#         chat/my_module.cc
#         chat/resource_servlet.cc
#     )

aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/chat LIB_SRC)
#PROTOBUF_GENERATE_CPP(PB_SRCS PB_HDRS lyslg/test.proto)
#list(APPEND LIB_SRC ${PB_SRCS})
#
#message(STATUS ${LIB_SRC})

add_library(chat_room SHARED ${LIB_SRC})
target_link_libraries(chat_room -ljsoncpp)
force_redefine_file_macro_for_sources(chat_room)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
