#ifndef RT_CORO_H
#define RT_CORO_H
/* Run the game one frame per call (see rt_coro.c). */
int  rt_coro_init(unsigned stack_bytes);
int  rt_coro_frame(void);     /* resume until the next frame; 0 once the game ended */
void rt_coro_yield(void);     /* called from rt_platform_frame on the game stack */
#endif
