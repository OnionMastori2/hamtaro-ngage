; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderLayerOffsets = external dso_local local_unnamed_addr global [4 x %struct.RenderLayerOffset], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandAddScaleY(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  store ptr %11, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %12 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 7), align 2
  %19 = add i16 %18, %10
  store i16 %19, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 7), align 2
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #3
  %20 = load i8, ptr %12, align 4
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %2, %17
  %23 = phi i32 [ %14, %2 ], [ %21, %17 ]
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 7), align 2
  %28 = add i16 %27, %10
  store i16 %28, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 7), align 2
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #3
  br label %29

29:                                               ; preds = %26, %22
  ret i32 0
}

declare dso_local arm_apcscc void @CommitBackgroundScript(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandAddScaleX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  store ptr %11, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %12 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 6), align 4
  %19 = add i16 %18, %10
  store i16 %19, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 6), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #3
  %20 = load i8, ptr %12, align 4
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %2, %17
  %23 = phi i32 [ %14, %2 ], [ %21, %17 ]
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 6), align 4
  %28 = add i16 %27, %10
  store i16 %28, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 6), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #3
  br label %29

29:                                               ; preds = %26, %22
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetAnchorX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  store ptr %11, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %12 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 9), align 2
  %18 = load i8, ptr %12, align 4
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %2, %17
  %21 = phi i32 [ %14, %2 ], [ %19, %17 ]
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 9), align 2
  br label %25

25:                                               ; preds = %24, %20
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetAnchorY(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  store ptr %11, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %12 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 10), align 4
  %18 = load i8, ptr %12, align 4
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %2, %17
  %21 = phi i32 [ %14, %2 ], [ %19, %17 ]
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 10), align 4
  br label %25

25:                                               ; preds = %24, %20
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandJumpIfByteEqual(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = inttoptr i32 %20 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %22, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = getelementptr i8, ptr %3, i32 9
  store ptr %28, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  br label %49

29:                                               ; preds = %2
  %30 = load i8, ptr %23, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %3, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or disjoint i32 %35, %31
  %37 = getelementptr i8, ptr %3, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 16
  %41 = or disjoint i32 %36, %40
  %42 = getelementptr i8, ptr %3, i32 8
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = or disjoint i32 %41, %45
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 6
  store ptr %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %29, %27
  %50 = phi i32 [ 1, %29 ], [ 0, %27 ]
  ret i32 %50
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandJumpIfByteLess(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = inttoptr i32 %20 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = icmp ugt i8 %22, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = getelementptr i8, ptr %3, i32 9
  store ptr %28, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  br label %49

29:                                               ; preds = %2
  %30 = load i8, ptr %23, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %3, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or disjoint i32 %35, %31
  %37 = getelementptr i8, ptr %3, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 16
  %41 = or disjoint i32 %36, %40
  %42 = getelementptr i8, ptr %3, i32 8
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = or disjoint i32 %41, %45
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 6
  store ptr %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %29, %27
  %50 = phi i32 [ 1, %29 ], [ 0, %27 ]
  ret i32 %50
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandJumpIfByteGreater(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = inttoptr i32 %20 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = icmp ult i8 %22, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = getelementptr i8, ptr %3, i32 9
  store ptr %28, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  br label %49

29:                                               ; preds = %2
  %30 = load i8, ptr %23, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %3, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or disjoint i32 %35, %31
  %37 = getelementptr i8, ptr %3, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 16
  %41 = or disjoint i32 %36, %40
  %42 = getelementptr i8, ptr %3, i32 8
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = or disjoint i32 %41, %45
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 6
  store ptr %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %29, %27
  %50 = phi i32 [ 1, %29 ], [ 0, %27 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @BackgroundCommandSkipWord(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  store ptr %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @BackgroundCommandSkipFiveBytes(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 5
  store ptr %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @BackgroundCommandSkipByteB5(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @BackgroundCommandSkipByteB6(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @BackgroundCommandSkipByteB7(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @BackgroundCommandSkipHalfword(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 2
  store ptr %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField48(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 18
  store i16 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField4A(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 19
  store i16 %10, ptr %11, align 2
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField4C(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 20
  store i16 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField4E(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 21
  store i16 %10, ptr %11, align 2
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
