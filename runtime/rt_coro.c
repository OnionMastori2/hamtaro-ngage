/* rt_coro.c - run the game as a coroutine so event-driven front ends can
 * drive it one frame at a time.
 *
 * game_main() is an endless loop.  On the N-Gage the application must give
 * control back to the Symbian active scheduler (via SDL's callbacks) every
 * frame, so the game runs on its own stack:
 *
 *   front end                         game stack
 *   rt_coro_frame() ----------------> rt_run() ... game logic ...
 *                                      BiosVBlankIntrWait -> rt_platform_frame
 *                   <---------------- rt_coro_yield()
 *   (present, read keys, return to the OS)
 *   rt_coro_frame() ----------------> continues after rt_coro_yield()
 *
 * Switching uses setjmp/longjmp; the very first entry needs one instruction
 * sequence to move onto the new stack (ARM for the device, x86/x86-64 for
 * the PC test build).
 */
#include <setjmp.h>
#include <stdlib.h>

#include "rt.h"
#include "rt_coro.h"

static jmp_buf s_host, s_game;
static int s_started;
static unsigned char *s_stack;
static int s_finished;
static void *s_top;

static void game_entry(void)
{
    rt_run();
    s_finished = 1;
    longjmp(s_host, 1);
}

#if defined(__arm__) || defined(__thumb__)
static void switch_and_call(void *top, void (*fn)(void))
{
    __asm__ volatile(
        "mov sp, %0\n\t"
        "mov lr, pc\n\t"
        "bx %1\n\t"
        : : "r"(top), "r"(fn) : "memory");
}
#elif defined(__x86_64__)
static void switch_and_call(void *top, void (*fn)(void))
{
    __asm__ volatile(
        "mov %0, %%rsp\n\t"
        "call *%1\n\t"
        : : "r"(top), "r"(fn) : "memory");
}
#elif defined(__i386__)
static void switch_and_call(void *top, void (*fn)(void))
{
    __asm__ volatile(
        "mov %0, %%esp\n\t"
        "call *%1\n\t"
        : : "r"(top), "r"(fn) : "memory");
}
#else
#error "rt_coro.c: add a stack switch for this CPU"
#endif

int rt_coro_init(unsigned stack_bytes)
{
    s_stack = (unsigned char *)malloc(stack_bytes);
    if (!s_stack) return -1;
    {
        /* 16-byte aligned top, as every ABI here is happy with */
        unsigned long top = (unsigned long)(s_stack + stack_bytes);
        top &= ~15ul;
        s_top = (void *)top;
    }
    return 0;
}

int rt_coro_frame(void)
{
    if (s_finished) return 0;
    if (!setjmp(s_host)) {
        if (!s_started) {
            s_started = 1;
            switch_and_call(s_top, game_entry);
        } else {
            longjmp(s_game, 1);
        }
    }
    return !s_finished;
}

void rt_coro_yield(void)
{
    if (!s_started) return;          /* not running as a coroutine */
    if (!setjmp(s_game)) longjmp(s_host, 1);
}
