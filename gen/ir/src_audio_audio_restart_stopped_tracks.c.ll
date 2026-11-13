; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: nounwind
define dso_local arm_apcscc void @RestartStoppedAudioTracks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 8
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = getelementptr i8, ptr %0, i32 44
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %19, %5
  %10 = phi ptr [ %8, %5 ], [ %21, %19 ]
  %11 = phi i32 [ %6, %5 ], [ %20, %19 ]
  %12 = load i8, ptr %10, align 1
  %13 = icmp ugt i8 %12, -65
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  tail call arm_apcscc void @ClearAudioTrackIndirect(ptr noundef nonnull %10) #2
  store i8 -128, ptr %10, align 1
  %15 = getelementptr i8, ptr %10, i32 15
  store i8 2, ptr %15, align 1
  %16 = getelementptr i8, ptr %10, i32 19
  store i8 64, ptr %16, align 1
  %17 = getelementptr i8, ptr %10, i32 25
  store i8 22, ptr %17, align 1
  %18 = getelementptr i8, ptr %10, i32 36
  store i8 1, ptr %18, align 1
  br label %19

19:                                               ; preds = %14, %9
  %20 = add nsw i32 %11, -1
  %21 = getelementptr i8, ptr %10, i32 80
  %22 = icmp sgt i32 %11, 1
  br i1 %22, label %9, label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local arm_apcscc void @ClearAudioTrackIndirect(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
