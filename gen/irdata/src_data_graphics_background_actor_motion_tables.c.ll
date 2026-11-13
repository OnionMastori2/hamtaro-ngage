; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundActorMotionTables = type { [8 x [2 x i32]], [20 x i8] }

@gBackgroundActorMotionTables = dso_local local_unnamed_addr constant %struct.BackgroundActorMotionTables { [8 x [2 x i32]] [[2 x i32] [i32 0, i32 -65536], [2 x i32] [i32 49152, i32 -49152], [2 x i32] [i32 65536, i32 0], [2 x i32] [i32 49152, i32 49152], [2 x i32] [i32 0, i32 65536], [2 x i32] [i32 -49152, i32 49152], [2 x i32] [i32 -65536, i32 0], [2 x i32] [i32 -49152, i32 -49152]], [20 x i8] c"\02\07\04\08\03\01\06\02\07\04\08\03\01\06\02\07\04\08\03\01" }, align 4
@gBackgroundActorXPositions = dso_local local_unnamed_addr constant [20 x i16] [i16 136, i16 88, i16 64, i16 160, i16 104, i16 168, i16 120, i16 48, i16 152, i16 96, i16 176, i16 56, i16 80, i16 128, i16 112, i16 72, i16 144, i16 184, i16 84, i16 148], align 2

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
