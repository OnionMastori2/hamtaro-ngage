; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSceneControlRandomPath = dso_local local_unnamed_addr constant [10 x i16] [i16 20522, i16 40, i16 16428, i16 60, i16 24619, i16 240, i16 16428, i16 60, i16 -1, i16 -1], align 2
@gSceneCloneSlotPairs = dso_local local_unnamed_addr constant [7 x [2 x i16]] [[2 x i16] [i16 15, i16 19], [2 x i16] [i16 16, i16 20], [2 x i16] [i16 17, i16 21], [2 x i16] [i16 18, i16 22], [2 x i16] [i16 25, i16 32], [2 x i16] [i16 33, i16 34], [2 x i16] [i16 35, i16 36]], align 2

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
