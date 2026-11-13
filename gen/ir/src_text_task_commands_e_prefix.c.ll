; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2,0"
module asm ".align 2,0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gTaskQueryKeysHalfFB0 = external dso_local local_unnamed_addr global i16, align 2
@gTaskGraphicsByte645 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandE0(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr inbounds %struct.RenderSlot, ptr %2, i32 0, i32 23
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call arm_apcscc void @InitializeTaskRenderSlot0(ptr noundef %0) #2
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load i16, ptr @gTaskQueryKeysHalfFB0, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 325) #2
  %15 = load i32, ptr %8, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  store ptr %16, ptr %17, align 4
  store i32 0, ptr %8, align 4
  br label %26

18:                                               ; preds = %7
  %19 = load i8, ptr @gTaskGraphicsByte645, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef nonnull %0) #2
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i16, ptr @gTaskQueryKeysHalfFB0, align 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 325) #2
  store i8 1, ptr %0, align 4
  br label %26

26:                                               ; preds = %14, %25
  %27 = phi i32 [ 0, %25 ], [ 1, %14 ]
  %28 = load ptr, ptr @gRenderSlots, align 4
  %29 = getelementptr inbounds %struct.RenderSlot, ptr %28, i32 0, i32 23
  store i8 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %11, %22
  %31 = phi i32 [ 0, %22 ], [ 0, %11 ], [ %27, %26 ]
  ret i32 %31
}

declare dso_local arm_apcscc void @InitializeTaskRenderSlot0(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandE1(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr @gTaskGraphicsByte645, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef nonnull %0) #2
  %9 = load i32, ptr %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ %3, %5 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  store ptr %12, ptr %13, align 4
  store i32 0, ptr %2, align 4
  br label %15

14:                                               ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef nonnull %0) #2
  store i8 1, ptr %0, align 4
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ 1, %10 ], [ 0, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @AdvanceTaskTextRowMode3(ptr noundef %0) local_unnamed_addr #0 {
  store i8 3, ptr %0, align 4
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 1
  %4 = or i8 %3, 4
  store i8 %4, ptr %2, align 1
  %5 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = add i16 %6, 1
  store i16 %7, ptr %5, align 2
  %8 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %13) #2
  ret void
}

declare dso_local arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @AdvanceTaskTextRowMode2(ptr noundef %0) local_unnamed_addr #0 {
  store i8 2, ptr %0, align 4
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 1
  %4 = or i8 %3, 4
  store i8 %4, ptr %2, align 1
  %5 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = add i16 %6, 1
  store i16 %7, ptr %5, align 2
  %8 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %13) #2
  tail call arm_apcscc void @AdvanceTaskTextMapRows(ptr noundef nonnull %0) #2
  tail call arm_apcscc void @ScrollTaskRenderSlotsUp(ptr noundef nonnull %0) #2
  ret void
}

declare dso_local arm_apcscc void @AdvanceTaskTextMapRows(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ScrollTaskRenderSlotsUp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandE2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gTaskGraphicsByte645, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef %0) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  %11 = icmp ult i16 %7, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %5
  store i8 3, ptr %0, align 4
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  %15 = or i8 %14, 4
  store i8 %15, ptr %13, align 1
  %16 = add nuw nsw i16 %7, 1
  store i16 %16, ptr %6, align 2
  %17 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 1
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %22) #2
  %23 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %75, label %65

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @gRenderSlots, align 4
  %32 = getelementptr inbounds %struct.RenderSlot, ptr %31, i32 0, i32 23
  store i8 0, ptr %32, align 4
  store i8 2, ptr %0, align 4
  %33 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %34 = load i8, ptr %33, align 1
  %35 = or i8 %34, 4
  store i8 %35, ptr %33, align 1
  %36 = load i16, ptr %6, align 2
  %37 = add i16 %36, 1
  store i16 %37, ptr %6, align 2
  %38 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 1
  store ptr %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %43) #2
  tail call arm_apcscc void @AdvanceTaskTextMapRows(ptr noundef nonnull %0) #2
  tail call arm_apcscc void @ScrollTaskRenderSlotsUp(ptr noundef nonnull %0) #2
  %44 = load i8, ptr %27, align 4
  br label %65

45:                                               ; preds = %26
  %46 = load i16, ptr @gTaskQueryKeysHalfFB0, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 325) #2
  %49 = load ptr, ptr @gRenderSlots, align 4
  %50 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 23
  store i8 0, ptr %50, align 4
  store i8 2, ptr %0, align 4
  %51 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %52, 4
  store i8 %53, ptr %51, align 1
  %54 = load i16, ptr %6, align 2
  %55 = add i16 %54, 1
  store i16 %55, ptr %6, align 2
  %56 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 1
  store ptr %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %61) #2
  tail call arm_apcscc void @AdvanceTaskTextMapRows(ptr noundef nonnull %0) #2
  tail call arm_apcscc void @ScrollTaskRenderSlotsUp(ptr noundef nonnull %0) #2
  %62 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %63 = load i8, ptr %62, align 2
  %64 = lshr i8 %63, 1
  br label %65

