; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

@gSaveGroup3PairCatalog0 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3PairCatalog1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3PairCatalog2 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3DefaultIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3SelectedPairIndices = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3PairCounts = external dso_local global [0 x i8], align 1
@gSaveGroup3Block1EE40 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3Block3C50 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3Block3730 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3PairCatalogs = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @BuildSaveGroup3PairCatalogs() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %59, %0
  %2 = phi i32 [ %62, %59 ], [ 0, %0 ]
  %3 = phi ptr [ %24, %59 ], [ @gSaveGroup3PairCatalog0, %0 ]
  %4 = phi ptr [ %42, %59 ], [ @gSaveGroup3PairCatalog1, %0 ]
  %5 = phi ptr [ %60, %59 ], [ @gSaveGroup3PairCatalog2, %0 ]
  %6 = phi i8 [ %25, %59 ], [ 0, %0 ]
  %7 = phi i8 [ %43, %59 ], [ 0, %0 ]
  %8 = phi i8 [ %61, %59 ], [ 0, %0 ]
  %9 = getelementptr [0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 %2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = trunc i32 %2 to i8
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i8 [ %19, %14 ], [ 0, %12 ]
  %16 = phi ptr [ %18, %14 ], [ %3, %12 ]
  %17 = getelementptr i8, ptr %16, i32 1
  store i8 %13, ptr %16, align 1
  %18 = getelementptr i8, ptr %16, i32 2
  store i8 %15, ptr %17, align 1
  %19 = add nuw i8 %15, 1
  %20 = icmp ult i8 %19, %10
  br i1 %20, label %14, label %21

21:                                               ; preds = %14
  %22 = add i8 %6, %10
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %3, %1 ], [ %18, %21 ]
  %25 = phi i8 [ %6, %1 ], [ %22, %21 ]
  %26 = add nuw nsw i32 %2, 1
  %27 = getelementptr [0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %23
  %31 = trunc i32 %26 to i8
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i8 [ %37, %32 ], [ 0, %30 ]
  %34 = phi ptr [ %36, %32 ], [ %4, %30 ]
  %35 = getelementptr i8, ptr %34, i32 1
  store i8 %31, ptr %34, align 1
  %36 = getelementptr i8, ptr %34, i32 2
  store i8 %33, ptr %35, align 1
  %37 = add nuw i8 %33, 1
  %38 = icmp ult i8 %37, %28
  br i1 %38, label %32, label %39

39:                                               ; preds = %32
  %40 = add i8 %7, %28
  br label %41

41:                                               ; preds = %39, %23
  %42 = phi ptr [ %4, %23 ], [ %36, %39 ]
  %43 = phi i8 [ %7, %23 ], [ %40, %39 ]
  %44 = add nuw nsw i32 %2, 2
  %45 = getelementptr [0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %41
  %49 = trunc i32 %44 to i8
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i8 [ %55, %50 ], [ 0, %48 ]
  %52 = phi ptr [ %54, %50 ], [ %5, %48 ]
  %53 = getelementptr i8, ptr %52, i32 1
  store i8 %49, ptr %52, align 1
  %54 = getelementptr i8, ptr %52, i32 2
  store i8 %51, ptr %53, align 1
  %55 = add nuw i8 %51, 1
  %56 = icmp ult i8 %55, %46
  br i1 %56, label %50, label %57

57:                                               ; preds = %50
  %58 = add i8 %8, %46
  br label %59

59:                                               ; preds = %57, %41
  %60 = phi ptr [ %5, %41 ], [ %54, %57 ]
  %61 = phi i8 [ %8, %41 ], [ %58, %57 ]
  %62 = add nuw nsw i32 %2, 3
  %63 = icmp ult i32 %2, 27
  br i1 %63, label %1, label %64

64:                                               ; preds = %59
  store i8 %25, ptr @gSaveGroup3SelectedPairIndices, align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  store i8 %61, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 3), align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 4), align 1
  store i8 %61, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 5), align 1
  store i8 %25, ptr @gSaveGroup3PairCounts, align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), align 1
  store i8 %61, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 2), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @PrepareSaveGroup3FieldsFromHeldKeys() local_unnamed_addr #1 {
  %1 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 768, i8 noundef zeroext 0) #4
  store i8 0, ptr @gSaveGroup3Block1EE40, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 6), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 7), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 8), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 9), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 10), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 11), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 12), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 13), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 14), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 15), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 16), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 17), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 18), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 19), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 20), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 21), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 22), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 23), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 24), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 25), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 26), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 27), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 28), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 29), align 1
  %2 = icmp eq i16 %1, 0
  br i1 %2, label %76, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr @gSaveGroup3Block3C50, align 1
  %5 = or i8 %4, -128
  store i8 %5, ptr @gSaveGroup3Block3C50, align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 4), align 1
  %7 = or i8 %6, -128
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 4), align 1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 8), align 1
  %9 = or i8 %8, -128
  store i8 %9, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 8), align 1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 12), align 1
  %11 = or i8 %10, -128
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 12), align 1
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 16), align 1
  %13 = or i8 %12, -128
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 16), align 1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 20), align 1
  %15 = or i8 %14, -128
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 20), align 1
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 24), align 1
  %17 = or i8 %16, -128
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 24), align 1
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 28), align 1
  %19 = or i8 %18, -128
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 28), align 1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 32), align 1
  %21 = or i8 %20, -128
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 32), align 1
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 36), align 1
  %23 = or i8 %22, -128
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 36), align 1
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 40), align 1
  %25 = or i8 %24, -128
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 40), align 1
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 44), align 1
  %27 = or i8 %26, -128
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 44), align 1
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 48), align 1
  %29 = or i8 %28, -128
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 48), align 1
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 52), align 1
  %31 = or i8 %30, -128
  store i8 %31, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 52), align 1
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 56), align 1
  %33 = or i8 %32, -128
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 56), align 1
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 60), align 1
  %35 = or i8 %34, -128
  store i8 %35, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 60), align 1
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 64), align 1
  %37 = or i8 %36, -128
  store i8 %37, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 64), align 1
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 68), align 1
  %39 = or i8 %38, -128
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 68), align 1
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 72), align 1
  %41 = or i8 %40, -128
  store i8 %41, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 72), align 1
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 76), align 1
  %43 = or i8 %42, -128
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 76), align 1
  %44 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 80), align 1
  %45 = or i8 %44, -128
  store i8 %45, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 80), align 1
  %46 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 84), align 1
  %47 = or i8 %46, -128
  store i8 %47, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 84), align 1
  %48 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 88), align 1
  %49 = or i8 %48, -128
  store i8 %49, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 88), align 1
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 92), align 1
  %51 = or i8 %50, -128
  store i8 %51, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 92), align 1
  %52 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 96), align 1
  %53 = or i8 %52, -128
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 96), align 1
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 100), align 1
  %55 = or i8 %54, -128
  store i8 %55, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 100), align 1
  %56 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 104), align 1
  %57 = or i8 %56, -128
  store i8 %57, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 104), align 1
  %58 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 108), align 1
  %59 = or i8 %58, -128
  store i8 %59, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 108), align 1
  %60 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 112), align 1
  %61 = or i8 %60, -128
  store i8 %61, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 112), align 1
  %62 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 116), align 1
  %63 = or i8 %62, -128
  store i8 %63, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 116), align 1
  switch i16 %1, label %65 [
    i16 512, label %66
    i16 256, label %64
  ]

