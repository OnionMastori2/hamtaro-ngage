#ifndef RT_SCALE_H
#define RT_SCALE_H

#include "rt_types.h"

#define RT_PANEL_W 176
#define RT_PANEL_H 208

enum { RT_FMT_BGR555, RT_FMT_RGB565, RT_FMT_XRGB4444 };

void rt_scale_set_format(int format);
void rt_scale_frame(u16 *dst, int pitch_pixels);
u16  rt_scale_color(u32 bgr555);
extern int g_rt_scale_filter;   /* 1 = smooth (default), 0 = nearest */

#endif
