; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E6DCC = type { [8 x i8], [40 x i8], [8 x i8], [8 x i8], [23 x i8], [23 x i8] }

@gActorVisualScripts8E6DCC = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E6DCC { [8 x i8] c"\04\C4\88\88\08\83\00\00", [40 x i8] c"\04\D2\88\88\08\04\C4\88\88\08\04\E6\88\88\08\04\C4\88\88\08\04\D2\88\88\08\04\C4\88\88\08\04\E6\88\88\08\81\CCm\8E\08", [8 x i8] c"\7F\FA\88\88\08\83\00\00", [8 x i8] c"\7F\14\89\88\08\83\00\00", [23 x i8] c"\88\00\80\C8\01\02\DC\C3*\08\84\03\00\B0\00\01\B0\00\DC\C3*\08\80", [23 x i8] c"\88\00\00\C9\01\02\A4\CD*\08\84\03\00\F0\01\01\F0\01\A4\CD*\08\80" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
