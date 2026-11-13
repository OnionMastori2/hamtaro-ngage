; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2,0"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gTaskGraphicsByte645 = external dso_local local_unnamed_addr global i8, align 1
@gTaskQueryKeysHalfFB0 = external dso_local local_unnamed_addr global i16, align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandEE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gTaskGraphicsByte645, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef %0) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i16, ptr @gTaskQueryKeysHalfFB0, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 7
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = mul i32 %11, 1145324612
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 325) #2
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 23
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 18
  %16 = load i16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  store i16 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 1
  store ptr %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  tail call arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef %0, i32 noundef %23) #2
  %24 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  %25 = load i8, ptr %24, align 1
  %26 = or i8 %25, 4
  store i8 %26, ptr %24, align 1
  %27 = load i8, ptr %0, align 4
  %28 = and i8 %27, 127
  store i8 %28, ptr %0, align 4
  %29 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %30 = load i8, ptr %29, align 2
  %31 = lshr i8 %30, 1
  %32 = add nsw i8 %31, -1
  %33 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  store i8 %32, ptr %33, align 4
  %34 = load i8, ptr %17, align 2
  %35 = add i8 %32, %34
  %36 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 9
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = zext i8 %30 to i32
  %43 = shl nuw nsw i32 %42, 5
  %44 = mul nuw nsw i32 %43, %41
  tail call arm_apcscc void @QueueDmaFill(i32 noundef %12, i32 noundef %38, i32 noundef %44) #2
  tail call arm_apcscc void @DisableTaskRenderSlots(ptr noundef nonnull %0) #2
  br label %51

45:                                               ; preds = %5
  %46 = load ptr, ptr @gRenderSlots, align 4
  %47 = getelementptr inbounds %struct.RenderSlot, ptr %46, i32 0, i32 23
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call arm_apcscc void @InitializeTaskRenderSlot0(ptr noundef %0) #2
  br label %51

51:                                               ; preds = %45, %50, %8
  ret i32 0
}

declare dso_local arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskTextHorizontalOffset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @QueueDmaFill(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @DisableTaskRenderSlots(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeTaskRenderSlot0(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandEF(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gTaskGraphicsByte645, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef %0) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = load i8, ptr @gTaskRenderSlotIndexFAC, align 1
  %8 = zext i8 %7 to i32
  %9 = load i32, ptr @gTaskRenderAnimationWordF7C, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr %struct.RenderSlot, ptr %6, i32 %8, i32 23
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.RenderSlot, ptr %6, i32 %8, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %11, %5
  %20 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 1
  store ptr %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %15, %19
  %24 = phi i32 [ 1, %19 ], [ 0, %15 ]
  ret i32 %24
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
