; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTileBoardAnimations = dso_local local_unnamed_addr constant [10 x ptr] [ptr null, ptr inttoptr (i32 143607857 to ptr), ptr inttoptr (i32 143607865 to ptr), ptr inttoptr (i32 143607873 to ptr), ptr inttoptr (i32 143607881 to ptr), ptr inttoptr (i32 143607889 to ptr), ptr inttoptr (i32 143607897 to ptr), ptr inttoptr (i32 143607905 to ptr), ptr inttoptr (i32 143607913 to ptr), ptr inttoptr (i32 143607921 to ptr)], align 4
@gTileBoardCoordinates = dso_local local_unnamed_addr constant [11 x [2 x i16]] [[2 x i16] [i16 64, i16 136], [2 x i16] [i16 104, i16 136], [2 x i16] [i16 144, i16 136], [2 x i16] [i16 184, i16 136], [2 x i16] [i16 104, i16 176], [2 x i16] [i16 144, i16 176], [2 x i16] [i16 184, i16 176], [2 x i16] [i16 104, i16 216], [2 x i16] [i16 144, i16 216], [2 x i16] [i16 184, i16 216], [2 x i16] [i16 64, i16 176]], align 2
@gTileBoardMotionVectors = dso_local local_unnamed_addr constant [4 x [2 x i16]] [[2 x i16] [i16 0, i16 256], [2 x i16] [i16 0, i16 -256], [2 x i16] [i16 -256, i16 0], [2 x i16] [i16 256, i16 0]], align 2

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
