; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderFrameCount = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateRenderSlots() local_unnamed_addr #0 {
  store i8 -1, ptr @gAffineUsage, align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 3), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 4), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 5), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 6), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 7), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 8), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 9), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 10), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 11), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 12), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 13), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 14), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 15), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 16), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 17), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 18), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 19), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 20), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 21), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 22), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 23), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 24), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 25), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 26), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 27), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 28), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 29), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 30), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 31), align 1
  tail call arm_apcscc void @MarkUsedAffineMatrices() #2
  %1 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @gRenderSlots, align 4
  br label %5

5:                                                ; preds = %3, %16
  %6 = phi ptr [ %18, %16 ], [ %4, %3 ]
  %7 = phi i8 [ %17, %16 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %6, i32 0, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  tail call arm_apcscc void @UpdateRenderPhysics(ptr noundef nonnull %6) #2
  %12 = getelementptr %struct.RenderSlot, ptr %6, i32 0, i32 23, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call arm_apcscc void @ProcessRenderAnimation(ptr noundef nonnull %6) #2
  br label %16

16:                                               ; preds = %11, %15, %5
  %17 = add nuw i8 %7, 1
  %18 = getelementptr %struct.RenderSlot, ptr %6, i32 1
  %19 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %20 = icmp ult i8 %17, %19
  br i1 %20, label %5, label %21

21:                                               ; preds = %16, %0
  tail call arm_apcscc void @DrawRenderSlots() #2
  %22 = load i16, ptr @gRenderFrameCount, align 2
  %23 = add i16 %22, 1
  store i16 %23, ptr @gRenderFrameCount, align 2
  ret void
}

declare dso_local arm_apcscc void @MarkUsedAffineMatrices() local_unnamed_addr #1

declare dso_local arm_apcscc void @UpdateRenderPhysics(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ProcessRenderAnimation(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @DrawRenderSlots() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
