#ifndef RT_LINK_H
#define RT_LINK_H

#include "rt_types.h"

enum { RT_LINK_NONE, RT_LINK_PARENT, RT_LINK_CHILD };

/* runtime side (rt_link.c) */
u32  rt_link_siocnt(u32 stored);
void rt_link_start(void);
void rt_link_poll(void);
extern u32 g_rt_link_transfers;

/* transport, provided by the platform */
int  rt_link_role(void);                  /* RT_LINK_PARENT / RT_LINK_CHILD / RT_LINK_NONE */
int  rt_link_connected(void);
void rt_link_tx(const u8 *data, int n);
int  rt_link_rx(u8 *data, int max);       /* non-blocking; bytes read */

#endif