64:                                               ; preds = %3
  br label %66

65:                                               ; preds = %3
  br label %66

66:                                               ; preds = %3, %64, %65
  %67 = phi i32 [ 30, %64 ], [ 20, %65 ], [ 30, %3 ]
  %68 = phi i32 [ 31, %64 ], [ 61, %65 ], [ 1, %3 ]
  br label %69

69:                                               ; preds = %66, %69
  %70 = phi i32 [ 0, %66 ], [ %74, %69 ]
  %71 = add nuw nsw i32 %70, %68
  %72 = trunc i32 %71 to i8
  %73 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %70
  store i8 %72, ptr %73, align 1
  %74 = add nuw nsw i32 %70, 1
  %75 = icmp eq i32 %74, %67
  br i1 %75, label %76, label %69

76:                                               ; preds = %69, %0
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackIndexSaveGroup3SelectionPairs(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 4
  %5 = getelementptr i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 1), i32 %4
  %6 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %7 = load i8, ptr %5, align 1
  %8 = getelementptr i8, ptr %5, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = tail call arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %9) #4
  store i8 %10, ptr @gSaveGroup3SelectedPairIndices, align 1
  %11 = getelementptr i8, ptr %5, i32 2
  %12 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %13 = load i8, ptr %11, align 1
  %14 = getelementptr i8, ptr %5, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = tail call arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef %12, i8 noundef zeroext %13, i8 noundef zeroext %15) #4
  store i8 %16, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  %17 = getelementptr i8, ptr %5, i32 4
  %18 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %19 = load i8, ptr %17, align 1
  %20 = getelementptr i8, ptr %5, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = tail call arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef %18, i8 noundef zeroext %19, i8 noundef zeroext %21) #4
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  %23 = getelementptr i8, ptr %5, i32 6
  %24 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %25 = load i8, ptr %23, align 1
  %26 = getelementptr i8, ptr %5, i32 7
  %27 = load i8, ptr %26, align 1
  %28 = tail call arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef %24, i8 noundef zeroext %25, i8 noundef zeroext %27) #4
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 3), align 1
  %29 = getelementptr i8, ptr %5, i32 8
  %30 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %31 = load i8, ptr %29, align 1
  %32 = getelementptr i8, ptr %5, i32 9
  %33 = load i8, ptr %32, align 1
  %34 = tail call arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef %30, i8 noundef zeroext %31, i8 noundef zeroext %33) #4
  store i8 %34, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 4), align 1
  %35 = getelementptr i8, ptr %5, i32 10
  %36 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %37 = load i8, ptr %35, align 1
  %38 = getelementptr i8, ptr %5, i32 11
  %39 = load i8, ptr %38, align 1
  %40 = tail call arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef %36, i8 noundef zeroext %37, i8 noundef zeroext %39) #4
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 5), align 1
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResolveSaveGroup3PairSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = add i8 %2, -1
  %4 = zext i8 %3 to i32
  %5 = getelementptr [0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 3
  %10 = add nuw nsw i32 %9, %4
  %11 = getelementptr [0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 1
  %15 = ptrtoint ptr %6 to i32
  %16 = add i32 %14, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %18, 1
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %20 = getelementptr i8, ptr %17, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %21, 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %23 = getelementptr [0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 %4
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %1
  %27 = add i32 %4, add (i32 ptrtoint (ptr @gSaveGroup3PairCounts to i32), i32 -1)
  %28 = inttoptr i32 %27 to ptr
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i32 [ 0, %26 ], [ %37, %29 ]
  %31 = phi i32 [ %4, %26 ], [ %38, %29 ]
  %32 = phi ptr [ %28, %26 ], [ %33, %29 ]
  %33 = getelementptr i8, ptr %32, i32 -1
  %34 = load i8, ptr %32, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %30, 255
  %37 = add nuw nsw i32 %36, %35
  %38 = add nsw i32 %31, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %29

40:                                               ; preds = %29
  %41 = trunc i32 %37 to i8
  br label %42

42:                                               ; preds = %40, %1
  %43 = phi i8 [ %41, %40 ], [ 0, %1 ]
  %44 = add i8 %12, 1
  %45 = add i8 %44, %43
  store i8 %45, ptr @gRasterScriptControlBytes, align 1
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
