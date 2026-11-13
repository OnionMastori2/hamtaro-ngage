; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: nounwind
define dso_local arm_apcscc void @StopAudioPlayer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i32, ptr %0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1752395091
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  store i32 1752395092, ptr %2, align 4
  %6 = getelementptr i32, ptr %0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, -2147483648
  store i32 %8, ptr %6, align 4
  %9 = getelementptr i8, ptr %0, i32 8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 44
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %10 to i32
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %19, %16 ], [ %15, %12 ]
  %18 = phi ptr [ %20, %16 ], [ %14, %12 ]
  tail call arm_apcscc void @StopAudioTrack(ptr noundef %0, ptr noundef %18) #2
  %19 = add nsw i32 %17, -1
  %20 = getelementptr i8, ptr %18, i32 80
  %21 = icmp ugt i32 %17, 1
  br i1 %21, label %16, label %22

22:                                               ; preds = %16, %5
  store i32 1752395091, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

declare dso_local arm_apcscc void @StopAudioTrack(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
