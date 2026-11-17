# Hamtaro: Ham-Ham Heartbreak — Nokia N-Gage port

A native port of the [*Ham-Ham Heartbreak* decompilation](https://github.com/josealmon/hamtaro-heartbreak)
(European AH3P rev. 0) to the Nokia N-Gage. The game's own code runs: every
one of its 4,174 decompiled functions is compiled for the phone. Nothing is
emulated instruction by instruction, and no game data ships with the port.
It reads **your own cartridge dump** from the memory card.

## How it works

The decompiled C is full of fixed GBA addresses: about 2,800 in the code and
over 100,000 inside script bytecode. Symbian can't map memory at
`0x08000000`, so the C can't simply be recompiled. Instead:

1. **`tools/ir2c.py`** compiles each decomp unit to LLVM IR with clang, using
   agbcc's old APCS struct layouts, then translates it back to plain C. In the
   generated C, every pointer stays a GBA address and every load/store goes
   through `LD*/ST*` (`runtime/rt_mem.h`). Globals become their real
   RAM/ROM addresses (`config/symbols.json` plus the data units placed
   against the cartridge). Indirect calls go through a table of real
   cartridge function addresses, 3,947 of them recovered from the ROM's own
   handler tables. The output is C99 that GCC 4.6 (ngage-toolchain), MSVC
   and GCC/Clang all compile. It's already generated in `gen/c/`, so you
   don't need the decomp or clang to build.
2. **`runtime/`** is the GBA hardware the translated code talks to:
   * memory map in 32 KiB pages; the 16 MiB cartridge is **streamed from the
     MMC** with a small page cache (evicting is always safe, because the game
     never holds native pointers),
   * I/O registers, DMA 0–3, timers, interrupts (the cartridge's own IRQ
     dispatcher), VBlank/HBlank/VCount timing, save RAM to a file,
   * BIOS calls (CpuSet, CpuFastSet, LZ77, Div, Sqrt, ArcTan2, ObjAffineSet),
   * a scanline PPU: modes 0–4, text/affine BGs, 128 sprites (regular and
     affine), windows, mosaic, alpha and brightness blending,
   * code the game copies into RAM (SRAM routines, the IRQ handler),
     recognised by its bytes.
3. **`ngage/`** is the SDL3 front end. The game runs as a coroutine: one GBA
   frame per `SDL_AppIterate`, so Symbian keeps control between frames.

## Status

Verified on the PC harness against **mGBA 0.10.5 running the same ROM with the
same inputs**: boot, Nintendo logo, copyright, language select, intro, title
(including the logo shine), New game, player/partner naming. All matched
mGBA at every sampled frame, sprites included (the earlier port's PPU
scrambled them). Deeper gameplay hasn't been driven yet; scripted button
input couldn't get past naming without a save file.

| | |
|---|---|
| Game logic (translated decomp) | runs; matches mGBA as far as tested |
| Graphics | done, bit-exact regression suite (`out/` comparisons) |
| Save (SRAM → `hamtaro.sav`) | done |
| Extended screen (no letterbox) | done |
| Smooth scaling | done |
| N-Gage key prompts (Ⓐ→⑤, Ⓑ→⑦) | done |
| Title menu **Exit** | done |
| Link cable over Bluetooth | protocol done and tested over TCP; Bluetooth transport written, **not yet run on hardware** |
| Audio (music and sound effects) | done: the M4A sequencer and mixer (hand-written ARM in the cartridge) are ported to C in `runtime/rt_audio.c`; the engine's state and mixed samples match mGBA byte for byte. The four PSG channels are synthesised from the sound registers. Played at 8000 Hz mono on the N-Gage; key **0** sets the volume (off / low / medium / high) |
| N-Gage build | written against the ngage-toolchain the earlier port built with; **not yet compiled here** (that toolchain is Windows-only) |
| Speed on the phone | **unmeasured**: game logic is negligible; the PPU costs about 0.25 ms per frame on a PC, roughly 20–40 ms per drawn frame on the N-Gage. Default is to draw every other frame. |

## Install on the N-Gage

1. Build `hamtaro.sis` (below) and install it.  It installs to the memory
   card (`E:\System\Apps\hamtaro\`): `game.exe` is the game,
   `hamtaro.app` is the menu entry that starts it.  (SDL programs can't be
   the `.app` themselves; the toolchain's examples use the same launcher,
   made here by `tools/make_launcher.py` from the CC0 one the toolchain ships.)
   If you installed an earlier build, uninstall it first.
2. Copy your cartridge dump to **`E:\hamtaro\hamtaro.gba`**: the European
   AH3P rev. 0 image, SHA-1 `b016328e4880f0413b9335c95758ba9c09e53710`.
3. Optional: `E:\hamtaro\hamtaro.ini` (see `ngage/hamtaro.ini.example`):

| key | default | |
|---|---|---|
| `zoom` | 1 | 1 = zoom (fills the 176×208 screen), 0 = letterbox; the right soft key switches |
| `volume` | 3 | 0 off, 1 low, 2 medium, 3 high; key 0 steps through them |
| `filter` | 1 | 1 = smooth scaling (keeps thin outlines), 0 = sharp |
| `frameskip` | 0 | at least N game frames between pictures; the game also skips pictures by itself when the phone falls behind |
| `cache` | 18 | cartridge pages (32 KiB each) kept in RAM; raise if memory allows |
| `prompts` | 1 | show N-Gage keys in the game's button prompts |
| `link` | — | `host` or `join`: Bluetooth link cable |
| `link_channel` | 9 | RFCOMM channel (must be the same on both phones) |

### Keys

| N-Gage | GBA |
|---|---|
| d-pad, or 2 / 8 / 4 / 6 | d-pad |
| 5 (or d-pad centre) | A |
| 7 | B |
| left soft key | START |
| * | SELECT |
| 1 | L |
| 3 or # | R |
| right soft key | zoom / letterbox view |
| 0 | volume: off / low / medium / high |

On the title menu, **Exit** sits under Language: Down to reach it, 5 to save
and return to the N-Gage menu.

## Link cable (Ham-Jam dance exchange)

The game uses GBA multi-player serial mode. Each transfer becomes a
request and reply over the link (`runtime/rt_link.c`), so the game sees
exact hardware results; only the transfer rate depends on Bluetooth latency.
Set `link=host` on one phone and `link=join` on the other. The joiner gets
the system device picker, and choosing the host connects. Then use the
game's own link menu on both. Expect exchanges to be slower than a real
cable.

On a PC, two copies of the harness can link over TCP:

```
./build/hamtaro_host hamtaro.gba --link-host 47123 ...
./build/hamtaro_host hamtaro.gba --link-join 127.0.0.1:47123 ...
```

`tests/link_test.c` exercises the protocol (32 transfers each way, IRQs,
SIOCNT bits).

## Build

### N-Gage (Windows x64)

```
powershell -ExecutionPolicy Bypass -File build-ngage.ps1 [-Toolchain C:\path\to\ngage-toolchain] [-NoBluetooth]
```

The Nokia boot screen (`ngage/splash_data.c`, from `ngage/res/splash_source.jpg`
via `tools/make_splash.py`) and the Symbian resources with the menu icon
(`ngage/res/`, icon from `icon_source.png` via `tools/make_icon.py`) are part
of this folder. Output lands in `build/ngage/hamtaro.app` and
`hamtaro.sis`. If the Bluetooth unit fails to compile, `-NoBluetooth` builds
everything else.

### PC test harness (Linux / WSL)

```
make
./build/hamtaro_host hamtaro.gba --frames 3000 --every 300 --out shots --keys 600:A:6,1000:A:6
```

Options: `--extended`, `--frameskip N`, `--cache N`, `--save PATH`, `--wav FILE` (record the sound),
`--dump f1,f2`, `--keys frame:keys[:len],...` (keys `A B s S R L U D r l`),
`--coro` (drive it exactly like the N-Gage front end), `--trace-bios`. Dumps
are BMPs of the GBA frame and the 176×208 panel, plus a raw memory dump.

`tools/ref/ref_main.c` is the mGBA reference harness used for verification:
build mGBA 0.10.5's core as a static library and link against it. Its dumps
have the same layout, so the two can be diffed.

## Regenerating `gen/c/`

Needs a checkout of the decomp, your ROM, Python 3 and clang:

```
tools/build_ir.sh  <decomp> gen/code_units.txt gen/ir       # decomp -> LLVM IR
tools/build_ir.sh  <decomp> gen/data_units.txt gen/irdata
python3 tools/find_functions.py <decomp>/config/segments.json rom.gba gen/functions.json
python3 tools/resolve_data.py   <decomp> gen/irdata rom.gba gen/data_symbols.json
python3 tools/merge_addresses.py <decomp> gen
python3 tools/ir2c.py gen gen/c
python3 tools/view_patch.py gen/c                           # camera: N-Gage view size
python3 tools/find_prompts.py <decomp> rom.gba runtime/rt_prompts_data.c
```

(`gen/code_units.txt` / `data_units.txt` list the C partitions from
`config/segments.json`, in order.)

## Release

`release/` holds the download for the GitHub releases page: the installer
(`install.cmd`, `install.ps1`) that checks the user's ROM and lays out the
memory card, its `README.txt` and the default `hamtaro.ini`. After an
N-Gage build, make the zip with

    powershell -ExecutionPolicy Bypass -File release\make-release.ps1 -Version 0.2.0 -Build build\ngage

## Legal

No cartridge data is included. `gen/c/` is the public decompilation in
another form, and the runtime reads the game from your own dump. *Hamtaro*
and *Ham-Ham Heartbreak* are trademarks of Nintendo / Shogakukan; N-Gage and
Nokia belong to Nokia. The boot screen (`ngage/res/splash_source.jpg`) and the
menu icon (`ngage/res/icon_source.png`) are their artwork.
