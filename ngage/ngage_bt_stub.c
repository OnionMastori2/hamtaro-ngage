/* ngage_bt_stub.c - link transport when Bluetooth is not built in
 * (cmake -DHAMTARO_BLUETOOTH=OFF): the game sees no cable. */
#include "rt_link.h"
#include "rt_ngage.h"
int rt_ngage_bt_start(int host, int channel) { (void)host; (void)channel; return -1; }
void rt_ngage_bt_stop(void) { }
int rt_link_role(void) { return RT_LINK_NONE; }
int rt_link_connected(void) { return 0; }
void rt_link_tx(const u8 *data, int n) { (void)data; (void)n; }
int rt_link_rx(u8 *data, int max) { (void)data; (void)max; return 0; }
