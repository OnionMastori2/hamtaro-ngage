; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EE2BC = type { [51 x i8], [56 x i8], [13 x i8], [23 x i8], [23 x i8], [23 x i8] }

@gActorVisualScripts8EE2BC = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EE2BC { [51 x i8] c"\A3\C0\00\A4\00\00\A5H\00\AC\00\00\FF\FF\AD\00\00\00\00\AEUU\00\00pP%\89\08\A3\F0\00\A4\00\00\A5P\00PP%\89\08PP%\89\08\83\1D\00", [56 x i8] c"\A3P\00\A4\00\00\A5\00\00\AC\00\00\FF\FF\AD\00\00\00\00\AEUU\00\00H^%\89\08H^%\89\08\A3\B0\00\A4\00\00\A5\E0\FFx^%\89\08x^%\89\08\83\22\00", [13 x i8] c"\06\80%\89\08\06\E8%\89\08\83\00\00", [23 x i8] c"\88\00 \C8\01\02\94\A2<\08\84\04\00\80\00\01\80\00\94\A2<\08\80", [23 x i8] c"\88\00\00\C9\01\02\E0\A2<\08\84\04\00\F0\01\01\F0\01\E0\A2<\08\80", [23 x i8] c"\88\00\A0\C7\01\02\F4\A2<\08\84\04\00@\01\01@\01\F4\A2<\08\80" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
