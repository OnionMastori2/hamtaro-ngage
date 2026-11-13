/* rt_link.c - GBA link cable (multi-player serial mode) over a byte stream.
 *
 * The cartridge talks SIO multi-player: SIOCNT=0x2003, the parent starts a
 * transfer with SIOCNT bit 7 (from a Timer 3 interrupt), every transfer
 * swaps one halfword per console, and a Serial interrupt fires on both
 * sides when it completes.  Packets are 10 halfwords behind a 0xFEFE sync
 * word (src/actors/communication_packets.c).
 *
 * Over Bluetooth (N-Gage) or TCP (PC) each transfer becomes a request and a
 * reply:
 *   parent  -> 'M' word        when the game starts a transfer
 *   child   -> 'S' word        its SIOMLT_SEND, sent the moment 'M' arrives;
 *                              the child's transfer completes right then
 *   parent                     completes when 'S' arrives
 * The game sees exact hardware results (SIOMULTI0 = parent word,
 * SIOMULTI1 = child word, busy bit, interrupt); only the transfer rate
 * depends on the link's round-trip time.  With no peer, transfers complete
 * immediately with 0xFFFF, which is what a GBA reads with no cable.
 *
 * The transport (rt_link_tx / rt_link_rx / rt_link_connected / role) is
 * provided by the platform: host/host_link.c (TCP), ngage/ngage_bt.cpp
 * (Bluetooth RFCOMM).
 */
#include "rt.h"
#include "rt_link.h"

static int s_pending;          /* parent: transfer in flight */
static u16 s_pending_word;
static u8 s_rx[3];
static int s_rx_n;
u32 g_rt_link_transfers;

static void complete(u16 parent, u16 child)
{
    RT_IO16(0x120) = parent;
    RT_IO16(0x122) = child;
    RT_IO16(0x124) = 0xFFFF;
    RT_IO16(0x126) = 0xFFFF;
    RT_IO16(0x128) &= (u16)~0x80u;
    g_rt_link_transfers++;
    if (RT_IO16(0x128) & 0x4000u) rt_raise_irq(0x80u);
}

static int multiplayer_mode(void)
{
    return (RT_IO16(0x134) & 0x8000u) == 0 && ((RT_IO16(0x128) >> 12) & 3u) == 2u;
}

/* SIOCNT as the game reads it */
u32 rt_link_siocnt(u32 stored)
{
    u32 v = stored & ~0x3Cu;
    int child = rt_link_role() == RT_LINK_CHILD;
    if (!multiplayer_mode()) return stored;
    if (child) v |= 0x04u | 0x10u;          /* SI high, ID = 1 */
    if (rt_link_connected()) v |= 0x08u;    /* SD: all consoles ready */
    return v;
}

/* The game set SIOCNT bit 7. */
void rt_link_start(void)
{
    u8 msg[3];
    if (!multiplayer_mode() || rt_link_role() == RT_LINK_CHILD) {
        if (rt_link_role() == RT_LINK_CHILD) {
            /* a child cannot start transfers; the bit only reflects busy */
            RT_IO16(0x128) &= (u16)~0x80u;
        } else {
            complete(RT_IO16(0x12A), 0xFFFF);
        }
        return;
    }
    if (!rt_link_connected()) {
        complete(RT_IO16(0x12A), 0xFFFF);
        return;
    }
    if (s_pending) return;
    s_pending = 1;
    s_pending_word = RT_IO16(0x12A);
    msg[0] = 'M';
    msg[1] = (u8)s_pending_word;
    msg[2] = (u8)(s_pending_word >> 8);
    rt_link_tx(msg, 3);
}

/* Called every scanline: deliver whatever arrived. */
void rt_link_poll(void)
{
    if (!rt_link_connected()) {
        if (s_pending) {
            s_pending = 0;
            complete(s_pending_word, 0xFFFF);
        }
        return;
    }
    for (;;) {
        int n = rt_link_rx(s_rx + s_rx_n, 3 - s_rx_n);
        if (n <= 0) return;
        s_rx_n += n;
        if (s_rx_n < 3) continue;
        s_rx_n = 0;
        {
            u16 w = (u16)(s_rx[1] | (s_rx[2] << 8));
            if (s_rx[0] == 'M' && rt_link_role() == RT_LINK_CHILD) {
                u16 mine = RT_IO16(0x12A);
                u8 reply[3];
                reply[0] = 'S';
                reply[1] = (u8)mine;
                reply[2] = (u8)(mine >> 8);
                rt_link_tx(reply, 3);
                complete(w, mine);
            } else if (s_rx[0] == 'S' && s_pending) {
                s_pending = 0;
                complete(s_pending_word, w);
            }
        }
    }
}
