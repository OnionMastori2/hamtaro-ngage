#!/usr/bin/env python3
"""Make hamtaro.app, the menu launcher for the N-Gage build.

SDL3 programs built with ngage-toolchain are executables (game.exe).  The
phone's menu starts applications (.app DLLs), and the application framework
already runs an active scheduler, so the SDL program cannot itself be the
.app (SDL installs its own scheduler: E32USER-CBase 43).  The toolchain's
examples therefore pair game.exe with a tiny launcher .app that starts
E:\\System\\Apps\\<name>\\game.exe and exits when it ends.

The toolchain does not build that launcher (its DLL path is unimplemented)
but ships one, compiled from the CC0 sources in projects/*/src/ngage_*.cpp,
inside projects/celeste/media/celeste-v1.03.sis.  This script takes that
launcher, points it at E:\\System\\Apps\\hamtaro\\game.exe, gives it this
application's UID and recomputes the E32 header checks (UID CRC and code
checksum).

usage: make_launcher.py <celeste-v1.03.sis | Celeste.app> <out.app> [uid3]
"""
import struct
import sys
import zlib

OLD_PATH = 'E:\\System\\Apps\\celeste\\game.exe'
NEW_PATH = 'E:\\System\\Apps\\hamtaro\\game.exe'
OLD_UID3 = 0x10005731
NEW_UID3 = 0x1000C8F1


def crc16_ccitt(data):
    c = 0
    for x in data:
        c ^= x << 8
        for _ in range(8):
            c = ((c << 1) ^ 0x1021) & 0xFFFF if c & 0x8000 else (c << 1) & 0xFFFF
    return c


def uid_check(u1, u2, u3):
    p = struct.pack('<3I', u1, u2, u3)
    return (crc16_ccitt(p[1::2]) << 16) | crc16_ccitt(p[0::2])


def app_from_sis(sis):
    """Return the .app file stored in a Symbian 6.x SIS."""
    p = 102                     # first file record in this (EPOC R6) header layout
    for _ in range(64):
        if p + 48 > len(sis):
            break
        rec = struct.unpack_from('<I', sis, p)[0]
        if rec != 0:
            break
        dstlen, dstptr = struct.unpack_from('<II', sis, p + 20)
        flen, fptr = struct.unpack_from('<II', sis, p + 28)
        name = sis[dstptr:dstptr + dstlen].decode('utf-16-le', 'replace')
        if name.lower().endswith('.app'):
            data = sis[fptr:fptr + flen]
            try:
                data = zlib.decompress(data)
            except zlib.error:
                pass
            return data
        p += 48
    raise SystemExit('no .app found in the SIS')


def main():
    src, out = sys.argv[1], sys.argv[2]
    uid3 = int(sys.argv[3], 0) if len(sys.argv) > 3 else NEW_UID3
    blob = open(src, 'rb').read()
    app = bytearray(app_from_sis(blob) if src.lower().endswith('.sis') else blob)

    u1, u2, u3, check = struct.unpack_from('<4I', app, 0)
    if app[16:20] != b'EPOC' or u3 != OLD_UID3 or check != uid_check(u1, u2, u3):
        raise SystemExit('unexpected launcher image (UIDs/signature do not match Celeste 1.03)')
    old = OLD_PATH.encode('utf-16-le')
    new = NEW_PATH.encode('utf-16-le')
    assert len(old) == len(new)
    if app.count(old) != 1:
        raise SystemExit('launcher path not found exactly once')
    app[app.find(old):app.find(old) + len(old)] = new

    code_size = struct.unpack_from('<I', app, 0x30)[0]
    code_off = struct.unpack_from('<I', app, 0x64)[0]
    hits = [i for i in range(code_off, code_off + code_size - 3, 4)
            if struct.unpack_from('<I', app, i)[0] == OLD_UID3]
    if len(hits) != 1:
        raise SystemExit('application UID literal not found exactly once in code')
    struct.pack_into('<I', app, hits[0], uid3)

    struct.pack_into('<I', app, 8, uid3)
    struct.pack_into('<I', app, 12, uid_check(u1, u2, uid3))
    words = struct.unpack_from('<%dI' % (code_size // 4), app, code_off)
    struct.pack_into('<I', app, 24, sum(words) & 0xFFFFFFFF)
    open(out, 'wb').write(app)
    print('launcher: %s -> %s (UID3 0x%08X)' % (OLD_PATH, NEW_PATH, uid3))


if __name__ == '__main__':
    main()