65:                                               ; preds = %12, %48, %30
  %66 = phi i8 [ %24, %12 ], [ %44, %30 ], [ %64, %48 ]
  %67 = add i8 %66, -1
  %68 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  store i8 %67, ptr %68, align 4
  br label %75

69:                                               ; preds = %45
  %70 = load ptr, ptr @gRenderSlots, align 4
  %71 = getelementptr inbounds %struct.RenderSlot, ptr %70, i32 0, i32 23
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  tail call arm_apcscc void @InitializeTaskRenderSlot0(ptr noundef nonnull %0) #2
  br label %75

75:                                               ; preds = %69, %74, %12, %65
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandE3(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gTaskGraphicsByte645, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef %0) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i16, ptr @gTaskQueryKeysHalfFB0, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %5
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 325) #2
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %9, i32 0, i32 23
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = lshr i8 %12, 1
  %14 = add nsw i8 %13, -1
  %15 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 9
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  %21 = icmp ult i16 %17, %20
  %22 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %23 = add i16 %17, 1
  %24 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %25 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  br i1 %21, label %26, label %33

26:                                               ; preds = %8
  store i8 3, ptr %0, align 4
  %27 = load i8, ptr %22, align 1
  %28 = or i8 %27, 4
  store i8 %28, ptr %22, align 1
  store i16 %23, ptr %16, align 2
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr i8, ptr %29, i32 1
  store ptr %30, ptr %24, align 4
  %31 = load i8, ptr %25, align 1
  %32 = zext i8 %31 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %32) #2
  br label %46

33:                                               ; preds = %8
  store i8 2, ptr %0, align 4
  %34 = load i8, ptr %22, align 1
  %35 = or i8 %34, 4
  store i8 %35, ptr %22, align 1
  store i16 %23, ptr %16, align 2
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr i8, ptr %36, i32 1
  store ptr %37, ptr %24, align 4
  %38 = load i8, ptr %25, align 1
  %39 = zext i8 %38 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %39) #2
  tail call arm_apcscc void @AdvanceTaskTextMapRows(ptr noundef nonnull %0) #2
  tail call arm_apcscc void @ScrollTaskRenderSlotsUp(ptr noundef nonnull %0) #2
  br label %46

40:                                               ; preds = %5
  %41 = load ptr, ptr @gRenderSlots, align 4
  %42 = getelementptr inbounds %struct.RenderSlot, ptr %41, i32 0, i32 23
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call arm_apcscc void @InitializeTaskRenderSlot0(ptr noundef %0) #2
  br label %46

46:                                               ; preds = %40, %45, %26, %33
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandE4(ptr noundef %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef %0) #2
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = icmp ult i16 %3, %6
  %8 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %9 = add i16 %3, 1
  %10 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  br i1 %7, label %12, label %19

12:                                               ; preds = %1
  store i8 3, ptr %0, align 4
  %13 = load i8, ptr %8, align 1
  %14 = or i8 %13, 4
  store i8 %14, ptr %8, align 1
  store i16 %9, ptr %2, align 2
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 1
  store ptr %16, ptr %10, align 4
  %17 = load i8, ptr %11, align 1
  %18 = zext i8 %17 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %18) #2
  br label %26

19:                                               ; preds = %1
  store i8 2, ptr %0, align 4
  %20 = load i8, ptr %8, align 1
  %21 = or i8 %20, 4
  store i8 %21, ptr %8, align 1
  store i16 %9, ptr %2, align 2
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 1
  store ptr %23, ptr %10, align 4
  %24 = load i8, ptr %11, align 1
  %25 = zext i8 %24 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef nonnull %0, i32 noundef %25) #2
  tail call arm_apcscc void @AdvanceTaskTextMapRows(ptr noundef nonnull %0) #2
  tail call arm_apcscc void @ScrollTaskRenderSlotsUp(ptr noundef nonnull %0) #2
  br label %26

26:                                               ; preds = %19, %12
  %27 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = add i8 %28, -1
  store i8 %31, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %34 = load i8, ptr %33, align 1
  %35 = or i8 %34, 4
  store i8 %35, ptr %33, align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandE5(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gTaskGraphicsByte645, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef %0) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i16, ptr @gTaskQueryKeysHalfFB0, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 325) #2
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %9, i32 0, i32 23
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = lshr i8 %12, 1
  %14 = add nsw i8 %13, -1
  %15 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 1
  store ptr %18, ptr %16, align 4
  br label %25

19:                                               ; preds = %5
  %20 = load ptr, ptr @gRenderSlots, align 4
  %21 = getelementptr inbounds %struct.RenderSlot, ptr %20, i32 0, i32 23
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call arm_apcscc void @InitializeTaskRenderSlot0(ptr noundef %0) #2
  br label %25

25:                                               ; preds = %19, %24, %8
  %26 = phi i32 [ 1, %8 ], [ 0, %24 ], [ 0, %19 ]
  ret i32 %26
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
