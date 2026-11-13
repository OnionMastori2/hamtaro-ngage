/* rt_ngage.h - N-Gage specific additions to the game (see rt_mods.c). */
#ifndef RT_NGAGE_H
#define RT_NGAGE_H

#ifdef __cplusplus
extern "C" {
#endif

/* show N-Gage keys (5, 7, 0, *) instead of GBA buttons in prompts */
extern int g_rt_ngage_prompts;
/* "Exit" entry on the title menu */
extern int g_rt_ngage_exit_entry;

void rt_ngage_request_exit(void);         /* front end: save and quit */
void rt_mods_frame(void);                 /* runtime: called every frame */
void rt_mods_rom_page(unsigned page, unsigned char *data);   /* patch a cartridge page as it loads */

/* Bluetooth link transport (ngage/ngage_bt.cpp) */
int  rt_ngage_bt_start(int host, int channel);
void rt_ngage_bt_stop(void);

#ifdef __cplusplus
}
#endif
#endif
