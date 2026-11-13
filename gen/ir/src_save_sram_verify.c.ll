; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSaveDataVerifyCallback = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @WriteAndVerifySram(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call arm_apcscc void @WriteSram(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  %4 = load ptr, ptr @gSaveDataVerifyCallback, align 4
  %5 = tail call arm_apcscc i32 %4(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  tail call arm_apcscc void @WriteSram(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  %8 = load ptr, ptr @gSaveDataVerifyCallback, align 4
  %9 = tail call arm_apcscc i32 %8(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  tail call arm_apcscc void @WriteSram(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  %12 = load ptr, ptr @gSaveDataVerifyCallback, align 4
  %13 = tail call arm_apcscc i32 %12(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  br label %14

14:                                               ; preds = %11, %7, %3
  %15 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %13, %11 ]
  ret i32 %15
}

declare dso_local arm_apcscc void @WriteSram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
