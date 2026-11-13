; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.InitialRuntimeTables = type { [5 x [8 x ptr]], [5 x [2 x ptr]], [6 x ptr], %struct.RenderXZCollisionDimensions }
%struct.RenderXZCollisionDimensions = type { i16, i16 }

@gInitialRuntimeTables = dso_local local_unnamed_addr constant %struct.InitialRuntimeTables { [5 x [8 x ptr]] [[8 x ptr] [ptr inttoptr (i32 143313242 to ptr), ptr inttoptr (i32 143313485 to ptr), ptr inttoptr (i32 143313215 to ptr), ptr inttoptr (i32 143313458 to ptr), ptr inttoptr (i32 143313269 to ptr), ptr inttoptr (i32 143313512 to ptr), ptr inttoptr (i32 143313296 to ptr), ptr inttoptr (i32 143313539 to ptr)], [8 x ptr] [ptr inttoptr (i32 143346788 to ptr), ptr inttoptr (i32 143347156 to ptr), ptr inttoptr (i32 143346768 to ptr), ptr inttoptr (i32 143347136 to ptr), ptr inttoptr (i32 143346808 to ptr), ptr inttoptr (i32 143347176 to ptr), ptr inttoptr (i32 143346828 to ptr), ptr inttoptr (i32 143347196 to ptr)], [8 x ptr] [ptr inttoptr (i32 143489505 to ptr), ptr inttoptr (i32 143489665 to ptr), ptr inttoptr (i32 143489485 to ptr), ptr inttoptr (i32 143489645 to ptr), ptr inttoptr (i32 143489525 to ptr), ptr inttoptr (i32 143489685 to ptr), ptr inttoptr (i32 143489545 to ptr), ptr inttoptr (i32 143489705 to ptr)], [8 x ptr] [ptr inttoptr (i32 143489585 to ptr), ptr inttoptr (i32 143489745 to ptr), ptr inttoptr (i32 143489565 to ptr), ptr inttoptr (i32 143489725 to ptr), ptr inttoptr (i32 143489605 to ptr), ptr inttoptr (i32 143489765 to ptr), ptr inttoptr (i32 143489625 to ptr), ptr inttoptr (i32 143489785 to ptr)], [8 x ptr] [ptr inttoptr (i32 143504927 to ptr), ptr inttoptr (i32 143505007 to ptr), ptr inttoptr (i32 143504907 to ptr), ptr inttoptr (i32 143504987 to ptr), ptr inttoptr (i32 143504947 to ptr), ptr inttoptr (i32 143505027 to ptr), ptr inttoptr (i32 143504967 to ptr), ptr inttoptr (i32 143505047 to ptr)]], [5 x [2 x ptr]] [[2 x ptr] [ptr inttoptr (i32 33554520 to ptr), ptr inttoptr (i32 33554552 to ptr)], [2 x ptr] [ptr inttoptr (i32 33554520 to ptr), ptr inttoptr (i32 33554552 to ptr)], [2 x ptr] [ptr inttoptr (i32 33554520 to ptr), ptr inttoptr (i32 33554584 to ptr)], [2 x ptr] [ptr inttoptr (i32 33554520 to ptr), ptr inttoptr (i32 33554616 to ptr)], [2 x ptr] [ptr inttoptr (i32 33554520 to ptr), ptr inttoptr (i32 33554648 to ptr)]], [6 x ptr] [ptr inttoptr (i32 50351824 to ptr), ptr inttoptr (i32 50352288 to ptr), ptr inttoptr (i32 50352352 to ptr), ptr inttoptr (i32 50352496 to ptr), ptr inttoptr (i32 50352416 to ptr), ptr inttoptr (i32 50351760 to ptr)], %struct.RenderXZCollisionDimensions { i16 48, i16 48 } }, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
