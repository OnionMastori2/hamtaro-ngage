/* link_test.c - two processes, parent and child, exchanging transfers
 * through rt_link.c + host/host_link.c exactly as the game's SIO code does:
 * multi-player SIOCNT, SIOMLT_SEND, start bit, Serial IRQ.  */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>
#include "rt.h"
#include "rt_link.h"

u8 g_rt_io[0x400];
rt_config g_rt_cfg;
static int irqs;
static u16 got[64][2];
void rt_raise_irq(u32 bits) { if (bits & 0x80u) { got[irqs][0] = RT_IO16(0x120); got[irqs][1] = RT_IO16(0x122); irqs++; } }
void rt_log(const char *fmt, ...) { (void)fmt; }
int rt_link_host_setup(const char *spec, int listen_mode);

static void setup_mode(void) { RT_IO16(0x134) = 0; RT_IO16(0x128) = 0x2003 | 0x4000; }

int main(void)
{
    pid_t pid = fork();
    int i, ok = 1;
    if (pid == 0) {                       /* child console */
        usleep(200000);
        rt_link_host_setup("127.0.0.1:47123", 0);
        setup_mode();
        for (i = 0; irqs < 32 && i < 2000000; i++) {
            RT_IO16(0x12A) = (u16)(0xC000 + irqs);    /* what the child sends next */
            rt_link_poll();
            usleep(50);
        }
        for (i = 0; i < 32; i++)
            if (got[i][0] != (u16)(0x1000 + i) || got[i][1] != (u16)(0xC000 + i)) ok = 0;
        printf("child : %d transfers, SIOCNT reads %04X, data %s\n", irqs, rt_link_siocnt(RT_IO16(0x128)), ok ? "OK" : "WRONG");
        exit(ok ? 0 : 1);
    }
    rt_link_host_setup("47123", 1);
    setup_mode();
    while (!rt_link_connected()) usleep(1000);
    printf("parent: SIOCNT reads %04X (SD=%d SI=%d)\n", rt_link_siocnt(RT_IO16(0x128)),
           (rt_link_siocnt(RT_IO16(0x128)) >> 3) & 1, (rt_link_siocnt(RT_IO16(0x128)) >> 2) & 1);
    for (i = 0; i < 32; i++) {
        int spins = 0;
        RT_IO16(0x12A) = (u16)(0x1000 + i);
        RT_IO16(0x128) |= 0x80; rt_link_start();       /* what the SIOCNT write hook does */
        while ((RT_IO16(0x128) & 0x80) && spins++ < 1000000) { rt_link_poll(); usleep(20); }
    }
    for (i = 0; i < 32; i++)
        if (got[i][0] != (u16)(0x1000 + i) || got[i][1] != (u16)(0xC000 + i)) ok = 0;
    printf("parent: %d transfers, data %s\n", irqs, ok ? "OK" : "WRONG");
    { int st; waitpid(pid, &st, 0); return ok && WIFEXITED(st) && WEXITSTATUS(st) == 0 ? 0 : 1; }
}
