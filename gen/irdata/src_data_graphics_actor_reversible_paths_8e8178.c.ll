; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorReversiblePaths8E8178 = type { [7 x %struct.ReversiblePathCommand], [7 x %struct.ReversiblePathCommand] }
%struct.ReversiblePathCommand = type { i16, i16, i16 }

@gActorReversiblePaths8E8178 = dso_local local_unnamed_addr constant %struct.ActorReversiblePaths8E8178 { [7 x %struct.ReversiblePathCommand] [%struct.ReversiblePathCommand { i16 -31739, i16 216, i16 56 }, %struct.ReversiblePathCommand { i16 17709, i16 120, i16 0 }, %struct.ReversiblePathCommand { i16 -31739, i16 216, i16 56 }, %struct.ReversiblePathCommand { i16 -31995, i16 128, i16 56 }, %struct.ReversiblePathCommand { i16 17709, i16 120, i16 0 }, %struct.ReversiblePathCommand { i16 -31995, i16 128, i16 56 }, %struct.ReversiblePathCommand { i16 -1, i16 -1, i16 -1 }], [7 x %struct.ReversiblePathCommand] [%struct.ReversiblePathCommand { i16 -32764, i16 216, i16 56 }, %struct.ReversiblePathCommand { i16 16419, i16 120, i16 0 }, %struct.ReversiblePathCommand { i16 -32764, i16 216, i16 56 }, %struct.ReversiblePathCommand { i16 -32764, i16 128, i16 56 }, %struct.ReversiblePathCommand { i16 16419, i16 120, i16 0 }, %struct.ReversiblePathCommand { i16 -32764, i16 128, i16 56 }, %struct.ReversiblePathCommand { i16 -1, i16 -1, i16 -1 }] }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
