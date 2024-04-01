cmake_minimum_required(VERSION 3.0)
project(test)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -O0 -ggdb -std=c++11 -Wall -Wno-deprecated -Werror -Wno-unused-function -Wno-builtin-macro-redefined")

add_executable(mergesort  ${CMAKE_CURRENT_SOURCE_DIR}/mergesort.cpp)
add_executable(QuickSort  ${CMAKE_CURRENT_SOURCE_DIR}/QuickSort.cpp)
add_executable(KMP  ${CMAKE_CURRENT_SOURCE_DIR}/KMP.cpp)
add_executable(class_init  ${CMAKE_CURRENT_SOURCE_DIR}/class_init.cpp)
add_executable(basicsort  ${CMAKE_CURRENT_SOURCE_DIR}/basicsort.cpp)
add_executable(maxTotalFruits  ${CMAKE_CURRENT_SOURCE_DIR}/maxTotalFruits.cpp) # test 为cmake保留关键字，不能作为文件名

SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)
