/* ngage_bt.cpp - link cable over Bluetooth RFCOMM (Symbian 6.1 / N-Gage).
 *
 * Implements the transport of runtime/rt_link.h.  One N-Gage hosts (the
 * link-cable parent), the other joins (the child):
 *
 *   host: registers RFCOMM server channel N with no authentication, listens
 *         and accepts one connection in the background (CActive).
 *   join: opens the system "select device" dialog, then connects to channel
 *         N on the chosen phone (CActive).
 *
 * Once connected the socket is switched to non-blocking I/O and polled from
 * the emulated scanline loop, so a transfer completes as soon as the reply
 * arrives instead of once per frame.
 *
 * Written against the SDK headers in sdk/6.1/Series60/Epoc32/Include
 * (bt_sock.h, btmanclient.h, btextnotifiers.h, es_sock.h).  Not yet run on
 * hardware: see README "Link cable".
 */
#include <e32base.h>
#include <es_sock.h>
#include <bt_sock.h>
#include <btmanclient.h>
#include <btextnotifiers.h>

extern "C" {
#include "rt_link.h"
#include "rt_ngage.h"
void rt_log(const char *fmt, ...);
}

const TUid KHamtaroBtUid = { 0x1000C8F1 };

class CLinkBt : public CActive
{
public:
    CLinkBt(TBool aHost, TInt aChannel)
        : CActive(EPriorityStandard), iHost(aHost), iChannel(aChannel) {}
    ~CLinkBt()
    {
        Cancel();
        iSock.Close();
        iListen.Close();
        iSs.Close();
    }

    TInt Start()
    {
        CActiveScheduler::Add(this);
        TInt err = iSs.Connect();
        if (err != KErrNone) return err;
        if (iHost) return StartHost();
        return StartJoin();
    }

    TBool Connected() const { return iConnected; }
    TBool Host() const { return iHost; }

    void Tx(const TUint8 *aData, TInt aLen)
    {
        if (!iConnected) return;
        TPtrC8 p(aData, aLen);
        TRequestStatus st;
        TInt sent = 0;
        while (sent < aLen && iConnected) {
            TSockXfrLength len;
            TPtrC8 rest = p.Mid(sent);
            iSock.Send(rest, 0, st, len);
            User::WaitForRequest(st);
            if (st == KErrWouldBlock) continue;          /* buffer full: retry */
            if (st != KErrNone) { Lost(st.Int()); return; }
            sent += len() ? len() : rest.Length();
        }
    }

    TInt Rx(TUint8 *aData, TInt aMax)
    {
        if (!iConnected) return 0;
        TPtr8 buf(aData, 0, aMax);
        TSockXfrLength len;
        TRequestStatus st;
        iSock.RecvOneOrMore(buf, 0, st, len);
        User::WaitForRequest(st);
        if (st == KErrWouldBlock) return 0;
        if (st != KErrNone) { Lost(st.Int()); return 0; }
        return buf.Length();
    }

private:
    TInt StartHost()
    {
        /* allow incoming RFCOMM on our channel without pairing prompts */
        RBTMan man;
        if (man.Connect() == KErrNone) {
            RBTSecuritySettings sec;
            if (sec.Open(man) == KErrNone) {
                TBTServiceSecurity service(KHamtaroBtUid, KSolBtRFCOMM, iChannel);
                service.SetAuthentication(EFalse);
                service.SetAuthorisation(EFalse);
                service.SetEncryption(EFalse);
                TRequestStatus st;
                sec.RegisterService(service, st);
                User::WaitForRequest(st);
                sec.Close();
            }
            man.Close();
        }
        TInt err = iListen.Open(iSs, KBTAddrFamily, KSockStream, KRFCOMM);
        if (err != KErrNone) return err;
        TBTSockAddr addr;
        addr.SetPort(iChannel);
        err = iListen.Bind(addr);
        if (err == KErrNone) err = iListen.Listen(1);
        if (err == KErrNone) err = iSock.Open(iSs);
        if (err != KErrNone) return err;
        iListen.Accept(iSock, iStatus);
        SetActive();
        rt_log("link: hosting on RFCOMM channel %d, waiting for a partner", iChannel);
        return KErrNone;
    }

    TInt StartJoin()
    {
        RNotifier notifier;
        TInt err = notifier.Connect();
        if (err != KErrNone) return err;
        TBTDeviceSelectionParamsPckg select;
        TBTDeviceResponseParamsPckg response;
        TRequestStatus st;
        notifier.StartNotifierAndGetResponse(st, KDeviceSelectionNotifierUid, select, response);
        User::WaitForRequest(st);
        notifier.CancelNotifier(KDeviceSelectionNotifierUid);
        notifier.Close();
        if (st != KErrNone || !response().IsValidBDAddr()) return st != KErrNone ? st.Int() : KErrCancel;
        err = iSock.Open(iSs, KBTAddrFamily, KSockStream, KRFCOMM);
        if (err != KErrNone) return err;
        TBTSockAddr addr;
        addr.SetBTAddr(response().BDAddr());
        addr.SetPort(iChannel);
        iSock.Connect(addr, iStatus);
        SetActive();
        rt_log("link: connecting to the host on channel %d", iChannel);
        return KErrNone;
    }

    void RunL()
    {
        if (iStatus != KErrNone) {
            rt_log("link: connection failed (%d)", iStatus.Int());
            return;
        }
        iSock.SetOpt(KSONonBlockingIO, KSOLSocket);
        iConnected = ETrue;
        rt_log("link: connected");
    }

    void DoCancel()
    {
        if (iHost) iListen.CancelAccept();
        else iSock.CancelConnect();
    }

    void Lost(TInt aErr)
    {
        iConnected = EFalse;
        rt_log("link: partner lost (%d)", aErr);
    }

    TBool iHost;
    TInt iChannel;
    TBool iConnected;
    RSocketServ iSs;
    RSocket iListen;
    RSocket iSock;
};

static CLinkBt *s_link;

extern "C" {

int rt_ngage_bt_start(int host, int channel)
{
    if (s_link) return 0;
    s_link = new CLinkBt(host ? ETrue : EFalse, channel);
    if (!s_link) return -1;
    TInt err = s_link->Start();
    if (err != KErrNone) {
        rt_log("link: Bluetooth unavailable (%d)", err);
        delete s_link;
        s_link = 0;
        return -1;
    }
    return 0;
}

void rt_ngage_bt_stop(void)
{
    delete s_link;
    s_link = 0;
}

int rt_link_role(void)
{
    if (!s_link) return RT_LINK_NONE;
    return s_link->Host() ? RT_LINK_PARENT : RT_LINK_CHILD;
}

int rt_link_connected(void) { return s_link && s_link->Connected(); }
void rt_link_tx(const u8 *data, int n) { if (s_link) s_link->Tx(data, n); }
int rt_link_rx(u8 *data, int max) { return s_link ? s_link->Rx(data, max) : 0; }

}
