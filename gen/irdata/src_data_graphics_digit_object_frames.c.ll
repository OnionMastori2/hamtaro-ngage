; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.DigitObjectFrame = type { i8, i8, %struct.anon }
%struct.anon = type { i16, i16, i16 }

@gDigitObjectFrames = dso_local local_unnamed_addr constant [10 x %struct.DigitObjectFrame] [%struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 10 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 11 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 12 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 13 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 14 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 42 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 43 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 44 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 45 } }, %struct.DigitObjectFrame { i8 1, i8 0, %struct.anon { i16 0, i16 0, i16 46 } }], align 2

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
