; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8F06B4 = type { [23 x i8], [9 x i8], [18 x i8] }

@gActorVisualScripts8F06B4 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8F06B4 { [23 x i8] c"\95\00\00\00\00\98\0E?\08`\00\02\02\A1`\00\02\02\00\06\03\12\80", [9 x i8] c"\8E\01\01\00\02\0A\06\FF\80", [18 x i8] c"\96\08\00\02\06\0A\06\00\10\8E\01\01\00\07\00\10\FF\80" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
