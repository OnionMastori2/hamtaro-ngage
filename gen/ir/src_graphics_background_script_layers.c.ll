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

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderLayerOffsets = external dso_local local_unnamed_addr global [4 x %struct.RenderLayerOffset], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetRotation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr i8, ptr %3, i32 1
  store ptr %5, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  %6 = zext i8 %4 to i16
  store i16 %6, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #2
  store i16 %6, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 8), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #2
  ret i32 0
}

declare dso_local arm_apcscc void @CommitBackgroundScript(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField3E(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 12
  store i8 %4, ptr %5, align 2
  %6 = getelementptr i8, ptr %3, i32 1
  store ptr %6, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField3F(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 13
  store i8 %4, ptr %5, align 1
  %6 = getelementptr i8, ptr %3, i32 1
  store ptr %6, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandAddRotation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr i8, ptr %3, i32 1
  store ptr %5, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  %6 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  %13 = trunc i16 %12 to i8
  %14 = add i8 %4, %13
  %15 = zext i8 %14 to i16
  store i16 %15, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #2
  %16 = load i8, ptr %6, align 4
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %2, %11
  %19 = phi i32 [ %8, %2 ], [ %17, %11 ]
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 8), align 4
  %24 = trunc i16 %23 to i8
  %25 = add i8 %4, %24
  %26 = zext i8 %25 to i16
  store i16 %26, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 8), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #2
  br label %27

27:                                               ; preds = %22, %18
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetScaleY(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  %12 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 7), align 2
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #2
  %18 = load i8, ptr %12, align 4
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %2, %17
  %21 = phi i32 [ %14, %2 ], [ %19, %17 ]
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 7), align 2
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #2
  br label %25

25:                                               ; preds = %24, %20
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetScaleX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  %12 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 6), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 2) #2
  %18 = load i8, ptr %12, align 4
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %2, %17
  %21 = phi i32 [ %14, %2 ], [ %19, %17 ]
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i16 %10, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 6), align 4
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext 3) #2
  br label %25

25:                                               ; preds = %24, %20
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField44(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 16
  store i16 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField40(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 14
  store i16 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField46(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 17
  store i16 %10, ptr %11, align 2
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetField42(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 15
  store i16 %10, ptr %11, align 2
  %12 = getelementptr i8, ptr %3, i32 2
  store ptr %12, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
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
