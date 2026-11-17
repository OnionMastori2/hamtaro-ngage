# Hamtaro: Ham-Ham Heartbreak - Nokia N-Gage build (ngage-toolchain).
#
#   powershell -ExecutionPolicy Bypass -File build-ngage.ps1
#
# Sources:
#   gen/c/      the decompilation translated to portable C (tools/ir2c.py)
#   runtime/    GBA hardware for it: memory map, cartridge streaming, DMA,
#               timers, IRQs, BIOS, scanline PPU, scaler, link cable, mods
#   ngage/      SDL3 front end, Bluetooth link transport, package files
#
# ngage/splash_data.c is the Nokia boot screen (tools/make_splash.py) and
# ngage/res/ holds the Symbian resources: hamtaro.rss, hamtaro.aifspec and
# the menu icon hamtaro.mbm (tools/make_icon.py from icon_source.png).
cmake_minimum_required(VERSION 3.16)
project(hamtaro C CXX)

if(NOT NGAGESDK)
  message(FATAL_ERROR "This CMake project builds the N-Gage app (run build-ngage.ps1). "
                      "For the PC test harness use 'make' (Linux/WSL).")
endif()

option(HAMTARO_BLUETOOTH "Bluetooth link cable (RFCOMM)" ON)
option(HAMTARO_THUMB "compile the game code as Thumb (about a third smaller, a little slower)" OFF)

