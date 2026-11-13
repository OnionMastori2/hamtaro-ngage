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

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRenderLayerOffsets = external dso_local global [4 x %struct.RenderLayerOffset], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetAccelerationY(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  store i32 %20, ptr %0, align 4
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef nonnull %0, ptr noundef nonnull %1) #3
  ret i32 0
}

declare dso_local arm_apcscc void @CommitBackgroundScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetAccelerationX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %21 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %3, i32 4
  store ptr %22, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetStepY(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %21 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %3, i32 4
  store ptr %22, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetStepX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %21 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %3, i32 4
  store ptr %22, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandAddOffsetY(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %13 = tail call arm_apcscc ptr @GetVideoState() #3
  %14 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 5), align 4
  %21 = add i32 %20, %11
  store i32 %21, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 5), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 0) #3
  %22 = load i8, ptr %14, align 4
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %2, %19
  %25 = phi i32 [ %16, %2 ], [ %23, %19 ]
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 5), align 4
  %30 = add i32 %29, %11
  store i32 %30, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 5), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 1) #3
  %31 = load i8, ptr %14, align 4
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %32, %28 ], [ %25, %24 ]
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 5), align 4
  %39 = add i32 %38, %11
  store i32 %39, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 5), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #3
  %40 = load i8, ptr %14, align 4
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i32 [ %41, %37 ], [ %34, %33 ]
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 5), align 4
  %48 = add i32 %47, %11
  store i32 %48, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 5), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #3
  br label %49

49:                                               ; preds = %46, %42
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandAddOffsetX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %13 = tail call arm_apcscc ptr @GetVideoState() #3
  %14 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 4), align 4
  %21 = add i32 %20, %11
  store i32 %21, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 4), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 0) #3
  %22 = load i8, ptr %14, align 4
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %2, %19
  %25 = phi i32 [ %16, %2 ], [ %23, %19 ]
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 4), align 4
  %30 = add i32 %29, %11
  store i32 %30, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 4), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 1) #3
  %31 = load i8, ptr %14, align 4
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %32, %28 ], [ %25, %24 ]
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 4), align 4
  %39 = add i32 %38, %11
  store i32 %39, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 4), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #3
  %40 = load i8, ptr %14, align 4
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i32 [ %41, %37 ], [ %34, %33 ]
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 4), align 4
  %48 = add i32 %47, %11
  store i32 %48, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 4), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #3
  br label %49

49:                                               ; preds = %46, %42
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetPositionY(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = or disjoint i32 %6, %10
  %12 = or disjoint i32 %11, 32768
  %13 = getelementptr i8, ptr %3, i32 2
  store ptr %13, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %14 = tail call arm_apcscc ptr @GetVideoState() #3
  %15 = getelementptr inbounds %struct.VideoState, ptr %14, i32 0, i32 12
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 15
  %18 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %19 = icmp eq i16 %17, 0
  %20 = load i8, ptr %18, align 4
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = icmp ult i16 %17, 2
  %26 = select i1 %25, i8 1, i8 3
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 1), align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 0, ptr noundef nonnull getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 1), i8 noundef zeroext %26) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 0) #3
  %27 = load i8, ptr %18, align 4
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %2, %24
  %30 = phi i32 [ %21, %2 ], [ %28, %24 ]
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = icmp ult i16 %17, 2
  %35 = select i1 %34, i8 1, i8 3
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 1), align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 1, ptr noundef nonnull getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 1), i8 noundef zeroext %35) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 1) #3
  %36 = load i8, ptr %18, align 4
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %37, %33 ], [ %30, %29 ]
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = select i1 %19, i8 1, i8 3
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 1), align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 2, ptr noundef nonnull getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 1), i8 noundef zeroext %43) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #3
  %44 = load i8, ptr %18, align 4
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %45, %42 ], [ %39, %38 ]
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = select i1 %19, i8 1, i8 3
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 1), align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 3, ptr noundef nonnull getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 1), i8 noundef zeroext %51) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #3
  br label %52

52:                                               ; preds = %50, %46
  ret i32 0
}

declare dso_local arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetPositionX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = or disjoint i32 %6, %10
  %12 = or disjoint i32 %11, 32768
  %13 = getelementptr i8, ptr %3, i32 2
  store ptr %13, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %14 = tail call arm_apcscc ptr @GetVideoState() #3
  %15 = getelementptr inbounds %struct.VideoState, ptr %14, i32 0, i32 12
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 15
  %18 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %19 = icmp eq i16 %17, 0
  %20 = load i8, ptr %18, align 4
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = icmp ult i16 %17, 2
  %26 = select i1 %25, i8 0, i8 2
  store i32 %12, ptr @gRenderLayerOffsets, align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 0, ptr noundef nonnull @gRenderLayerOffsets, i8 noundef zeroext %26) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 0) #3
  %27 = load i8, ptr %18, align 4
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %2, %24
  %30 = phi i32 [ %21, %2 ], [ %28, %24 ]
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = icmp ult i16 %17, 2
  %35 = select i1 %34, i8 0, i8 2
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1), align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 1, ptr noundef nonnull getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1), i8 noundef zeroext %35) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 1) #3
  %36 = load i8, ptr %18, align 4
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %37, %33 ], [ %30, %29 ]
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = select i1 %19, i8 0, i8 2
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2), align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 2, ptr noundef nonnull getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2), i8 noundef zeroext %43) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #3
  %44 = load i8, ptr %18, align 4
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %45, %42 ], [ %39, %38 ]
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = select i1 %19, i8 0, i8 2
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3), align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext 3, ptr noundef nonnull getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3), i8 noundef zeroext %51) #3
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #3
  br label %52

52:                                               ; preds = %50, %46
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @BackgroundCommandReserved8C(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @BackgroundCommandReserved8D(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @BackgroundCommandReserved8E(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @BackgroundCommandReserved8F(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret i32 1
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
