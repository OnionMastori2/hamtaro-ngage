; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E4E48 = type { [23 x i8], [8 x i8], [55 x i8], [6 x i8], [55 x i8], [6 x i8], [10 x i8], [6 x i8] }

@gActorVisualScripts8E4E48 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E4E48 { [23 x i8] c"\88\00 \C8\01\02\10\1A%\08\84\03\00\80\00\01\80\00\10\1A%\08\80", [8 x i8] c"\7F\94j\88\08\83\00\00", [55 x i8] c"\08\94R\88\08\AC\00\00\01\00\AD\00\00\FC\FF\AE3\D3\FE\FF\B0\844\00\00(\94R\88\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\B0\00\00\00\00\81\9EN\8E\08", [6 x i8] c"\01\94R\88\08\80", [55 x i8] c"\08\94R\88\08\AC\99\99\FE\FF\AD\00\00\FC\FF\AE3\D3\FE\FF\B0\844\00\00(\94R\88\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\B0\00\00\00\00\81\DBN\8E\08", [6 x i8] c"\01\94R\88\08\80", [10 x i8] c"<\DC\DAX\08\81\EBN\8E\08", [6 x i8] c"\0A\DC\DAX\08\80" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
