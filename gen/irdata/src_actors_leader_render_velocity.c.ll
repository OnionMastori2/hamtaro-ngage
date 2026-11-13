; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gLeaderRenderXZVelocityPairs = dso_local local_unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 0, i32 -65536], [2 x i32] [i32 0, i32 65536], [2 x i32] [i32 -65536, i32 0], [2 x i32] [i32 65536, i32 0], [2 x i32] [i32 0, i32 -131072], [2 x i32] [i32 0, i32 131072], [2 x i32] [i32 -131072, i32 0], [2 x i32] [i32 131072, i32 0]], align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