file(GLOB GEN_SRC ${CMAKE_CURRENT_SOURCE_DIR}/gen/c/*.c)
set(RT_SRC
  runtime/rt_mem.c runtime/rt_hw.c runtime/rt_bios.c runtime/rt_rom.c
  runtime/rt_ppu.c runtime/rt_scale.c runtime/rt_link.c runtime/rt_coro.c
  runtime/rt_mods.c runtime/rt_prompts_data.c runtime/rt_buttons_data.c runtime/rt_view.c
  runtime/rt_audio.c)

find_package(SDL3 REQUIRED)

# The translated game is ~530 files.  Linking that many objects makes the
# ngage-toolchain's linker wrapper switch to a response file, a code path
# that is broken in the wrapper (NameError: tempfiles).  A unity build keeps
# the link line short: the generated files share no static names, so they
# compile as ~9 larger translation units.
add_library(hamtaro_game OBJECT ${GEN_SRC})
target_include_directories(hamtaro_game PRIVATE runtime gen/c)
set_target_properties(hamtaro_game PROPERTIES UNITY_BUILD ON UNITY_BUILD_BATCH_SIZE 60 C_STANDARD 99)
target_compile_options(hamtaro_game PRIVATE -fno-strict-aliasing)
if(HAMTARO_THUMB)
  target_compile_options(hamtaro_game PRIVATE -mthumb)
endif()

add_executable(hamtaro ngage/ngage_main.c ngage/splash_data.c ${RT_SRC} $<TARGET_OBJECTS:hamtaro_game>)
target_include_directories(hamtaro PRIVATE runtime gen/c ngage)
target_link_libraries(hamtaro PRIVATE SDL3::SDL3)
set_property(TARGET hamtaro PROPERTY C_STANDARD 99)
# the runtime reads GBA memory through u16/u32 views of byte buffers
target_compile_options(hamtaro PRIVATE $<$<COMPILE_LANGUAGE:C>:-fno-strict-aliasing>)
target_compile_definitions(hamtaro PRIVATE HAVE_SPLASH=1)

if(HAMTARO_BLUETOOTH)
  target_sources(hamtaro PRIVATE ngage/ngage_bt.cpp)
  # euser comes with SDL3 (after NRenderer, which needs it); listing it
  # here would move it ahead of NRenderer on the single-pass link line
  foreach(lib esock bluetooth btmanclient btextnotifiers)
    ngagesdk_add_static_imported_library(${lib} "${EPOC_LIB}/${lib}.lib")
    target_link_libraries(hamtaro PRIVATE ${lib})
  endforeach()
else()
  target_sources(hamtaro PRIVATE ngage/ngage_bt_stub.c)
endif()

# The game is an executable (installed as E:\System\Apps\hamtaro\game.exe).
# The menu entry is a separate launcher .app that starts it: an SDL program
# cannot itself be the .app, because the application framework already runs
# an active scheduler and SDL installs its own (E32USER-CBase 43).
target_link_options(hamtaro PRIVATE "SHELL:-s UID1=0x1000007a")
target_link_options(hamtaro PRIVATE "SHELL:-s UID2=0x100039ce")
target_link_options(hamtaro PRIVATE "SHELL:-s UID3=0x1000c8f2")
# Memory the phone must find when it starts the program, on top of the code
# (~2 MiB) and static data (~1 MiB).  The toolchain's defaults (500 KB stack,
# 1 MB initial heap) are more than this program needs: the game runs on its
# own 160 KiB stack (rt_coro) and the heap grows as needed.  EKA2L1 does not
# hold a program to these limits; the phone does.
target_link_options(hamtaro PRIVATE "SHELL:-s STACK_SIZE=65536")
target_link_options(hamtaro PRIVATE "SHELL:-s HEAP_START=131072")

# Launcher (application UID 0x1000c8f1): made from the toolchain's own CC0
# launcher, see tools/make_launcher.py; a prebuilt copy is the fallback.
find_package(Python3 COMPONENTS Interpreter)
set(CELESTE_SIS "${NGAGESDK}/projects/celeste/media/celeste-v1.03.sis")
if(Python3_FOUND AND EXISTS "${CELESTE_SIS}")
  add_custom_command(TARGET hamtaro POST_BUILD
    COMMAND ${Python3_EXECUTABLE} "${CMAKE_CURRENT_SOURCE_DIR}/tools/make_launcher.py"
            "${CELESTE_SIS}" "${CMAKE_CURRENT_BINARY_DIR}/hamtaro.app" 0x1000c8f1
    COMMENT "launcher hamtaro.app")
else()
  add_custom_command(TARGET hamtaro POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_SOURCE_DIR}/ngage/hamtaro_launcher.app"
            "${CMAKE_CURRENT_BINARY_DIR}/hamtaro.app"
    COMMENT "launcher hamtaro.app (prebuilt)")
endif()

# the launcher (hamtaro.app) starts game.exe: keep a copy under that name so
# a plain folder copy to E:\System\Apps\hamtaro\ works as well as the .sis
add_custom_command(TARGET hamtaro POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_BINARY_DIR}/hamtaro.exe" "${CMAKE_CURRENT_BINARY_DIR}/game.exe"
  COMMENT "game.exe")

# \System\Apps\hamtaro\: image, .rsc, .aif and an empty _caption.rsc
set(RES_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ngage/res")
set(EPOC "${NGAGESDK}/sdk/sdk/6.1/Shared/EPOC32")
set(S60_INC "${NGAGESDK}/sdk/sdk/6.1/Series60/Epoc32/Include")
if(EXISTS "${RES_DIR}/hamtaro.rss")
  add_custom_command(TARGET hamtaro POST_BUILD
    COMMAND "${NGAGESDK}/sdk/tools/genaif.exe" -u 0x1000c8f1 "${RES_DIR}/hamtaro.aifspec" "${CMAKE_CURRENT_BINARY_DIR}/hamtaro.aif"
    WORKING_DIRECTORY "${RES_DIR}"
    COMMENT "genaif hamtaro.aif")
  add_custom_command(TARGET hamtaro POST_BUILD
    COMMAND "${EPOC}/gcc/bin/cpp.exe" -DAPP_NAME=Hamtaro -I "${S60_INC}"
            "${RES_DIR}/hamtaro.rss" "${CMAKE_CURRENT_BINARY_DIR}/hamtaro.RSS_Intermediate"
    COMMAND "${EPOC}/Tools/rcomp.exe" -u "-s${CMAKE_CURRENT_BINARY_DIR}/hamtaro.RSS_Intermediate"
            "-h${CMAKE_CURRENT_BINARY_DIR}/hamtaro.rsg" "-o${CMAKE_CURRENT_BINARY_DIR}/hamtaro.rsc"
    COMMENT "rcomp hamtaro.rsc")
  add_custom_command(TARGET hamtaro POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E touch "${CMAKE_CURRENT_BINARY_DIR}/hamtaro_caption.rsc"
    COMMENT "hamtaro_caption.rsc")
  # makesis (2002) stops at comment lines: ngage/hamtaro.pkg must stay
  # comment-free.  The check fails the build if the package came out empty.
  # copied at build time (configure_file only refreshes on reconfigure)
  add_custom_command(TARGET hamtaro POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_SOURCE_DIR}/ngage/hamtaro.pkg" "${CMAKE_CURRENT_BINARY_DIR}/hamtaro.pkg"
    COMMAND "${EPOC}/Tools/makesis.exe" hamtaro.pkg hamtaro.sis
    COMMAND ${CMAKE_COMMAND} -DSIS=${CMAKE_CURRENT_BINARY_DIR}/hamtaro.sis -P "${CMAKE_CURRENT_SOURCE_DIR}/ngage/check_sis.cmake"
    WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
    COMMENT "makesis hamtaro.sis")
else()
  message(WARNING "No Symbian resources at ${RES_DIR}: building hamtaro.app only (no .sis)")
endif()
