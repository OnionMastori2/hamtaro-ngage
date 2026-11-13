; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRenderCollisionSampleOffsets = dso_local local_unnamed_addr constant [4 x [6 x [2 x i8]]] [[6 x [2 x i8]] [[2 x i8] c"\00\08", [2 x i8] c"\08\08", [2 x i8] c"\10\08", [2 x i8] c"\18\08", [2 x i8] c" \08", [2 x i8] c"'\08"], [6 x [2 x i8]] [[2 x i8] c"\00\1F", [2 x i8] c"\08\1F", [2 x i8] c"\10\1F", [2 x i8] c"\18\1F", [2 x i8] c" \1F", [2 x i8] c"'\1F"], [6 x [2 x i8]] [[2 x i8] c"\00\08", [2 x i8] c"\00\10", [2 x i8] c"\00\17", [2 x i8] c"\00\1F", [2 x i8] c"\00\1F", [2 x i8] c"\00\1F"], [6 x [2 x i8]] [[2 x i8] c"'\08", [2 x i8] c"'\10", [2 x i8] c"'\17", [2 x i8] c"'\1F", [2 x i8] c"'\1F", [2 x i8] c"'\1F"]], align 1
@gRenderCollisionEdgeOffsets = dso_local local_unnamed_addr constant [4 x [6 x [2 x i8]]] [[6 x [2 x i8]] [[2 x i8] c"\02\07", [2 x i8] c"\08\07", [2 x i8] c"\10\07", [2 x i8] c"\18\07", [2 x i8] c" \07", [2 x i8] c"%\07"], [6 x [2 x i8]] [[2 x i8] c"\02 ", [2 x i8] c"\08 ", [2 x i8] c"\10 ", [2 x i8] c"\18 ", [2 x i8] c"  ", [2 x i8] c"% "], [6 x [2 x i8]] [[2 x i8] c"\FF\0A", [2 x i8] c"\FF\10", [2 x i8] c"\FF\18", [2 x i8] c"\FF\1D", [2 x i8] c"\FF\1D", [2 x i8] c"\FF\1D"], [6 x [2 x i8]] [[2 x i8] c" \0A", [2 x i8] c" \10", [2 x i8] c" \18", [2 x i8] c" \1D", [2 x i8] c" \1D", [2 x i8] c" \1D"]], align 1
@gRenderCollisionEdgeMasks = dso_local local_unnamed_addr constant [4 x i16] [i16 4096, i16 8192, i16 16384, i16 -32768], align 2

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
