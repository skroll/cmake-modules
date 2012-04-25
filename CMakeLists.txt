project(cmake-module-test)
cmake_minimum_required(VERSION 2.8)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/modules")

include(CheckEpoll)
include(CheckKqueue)

check_kqueue(HAS_KQUEUE)
check_epoll(HAS_EPOLL)
