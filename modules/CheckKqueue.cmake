# - Check if the system supports kqueue.
# CHECK_KQUEUE(<var>)
#  <var> - variable to store the result
#          (1 for success, empty for failure)

#=============================================================================
# This software is in the public domain, furnished "as is", without technical
# support, and with no warranty, express or implied, as to its usefulness for
# any purpose.
#=============================================================================


macro(CHECK_KQUEUE VARIABLE)
  if(UNIX)
    if("${VARIABLE}" MATCHES "^${VARIABLE}$")
      message(STATUS "Check if the system supports kqueue")
      include(CheckSymbolExists)
      check_symbol_exists(kqueue "sys/event.h" KQUEUE_PROTOTYPE_EXISTS)
      
      if(KQUEUE_PROTOTYPE_EXISTS)
        message(STATUS "Check if the system supports kqueue - yes")
        set(${VARIABLE} 1 CACHE INTERNAL "Result of CHECK_KQUEUE" FORCE)
      else(KQUEUE_PROTOTYPE_EXISTS)
        message(STATUS "Check if the system supports kqueue - no")
        set(${VARIABLE} "" CACHE INTERNAL "Result of CHECK_KQUEUE" FORCE)
      endif(KQUEUE_PROTOTYPE_EXISTS)
    endif("${VARIABLE}" MATCHES "^${VARIABLE}$")
  endif(UNIX)
endmacro(CHECK_KQUEUE)
