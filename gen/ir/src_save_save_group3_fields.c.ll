; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gSaveGroup3Block3C50 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3ListLookupValues = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3Block1EE40 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3PairPositions = external dso_local constant [0 x i16], align 2
@gSaveGroup3PairAlternatePositions = external dso_local constant [0 x i16], align 2
@gSaveGroup3Block3730 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3Byte35CC = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup3Byte3D00 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup3DefaultValues = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3DefaultIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3DefaultPairAnimation = external dso_local constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetSaveGroup3FieldBit(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  %5 = zext nneg i8 %1 to i32
  %6 = zext i8 %0 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = getelementptr [0 x i8], ptr @gSaveGroup3Block3C50, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = lshr i32 128, %5
  %11 = trunc i32 %10 to i8
  %12 = or i8 %9, %11
  %13 = ashr i32 -129, %5
  %14 = trunc i32 %13 to i8
  %15 = and i8 %9, %14
  %16 = select i1 %4, i8 %15, i8 %12
  store i8 %16, ptr %8, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RemoveSaveGroup3ListEntryByLookupValue(i8 noundef zeroext %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %4 = add nsw i32 %3, -1
  %5 = getelementptr [0 x i8], ptr @gSaveGroup3ListLookupValues, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, %0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = add nuw nsw i32 %3, 1
  %10 = icmp eq i32 %9, 81
  br i1 %10, label %13, label %2

11:                                               ; preds = %2
  %12 = trunc i32 %3 to i8
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8 [ %12, %11 ], [ 81, %8 ]
  br label %15

15:                                               ; preds = %13, %22
  %16 = phi i32 [ 0, %13 ], [ %23, %22 ]
  %17 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, %14
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = trunc i32 %16 to i8
  tail call arm_apcscc void @RemoveSaveGroup3ListEntry(i8 noundef zeroext %21) #7
  br label %25

22:                                               ; preds = %15
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, 30
  br i1 %24, label %25, label %15

25:                                               ; preds = %22, %20
  ret void
}

declare dso_local arm_apcscc void @RemoveSaveGroup3ListEntry(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @CopySaveGroup3TileMap(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i32 [ 0, %3 ], [ %53, %4 ]
  %6 = phi ptr [ %0, %3 ], [ %52, %4 ]
  %7 = phi ptr [ %1, %3 ], [ %51, %4 ]
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 4095
  %10 = or i16 %9, %2
  store i16 %10, ptr %6, align 2
  %11 = getelementptr i16, ptr %6, i32 1
  %12 = getelementptr i16, ptr %7, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 4095
  %15 = or i16 %14, %2
  store i16 %15, ptr %11, align 2
  %16 = getelementptr i16, ptr %6, i32 2
  %17 = getelementptr i16, ptr %7, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 4095
  %20 = or i16 %19, %2
  store i16 %20, ptr %16, align 2
  %21 = getelementptr i16, ptr %6, i32 3
  %22 = getelementptr i16, ptr %7, i32 3
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 4095
  %25 = or i16 %24, %2
  store i16 %25, ptr %21, align 2
  %26 = getelementptr i16, ptr %6, i32 4
  %27 = getelementptr i16, ptr %7, i32 4
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, 4095
  %30 = or i16 %29, %2
  store i16 %30, ptr %26, align 2
  %31 = getelementptr i16, ptr %6, i32 5
  %32 = getelementptr i16, ptr %7, i32 5
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %33, 4095
  %35 = or i16 %34, %2
  store i16 %35, ptr %31, align 2
  %36 = getelementptr i16, ptr %6, i32 6
  %37 = getelementptr i16, ptr %7, i32 6
  %38 = load i16, ptr %37, align 2
  %39 = and i16 %38, 4095
  %40 = or i16 %39, %2
  store i16 %40, ptr %36, align 2
  %41 = getelementptr i16, ptr %6, i32 7
  %42 = getelementptr i16, ptr %7, i32 7
  %43 = load i16, ptr %42, align 2
  %44 = and i16 %43, 4095
  %45 = or i16 %44, %2
  store i16 %45, ptr %41, align 2
  %46 = getelementptr i16, ptr %6, i32 8
  %47 = getelementptr i16, ptr %7, i32 8
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, 4095
  %50 = or i16 %49, %2
  store i16 %50, ptr %46, align 2
  %51 = getelementptr i16, ptr %7, i32 9
  %52 = getelementptr i16, ptr %6, i32 32
  %53 = add nuw nsw i32 %5, 1
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %55, label %4

55:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @InsertSaveGroup3PairByFirstByte(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = icmp ugt ptr %0, %1
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1
  %6 = getelementptr i8, ptr %0, i32 -2
  %7 = load i8, ptr %6, align 1
  %8 = icmp ult i8 %5, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4, %19
  %10 = phi i8 [ %22, %19 ], [ %7, %4 ]
  %11 = phi i8 [ %21, %19 ], [ %5, %4 ]
  %12 = phi ptr [ %20, %19 ], [ %6, %4 ]
  %13 = phi ptr [ %12, %19 ], [ %0, %4 ]
  store i8 %10, ptr %13, align 1
  store i8 %11, ptr %12, align 1
  %14 = getelementptr i8, ptr %13, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %13, i32 -1
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %14, align 1
  store i8 %15, ptr %16, align 1
  %18 = icmp ugt ptr %12, %1
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = getelementptr i8, ptr %12, i32 -2
  %21 = load i8, ptr %12, align 1
  %22 = load i8, ptr %20, align 1
  %23 = icmp ult i8 %21, %22
  br i1 %23, label %9, label %24

24:                                               ; preds = %9, %19, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @GetSaveGroup3PairPosition(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %5
  %8 = icmp ult i8 %0, 30
  br i1 %8, label %9, label %25

9:                                                ; preds = %7
  %10 = mul nuw i8 %0, 6
  %11 = zext i8 %10 to i32
  %12 = add i32 %11, ptrtoint (ptr @gSaveGroup3PairPositions to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  %16 = shl nsw i32 %15, 16
  store i32 %16, ptr %1, align 4
  %17 = getelementptr i16, ptr %13, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = sext i16 %18 to i32
  %20 = shl nsw i32 %19, 16
  store i32 %20, ptr %2, align 4
  %21 = getelementptr i16, ptr %13, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = sext i16 %22 to i32
  %24 = shl nsw i32 %23, 16
  br label %32

25:                                               ; preds = %7
  %26 = icmp ult i8 %0, 51
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store i32 -1, ptr %1, align 4
  store i32 589824, ptr %2, align 4
  br label %32

28:                                               ; preds = %25
  %29 = icmp ult i8 %0, 68
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  store i32 -65536, ptr %1, align 4
  store i32 1638400, ptr %2, align 4
  br label %32

31:                                               ; preds = %28
  store i32 -589824, ptr %1, align 4
  store i32 2686976, ptr %2, align 4
  br label %32

32:                                               ; preds = %27, %31, %30, %9
  %33 = phi i32 [ 0, %27 ], [ 0, %31 ], [ 0, %30 ], [ %24, %9 ]
  store i32 %33, ptr %3, align 4
  switch i8 %0, label %60 [
    i8 67, label %34
    i8 61, label %34
    i8 60, label %34
    i8 57, label %34
    i8 65, label %37
    i8 63, label %37
    i8 62, label %37
    i8 58, label %37
    i8 56, label %37
    i8 55, label %37
  ]

34:                                               ; preds = %32, %32, %32, %32
  %35 = load i32, ptr %2, align 4
  %36 = add i32 %35, -524288
  store i32 %36, ptr %2, align 4
  br label %60

37:                                               ; preds = %32, %32, %32, %32, %32, %32
  %38 = load i32, ptr %2, align 4
  %39 = add i32 %38, -458752
  store i32 %39, ptr %2, align 4
  br label %60

40:                                               ; preds = %5
  %41 = zext i8 %0 to i32
  %42 = shl nuw nsw i32 %41, 2
  %43 = add i32 %42, ptrtoint (ptr @gSaveGroup3PairAlternatePositions to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i16, ptr %44, align 2
  %46 = sext i16 %45 to i32
  %47 = shl nsw i32 %46, 16
  store i32 %47, ptr %1, align 4
  %48 = getelementptr i16, ptr %44, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = sext i16 %49 to i32
  %51 = shl nsw i32 %50, 16
  store i32 %51, ptr %2, align 4
  store i32 0, ptr %3, align 4
  switch i8 %0, label %60 [
    i8 27, label %52
    i8 21, label %52
    i8 18, label %52
    i8 12, label %52
  ]

52:                                               ; preds = %40, %40, %40, %40
  %53 = shl nuw nsw i32 %41, 1
  %54 = or disjoint i32 %53, 1
  %55 = getelementptr i16, ptr @gSaveGroup3PairAlternatePositions, i32 %54
  %56 = load i16, ptr %55, align 2
  %57 = sext i16 %56 to i32
  %58 = shl nsw i32 %57, 16
  %59 = or disjoint i32 %58, 1
  store i32 %59, ptr %2, align 4
  store i32 -1, ptr %3, align 4
  br label %60

60:                                               ; preds = %32, %52, %40, %34, %37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define dso_local arm_apcscc void @InitializeSaveDataGroup3Fields() local_unnamed_addr #5 {
  store i8 0, ptr @gSaveGroup3Byte35CC, align 1
  store i8 -1, ptr @gSaveGroup3Block3730, align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 1), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 2), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 3), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 4), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 5), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 6), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 7), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 8), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 9), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 10), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 11), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 12), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 13), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 14), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 15), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 16), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 17), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 18), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 19), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 20), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 21), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 22), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 23), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 24), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 25), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 26), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 27), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 28), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 29), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 30), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 31), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 32), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 33), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 34), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 35), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 36), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 37), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 38), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 39), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 40), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 41), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 42), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 43), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 44), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 45), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 46), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 47), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 48), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 49), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 50), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 51), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 52), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 53), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 54), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 55), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 56), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 57), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 58), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 59), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 60), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 61), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 62), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 63), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 64), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 65), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 66), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 67), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 68), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 69), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 70), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 71), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 72), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 73), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 74), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 75), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 76), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 77), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 78), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 79), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 80), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 81), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 82), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 83), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 84), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 85), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 86), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 87), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 88), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 89), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 90), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 91), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 92), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 93), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 94), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 95), align 1
  store i8 0, ptr @gSaveGroup3Block3730, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 16), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 32), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 48), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 64), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 80), align 1
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi ptr [ %9, %1 ], [ @gSaveGroup3Block3C50, %0 ]
  %3 = phi i32 [ %10, %1 ], [ 0, %0 ]
  %4 = getelementptr [0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [0 x i8], ptr @gSaveGroup3DefaultValues, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr %2, align 1
  %9 = getelementptr i8, ptr %2, i32 4
  %10 = add nuw nsw i32 %3, 1
  %11 = icmp eq i32 %10, 30
  br i1 %11, label %12, label %1

12:                                               ; preds = %1
  store i8 3, ptr @gSaveGroup3Byte3D00, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, -1
  br i1 %5, label %20, label %6

6:                                                ; preds = %3, %15
  %7 = phi i8 [ %18, %15 ], [ %4, %3 ]
  %8 = phi i8 [ %16, %15 ], [ 0, %3 ]
  %9 = phi ptr [ %17, %15 ], [ %0, %3 ]
  %10 = icmp eq i8 %7, %1
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %9, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, %2
  br i1 %14, label %20, label %15

15:                                               ; preds = %11, %6
  %16 = add i8 %8, 1
  %17 = getelementptr i8, ptr %9, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %20, label %6

20:                                               ; preds = %15, %11, %3
  %21 = phi i8 [ 0, %3 ], [ %8, %11 ], [ %16, %15 ]
  ret i8 %21
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = trunc i32 %2 to i8
  %7 = and i32 %2, 255
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = icmp ult i8 %6, 30
  br i1 %10, label %11, label %27

11:                                               ; preds = %9
  %12 = mul i32 %2, 6
  %13 = and i32 %12, 254
  %14 = add i32 %13, ptrtoint (ptr @gSaveGroup3PairPositions to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i16, ptr %15, align 2
  %17 = sext i16 %16 to i32
  %18 = shl nsw i32 %17, 16
  %19 = getelementptr i16, ptr %15, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = sext i16 %20 to i32
  %22 = shl nsw i32 %21, 16
  %23 = getelementptr i16, ptr %15, i32 2
  %24 = load i16, ptr %23, align 2
  %25 = sext i16 %24 to i32
  %26 = shl nsw i32 %25, 16
  br label %33

27:                                               ; preds = %9
  %28 = icmp ult i8 %6, 51
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8 %6, 68
  %31 = select i1 %30, i32 -65536, i32 -589824
  %32 = select i1 %30, i32 1638400, i32 2686976
  br label %33

33:                                               ; preds = %29, %27, %11
  %34 = phi i32 [ %18, %11 ], [ -1, %27 ], [ %31, %29 ]
  %35 = phi i32 [ %22, %11 ], [ 589824, %27 ], [ %32, %29 ]
  %36 = phi i32 [ %26, %11 ], [ 0, %27 ], [ 0, %29 ]
  switch i8 %6, label %41 [
    i8 67, label %37
    i8 61, label %37
    i8 60, label %37
    i8 57, label %37
    i8 65, label %39
    i8 63, label %39
    i8 62, label %39
    i8 58, label %39
    i8 56, label %39
    i8 55, label %39
  ]

37:                                               ; preds = %33, %33, %33, %33
  %38 = add i32 %35, -524288
  br label %41

39:                                               ; preds = %33, %33, %33, %33, %33, %33
  %40 = add i32 %35, -458752
  br label %41

41:                                               ; preds = %39, %37, %33, %5
  %42 = phi i32 [ 0, %5 ], [ %34, %33 ], [ %34, %37 ], [ %34, %39 ]
  %43 = phi i32 [ 0, %5 ], [ %35, %33 ], [ %38, %37 ], [ %40, %39 ]
  %44 = phi i32 [ undef, %5 ], [ %36, %33 ], [ %36, %37 ], [ %36, %39 ]
  %45 = trunc i32 %3 to i8
  %46 = trunc i32 %0 to i8
  %47 = ashr i32 %42, 16
  %48 = ashr i32 %43, 16
  %49 = ashr i32 %44, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %46, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef %47, i32 noundef %48, i32 noundef %49, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #7
  %50 = and i32 %0, 255
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %50, i8 noundef zeroext 1) #7
  %51 = and i32 %1, 255
  tail call arm_apcscc void @SetRenderField65(i32 noundef %50, i32 noundef %51) #7
  %52 = and i32 %4, 255
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %50, i8 noundef zeroext %6, i32 noundef %52) #7
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %6, i8 noundef zeroext %45, i8 noundef zeroext 0, i32 noundef %52) #7
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField65(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
