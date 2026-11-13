; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.InitialSceneSelectionTables = type { [4 x i16], [8 x ptr], [8 x ptr], [6 x ptr], [1 x ptr] }

@gSceneChoiceVariants6 = external dso_local constant [7 x [8 x i8]], align 1
@gSceneChoiceVariants8 = external dso_local constant [7 x [8 x i8]], align 1
@gSceneIndicatorNavigationBank0 = external dso_local constant [8 x [4 x i8]], align 1
@gSceneIndicatorNavigationBank1 = external dso_local constant [8 x [4 x i8]], align 1
@gSceneIndicatorNavigationBank2 = external dso_local constant [8 x [4 x i8]], align 1
@gSceneIndicatorNavigationBank3 = external dso_local constant [8 x [4 x i8]], align 1
@gSceneIndicatorNavigationBank4 = external dso_local constant [8 x [4 x i8]], align 1
@gSceneIndicatorNavigationBank5 = external dso_local constant [8 x [4 x i8]], align 1
@gSceneIndicatorModeNavigationBank = external dso_local constant [8 x [4 x i8]], align 1
@gInitialSceneSelectionTables = dso_local local_unnamed_addr constant %struct.InitialSceneSelectionTables { [4 x i16] [i16 3, i16 -3, i16 -1, i16 1], [8 x ptr] [ptr @gSceneChoiceVariants6, ptr @gSceneChoiceVariants6, ptr getelementptr (i8, ptr @gSceneChoiceVariants6, i64 8), ptr getelementptr (i8, ptr @gSceneChoiceVariants6, i64 16), ptr getelementptr (i8, ptr @gSceneChoiceVariants6, i64 24), ptr getelementptr (i8, ptr @gSceneChoiceVariants6, i64 32), ptr getelementptr (i8, ptr @gSceneChoiceVariants6, i64 40), ptr getelementptr (i8, ptr @gSceneChoiceVariants6, i64 48)], [8 x ptr] [ptr @gSceneChoiceVariants8, ptr @gSceneChoiceVariants8, ptr getelementptr (i8, ptr @gSceneChoiceVariants8, i64 8), ptr getelementptr (i8, ptr @gSceneChoiceVariants8, i64 16), ptr getelementptr (i8, ptr @gSceneChoiceVariants8, i64 24), ptr getelementptr (i8, ptr @gSceneChoiceVariants8, i64 32), ptr getelementptr (i8, ptr @gSceneChoiceVariants8, i64 40), ptr getelementptr (i8, ptr @gSceneChoiceVariants8, i64 48)], [6 x ptr] [ptr @gSceneIndicatorNavigationBank0, ptr @gSceneIndicatorNavigationBank1, ptr @gSceneIndicatorNavigationBank2, ptr @gSceneIndicatorNavigationBank3, ptr @gSceneIndicatorNavigationBank4, ptr @gSceneIndicatorNavigationBank5], [1 x ptr] [ptr @gSceneIndicatorModeNavigationBank] }, align 4
@gInitialSceneIndicatorBackgrounds = dso_local local_unnamed_addr constant [5 x [8 x ptr]] [[8 x ptr] [ptr inttoptr (i32 143618313 to ptr), ptr inttoptr (i32 143618314 to ptr), ptr inttoptr (i32 143618337 to ptr), ptr inttoptr (i32 143618360 to ptr), ptr inttoptr (i32 143618383 to ptr), ptr inttoptr (i32 143618406 to ptr), ptr inttoptr (i32 143618429 to ptr), ptr inttoptr (i32 143618452 to ptr)], [8 x ptr] [ptr inttoptr (i32 143618313 to ptr), ptr inttoptr (i32 143618475 to ptr), ptr inttoptr (i32 143618498 to ptr), ptr inttoptr (i32 143618521 to ptr), ptr inttoptr (i32 143618544 to ptr), ptr inttoptr (i32 143618567 to ptr), ptr inttoptr (i32 143618590 to ptr), ptr inttoptr (i32 143618613 to ptr)], [8 x ptr] [ptr inttoptr (i32 143618313 to ptr), ptr inttoptr (i32 143618636 to ptr), ptr inttoptr (i32 143618659 to ptr), ptr inttoptr (i32 143618682 to ptr), ptr inttoptr (i32 143618705 to ptr), ptr inttoptr (i32 143618728 to ptr), ptr inttoptr (i32 143618751 to ptr), ptr inttoptr (i32 143618774 to ptr)], [8 x ptr] [ptr inttoptr (i32 143618313 to ptr), ptr inttoptr (i32 143618797 to ptr), ptr inttoptr (i32 143618820 to ptr), ptr inttoptr (i32 143618843 to ptr), ptr inttoptr (i32 143618866 to ptr), ptr inttoptr (i32 143618889 to ptr), ptr inttoptr (i32 143618912 to ptr), ptr inttoptr (i32 143618935 to ptr)], [8 x ptr] [ptr inttoptr (i32 143618313 to ptr), ptr inttoptr (i32 143618958 to ptr), ptr inttoptr (i32 143618981 to ptr), ptr inttoptr (i32 143619004 to ptr), ptr inttoptr (i32 143619027 to ptr), ptr inttoptr (i32 143619050 to ptr), ptr inttoptr (i32 143619073 to ptr), ptr inttoptr (i32 143619096 to ptr)]], align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
