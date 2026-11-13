; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorObjectFrame8F209C = type { i8, i8, [4 x %struct.ObjectPart] }
%struct.ObjectPart = type { i16, i16, i16 }

@gActorObjectFrame8F209C = dso_local local_unnamed_addr constant %struct.ActorObjectFrame8F209C { i8 4, i8 0, [4 x %struct.ObjectPart] [%struct.ObjectPart { i16 8, i16 16392, i16 -32448 }, %struct.ObjectPart { i16 -32760, i16 24, i16 -32446 }, %struct.ObjectPart { i16 -32520, i16 16, i16 -32445 }, %struct.ObjectPart { i16 -32536, i16 16, i16 -32445 }] }, align 2

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
