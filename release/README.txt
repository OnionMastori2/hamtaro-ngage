Hamtaro: Ham-Ham Heartbreak for the Nokia N-Gage - installer
https://github.com/OnionMastori2/hamtaro-ngage

This download contains no game files. The installer prepares the game from
your own Hamtaro: Ham-Ham Heartbreak cartridge dump: the European release,
game code AH3P, 16 MiB,
SHA-1 b016328e4880f0413b9335c95758ba9c09e53710.

You need:
  - Windows 10 or 11
  - a Nokia N-Gage or N-Gage QD with a memory card, or the EKA2L1 emulator

To install:
  1. Open a command prompt in this folder and run
       install.cmd "<your ROM .gba or .zip>" "<new output folder>"
     The output folder must be new or empty.
  2. Copy the contents of the output folder to the root of the memory card
     (drive E:). In EKA2L1 that is the data\drives\e folder.
     The output holds the game in System\Apps\hamtaro and your ROM and the
     settings in hamtaro\.
  3. Start Hamtaro from the phone's menu.

  Or install hamtaro.sis on the phone (or in EKA2L1) and copy only the
  output's hamtaro folder to the memory card.

Keys:
  Joystick or 2/4/6/8   D-pad
  5                     A
  7                     B
  Left soft key         START
  *                     SELECT
  1                     L
  3 or #                R
  Right soft key        zoom or letterbox view
  0                     volume: off / low / medium / high
  Exit (on the title menu, under Language) saves and quits.

The settings in E:\hamtaro\hamtaro.ini (one per line):
  zoom=1        1 = zoom (fills the screen), 0 = letterbox
  volume=3      0 off, 1 low, 2 medium, 3 high
  filter=1      smooth scaling (0 = sharp)
  frameskip=0   at least N game frames between pictures; the game also
                skips pictures by itself when the phone falls behind
  cache=18      cartridge pages kept in RAM (32 KiB each)
  prompts=1     N-Gage button prompts in place of the GBA ones
The game saves to E:\hamtaro\hamtaro.sav.

Changes in 0.2.0:
  - Faster on the phone: when drawing can't keep up, the game skips
    pictures instead of slowing down, and the zoom view draws only the
    columns it shows.
  - hamtaro.log lists speed figures ([perf] lines) for the first two
    minutes; please send them along with any speed report.
  - hamtaro.sis is back.

Changes in 0.1.1:
  - The game asks the phone for less memory when it starts (a 64 KB stack
    and a 128 KB starting heap, down from 500 KB and 1 MB), for phones
    where 0.1.0 showed a white screen and went back to the menu.

Known issues:
  - In EKA2L1 the sound may stay silent.
  - On the phone the picture rate is low: the N-Gage's 104 MHz processor
    has a lot of GBA drawing to do.
  - Some menus may still show a GBA button picture.

Hamtaro and Ham-Ham Heartbreak are trademarks of Nintendo / Shogakukan;
N-Gage and Nokia belong to Nokia. The game is built from the
josealmon/hamtaro-heartbreak decompilation; the source is on the project
page.
