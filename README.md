# cmake-modules

A collection of CMake modules to simplify projects.

## Modules

### CheckKqueue
Adds the `CHECK_KQUEUE` function. Checks if the system has `kqueue` support.

For example:

    check_kqueue(HAS_KQUEUE)

### CheckEpoll
Adds the `CHECK_EPOLL` function. Checks if the system has `epoll` support.

For example:

    check_epoll(HAS_EPOLL)


