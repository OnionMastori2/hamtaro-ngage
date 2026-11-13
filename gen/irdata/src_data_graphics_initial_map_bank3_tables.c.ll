; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.InitialMapBank3Tables = type { [4 x ptr], [4 x ptr], %struct.anon, %struct.anon.0, %struct.anon.1, [6 x i8], %struct.anon.2, %struct.anon.3, [6 x [5 x ptr]], [6 x ptr], i8, i8 }
%struct.anon = type { i8, i8, [4 x %struct.ObjectPart] }
%struct.ObjectPart = type { i16, i16, i16 }
%struct.anon.0 = type { i8, i8, [4 x %struct.ObjectPart] }
%struct.anon.1 = type { i8, i8, [4 x %struct.ObjectPart] }
%struct.anon.2 = type { i8, i8, [3 x %struct.ObjectPart] }
%struct.anon.3 = type { i8, i8, [3 x %struct.ObjectPart] }

@gInitialMapBank3Tables = dso_local local_unnamed_addr constant %struct.InitialMapBank3Tables { [4 x ptr] [ptr inttoptr (i32 143278852 to ptr), ptr inttoptr (i32 143279457 to ptr), ptr inttoptr (i32 143279622 to ptr), ptr inttoptr (i32 143279787 to ptr)], [4 x ptr] [ptr inttoptr (i32 143490725 to ptr), ptr inttoptr (i32 143490713 to ptr), ptr inttoptr (i32 143490737 to ptr), ptr inttoptr (i32 143490749 to ptr)], %struct.anon { i8 4, i8 0, [4 x %struct.ObjectPart] [%struct.ObjectPart { i16 -32768, i16 0, i16 28998 }, %struct.ObjectPart { i16 -32768, i16 8, i16 29007 }, %struct.ObjectPart { i16 -32768, i16 16, i16 28997 }, %struct.ObjectPart { i16 -32768, i16 24, i16 28997 }] }, %struct.anon.0 { i8 4, i8 0, [4 x %struct.ObjectPart] [%struct.ObjectPart { i16 -32768, i16 0, i16 28997 }, %struct.ObjectPart { i16 -32768, i16 8, i16 28997 }, %struct.ObjectPart { i16 -32768, i16 16, i16 28997 }, %struct.ObjectPart { i16 -32768, i16 24, i16 28997 }] }, %struct.anon.1 { i8 4, i8 0, [4 x %struct.ObjectPart] [%struct.ObjectPart { i16 -32768, i16 0, i16 28997 }, %struct.ObjectPart { i16 -32768, i16 8, i16 28997 }, %struct.ObjectPart { i16 -32768, i16 16, i16 28997 }, %struct.ObjectPart { i16 -32768, i16 24, i16 28997 }] }, [6 x i8] c"\06\08\02\06\00\02", %struct.anon.2 { i8 3, i8 0, [3 x %struct.ObjectPart] [%struct.ObjectPart { i16 -32763, i16 8, i16 -32297 }, %struct.ObjectPart { i16 -32768, i16 -32768, i16 -32442 }, %struct.ObjectPart { i16 -32768, i16 20496, i16 -32442 }] }, %struct.anon.3 { i8 3, i8 0, [3 x %struct.ObjectPart] [%struct.ObjectPart { i16 -32762, i16 8, i16 -32297 }, %struct.ObjectPart { i16 -32767, i16 -32768, i16 -32440 }, %struct.ObjectPart { i16 -32767, i16 20496, i16 -32440 }] }, [6 x [5 x ptr]] [[5 x ptr] [ptr inttoptr (i32 143564758 to ptr), ptr inttoptr (i32 143564630 to ptr), ptr inttoptr (i32 143566091 to ptr), ptr inttoptr (i32 143566140 to ptr), ptr inttoptr (i32 143566189 to ptr)], [5 x ptr] [ptr inttoptr (i32 143564735 to ptr), ptr inttoptr (i32 143564617 to ptr), ptr inttoptr (i32 143565944 to ptr), ptr inttoptr (i32 143565993 to ptr), ptr inttoptr (i32 143566042 to ptr)], [5 x ptr] [ptr inttoptr (i32 143564712 to ptr), ptr inttoptr (i32 143564604 to ptr), ptr inttoptr (i32 143565797 to ptr), ptr inttoptr (i32 143565846 to ptr), ptr inttoptr (i32 143565895 to ptr)], [5 x ptr] [ptr inttoptr (i32 143564689 to ptr), ptr inttoptr (i32 143564630 to ptr), ptr inttoptr (i32 143565650 to ptr), ptr inttoptr (i32 143565699 to ptr), ptr inttoptr (i32 143565748 to ptr)], [5 x ptr] [ptr inttoptr (i32 143564666 to ptr), ptr inttoptr (i32 143564617 to ptr), ptr inttoptr (i32 143565503 to ptr), ptr inttoptr (i32 143565552 to ptr), ptr inttoptr (i32 143565601 to ptr)], [5 x ptr] [ptr inttoptr (i32 143564643 to ptr), ptr inttoptr (i32 143564604 to ptr), ptr inttoptr (i32 143565356 to ptr), ptr inttoptr (i32 143565405 to ptr), ptr inttoptr (i32 143565454 to ptr)]], [6 x ptr] [ptr inttoptr (i32 143259168 to ptr), ptr inttoptr (i32 143259168 to ptr), ptr inttoptr (i32 143567581 to ptr), ptr inttoptr (i32 143567589 to ptr), ptr inttoptr (i32 143567597 to ptr), ptr inttoptr (i32 143567605 to ptr)], i8 22, i8 32 }, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
