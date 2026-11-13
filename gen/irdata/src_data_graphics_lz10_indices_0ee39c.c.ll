; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.Lz10IndexSequence104 = type { i32, [26 x %struct.LiteralIndexPacket] }
%struct.LiteralIndexPacket = type <{ i8, [4 x i16] }>

@gLz10Indices_0EE39C = dso_local local_unnamed_addr constant %struct.Lz10IndexSequence104 { i32 53264, [26 x %struct.LiteralIndexPacket] [%struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 1, i16 2, i16 3, i16 4] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 5, i16 6, i16 7, i16 8] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 9, i16 10, i16 11, i16 12] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 13, i16 14, i16 15, i16 16] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 17, i16 18, i16 19, i16 20] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 21, i16 22, i16 23, i16 24] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 25, i16 26, i16 27, i16 28] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 29, i16 30, i16 31, i16 32] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 33, i16 34, i16 35, i16 36] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 37, i16 38, i16 39, i16 40] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 41, i16 42, i16 43, i16 44] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 45, i16 46, i16 47, i16 48] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 49, i16 50, i16 51, i16 52] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 53, i16 54, i16 55, i16 56] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 57, i16 58, i16 59, i16 60] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 61, i16 62, i16 63, i16 64] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 65, i16 66, i16 67, i16 68] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 69, i16 70, i16 71, i16 72] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 73, i16 74, i16 75, i16 76] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 77, i16 78, i16 79, i16 80] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 81, i16 82, i16 83, i16 84] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 85, i16 86, i16 87, i16 88] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 89, i16 90, i16 91, i16 92] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 93, i16 94, i16 95, i16 96] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 97, i16 98, i16 99, i16 100] }>, %struct.LiteralIndexPacket <{ i8 0, [4 x i16] [i16 101, i16 102, i16 103, i16 104] }>] }, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
