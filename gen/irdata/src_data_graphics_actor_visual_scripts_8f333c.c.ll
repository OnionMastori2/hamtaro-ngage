; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8F333C = type { [3 x i8], [9 x i8], [9 x i8], [23 x i8], [23 x i8], [5 x i8], [23 x i8], [23 x i8] }

@gActorVisualScripts8F333C = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8F333C { [3 x i8] c"\83\15\00", [9 x i8] c"\86\00\00\01\00\81\10\00\80", [9 x i8] c"\86\00\00\FF\FF\81\10\00\80", [23 x i8] c"\88\00\80\C8\01\02$\A7B\08\84\03\00\B0\00\01\B0\00$\A7B\08\80", [23 x i8] c"\88\00\E0\C8\01\02\F0\A9B\08\84\03\00\E0\01\01\E0\01\F0\A9B\08\80", [5 x i8] c"\82\7F3\8F\08", [23 x i8] c"\88\00@\C8\01\02P\B9B\08\84\03\00\90\00\01\90\00P\B9B\08\80", [23 x i8] c"\88\00\E0\C8\01\028\BAB\08\84\03\00\E0\01\01\E0\018\BAB\08\80" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
