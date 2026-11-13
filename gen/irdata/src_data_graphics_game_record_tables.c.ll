; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.GameRecordTextBanks = type { [4 x ptr] }

@gGameRecordRenderIndicesCategory1 = dso_local local_unnamed_addr constant <{ [15 x i8], [15 x i8] }> <{ [15 x i8] c"\01\00\01\02\00\01\00\01\00\00\00\00\00\01\02", [15 x i8] zeroinitializer }>, align 1
@gGameRecordRenderIndicesCategory0 = dso_local local_unnamed_addr constant [6 x i8] c"\00\02\00\00\00\00", align 1
@gGameRecordRenderIndicesCategory2 = dso_local local_unnamed_addr constant [30 x i8] c"\00\01\02\00\01\02\00\00\00\00\01\02\00\00\00\00\01\02\00\01\02\00\01\02\00\01\02\00\01\02", align 1
@gGameRecordRenderIndicesCategory3 = dso_local local_unnamed_addr constant [2 x i8] c"\02\00", align 1
@gGameRecordClassWords5CBF80 = dso_local local_unnamed_addr constant [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 5, i16 10], align 2
@gGameRecordCategoryOffsets5CBF8C = dso_local local_unnamed_addr constant [4 x i8] c"\02\01\00\03", align 1
@gGameRecordSingleCountTextBanks = dso_local local_unnamed_addr constant %struct.GameRecordTextBanks { [4 x ptr] [ptr inttoptr (i32 140035764 to ptr), ptr inttoptr (i32 140035872 to ptr), ptr inttoptr (i32 140036460 to ptr), ptr inttoptr (i32 140036844 to ptr)] }, align 4
@gGameRecordOtherCountTextBanks = dso_local local_unnamed_addr constant %struct.GameRecordTextBanks { [4 x ptr] [ptr inttoptr (i32 140035800 to ptr), ptr inttoptr (i32 140036068 to ptr), ptr inttoptr (i32 140036588 to ptr), ptr inttoptr (i32 140037024 to ptr)] }, align 4
@gRecordCounterStatusSuffix = dso_local local_unnamed_addr constant [6 x i16] [i16 32767, i16 20318, i16 14011, i16 13849, i16 11698, i16 26559], align 2
@gRecordCounterStatusAvailable = dso_local local_unnamed_addr constant [3 x i16] [i16 26559, i16 13943, i16 5290], align 2
@gRecordCounterStatusUnavailable = dso_local local_unnamed_addr constant [3 x i16] [i16 17046, i16 6544, i16 0], align 2
@gGameRecordMessageSpecialInitialKeys = dso_local local_unnamed_addr constant [15 x i8] c"()*+,-./0123N\FF\FF", align 1
@gGameCounterDisplaySlots = dso_local local_unnamed_addr constant [11 x i32] [i32 18, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29], align 4
@gGameRecordSelectionSlotPairs = dso_local local_unnamed_addr constant [3 x [6 x i8]] [[6 x i8] c"\1C\00\1A\00\18\00", [6 x i8] c"\1A\00\18\00\1C\00", [6 x i8] c"\18\00\1C\00\1A\00"], align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
