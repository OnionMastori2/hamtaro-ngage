/* host_link.c - link cable transport for the PC harness: TCP.
 *   --link-host PORT        be the parent, wait for one connection
 *   --link-join HOST:PORT   be the child
 */
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <sys/socket.h>

#include "rt.h"
#include "rt_link.h"

static int s_role = RT_LINK_NONE;
static int s_listen = -1, s_sock = -1;

static void nodelay_nonblock(int fd)
{
    int one = 1;
    setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
    fcntl(fd, F_SETFL, fcntl(fd, F_GETFL) | O_NONBLOCK);
}

int rt_link_host_setup(const char *spec, int listen_mode)
{
    struct sockaddr_in a;
    memset(&a, 0, sizeof a);
    a.sin_family = AF_INET;
    if (listen_mode) {
        int one = 1;
        s_listen = socket(AF_INET, SOCK_STREAM, 0);
        setsockopt(s_listen, SOL_SOCKET, SO_REUSEADDR, &one, sizeof one);
        a.sin_port = htons((unsigned short)atoi(spec));
        a.sin_addr.s_addr = htonl(INADDR_ANY);
        if (bind(s_listen, (struct sockaddr *)&a, sizeof a) || listen(s_listen, 1)) {
            perror("link listen");
            return -1;
        }
        fcntl(s_listen, F_SETFL, fcntl(s_listen, F_GETFL) | O_NONBLOCK);
        s_role = RT_LINK_PARENT;
    } else {
        char host[128];
        const char *colon = strrchr(spec, ':');
        if (!colon) return -1;
        memcpy(host, spec, (size_t)(colon - spec));
        host[colon - spec] = 0;
        a.sin_port = htons((unsigned short)atoi(colon + 1));
        inet_pton(AF_INET, host, &a.sin_addr);
        s_sock = socket(AF_INET, SOCK_STREAM, 0);
        if (connect(s_sock, (struct sockaddr *)&a, sizeof a)) {
            perror("link connect");
            return -1;
        }
        nodelay_nonblock(s_sock);
        s_role = RT_LINK_CHILD;
    }
    return 0;
}

int rt_link_role(void) { return s_role; }

int rt_link_connected(void)
{
    if (s_sock < 0 && s_listen >= 0) {
        int fd = accept(s_listen, 0, 0);
        if (fd >= 0) {
            nodelay_nonblock(fd);
            s_sock = fd;
            rt_log("link: child connected");
        }
    }
    return s_sock >= 0;
}

void rt_link_tx(const u8 *data, int n)
{
    if (s_sock >= 0 && send(s_sock, data, (size_t)n, MSG_NOSIGNAL) != n) {
        close(s_sock);
        s_sock = -1;
        rt_log("link: peer lost");
    }
}

int rt_link_rx(u8 *data, int max)
{
    ssize_t r;
    if (s_sock < 0) return 0;
    r = recv(s_sock, data, (size_t)max, 0);
    if (r == 0 || (r < 0 && errno != EAGAIN && errno != EWOULDBLOCK)) {
        close(s_sock);
        s_sock = -1;
        rt_log("link: peer lost");
        return 0;
    }
    return r < 0 ? 0 : (int)r;
}
