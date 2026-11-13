; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E7D74 = type { [57 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }

@gActorVisualScripts8E7D74 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E7D74 { [57 x i8] c"\00\91\01tA$\08\00\96\01\84A$\08\00\9B\01\94A$\08\00\A1\01\A4A$\08\00\A6\01\B4A$\08\00\AB\01\C4A$\08\00\B1\01\D4A$\08\00\BB\01\F4A$\08\80", [8 x i8] c"\7F\0C\9E\88\08\83\00\00", [8 x i8] c"\7F \9E\88\08\83\00\00", [8 x i8] c"\7F4\9E\88\08\83\00\00", [8 x i8] c"\7Fl\9E\88\08\83\00\00" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
