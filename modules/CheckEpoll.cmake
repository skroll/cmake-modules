# - Check if the system supports epoll.
# CHECK_EPOLL(<var>)
#  <var> - variable to store the result
#          (1 for success, empty for failure)

#=============================================================================
# This software is in the public domain, furnished "as is", without technical
# support, and with no warranty, express or implied, as to its usefulness for
# any purpose.
#=============================================================================

macro(CHECK_EPOLL VARIABLE)
  if(UNIX)
    if("${VARIABLE}" MATCHES "^${VARIABLE}$")
      message(STATUS "Check if the system supports epoll")
      include(CheckSymbolExists)
      check_symbol_exists(epoll_create "sys/epoll.h" EPOLL_PROTOTYPE_EXISTS)

      if(EPOLL_PROTOTYPE_EXISTS)
        message(STATUS "Check if the system supports epoll - yes")
        set(${VARIABLE} 1 CACHE INTERNAL "Result of CHECK_EPOLL" FORCE)
      else(EPOLL_PROTOTYPE_EXISTS)
        message(STATUS "Check if the system supports epoll - no")
        set(${VARIABLE} "" CACHE INTERNAL "Result of CHECK_EPOLL" FORCE)
      endif(EPOLL_PROTOTYPE_EXISTS)
    endif("${VARIABLE}" MATCHES "^${VARIABLE}$")
  endif(UNIX)
endmacro(CHECK_EPOLL)
