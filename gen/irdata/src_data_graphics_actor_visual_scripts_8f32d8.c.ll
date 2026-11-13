; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8F32D8 = type { [8 x i8], [8 x i8], [8 x i8], [49 x i8] }

@gActorVisualScripts8F32D8 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8F32D8 { [8 x i8] c"\7Fth\89\08\83\00\00", [8 x i8] c"\7FLh\89\08\83\00\00", [8 x i8] c"\7F`h\89\08\83\00\00", [49 x i8] c"\AD\00\00\04\00 ,R\88\08\D0\0E\00\AD\00\00\FE\FF\B0\00 \00\00 ,R\88\08\D0\0E\00\AD\00\00\00\00\B0\00\00\00\00\D0\0E\00\81\17E\8E\08" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
