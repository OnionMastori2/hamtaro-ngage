; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E4DD0 = type { [23 x i8], [23 x i8], [8 x i8], [20 x i8], [10 x i8], [25 x i8], [8 x i8] }

@gActorVisualScripts8E4DD0 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E4DD0 { [23 x i8] c"\88\00@\C8\01\02h\FB$\08\84\03\00\90\00\01\90\00h\FB$\08\80", [23 x i8] c"\88\00\E0\C8\01\02H\FC$\08\84\03\00\E0\01\01\E0\01H\FC$\08\80", [8 x i8] c"\7F\C2g\88\08\83\00\00", [20 x i8] c"\04\C2g\88\08\04\FAg\88\08\04 h\88\08\04Fh\88\08", [10 x i8] c"\7FFh\88\08\81\1AN\8E\08", [25 x i8] c"\04Fh\88\08\04 h\88\08\04\FAg\88\08<\C2g\88\08\81\FEM\8E\08", [8 x i8] c"\7F\9Cg\88\08\83\00\00" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
