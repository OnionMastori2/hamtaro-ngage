; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: nounwind
define dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call arm_apcscc i32 @NextRandom() #2
  %4 = lshr i32 %3, 15
  %5 = and i32 %4, 65535
  %6 = icmp ugt i16 %1, %0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = zext i16 %0 to i32
  %9 = zext i16 %1 to i32
  %10 = sub nsw i32 %9, %8
  %11 = mul i32 %5, %10
  %12 = lshr i32 %11, 16
  %13 = add nuw nsw i32 %12, %8
  br label %14

14:                                               ; preds = %7, %2
  %15 = phi i32 [ %13, %7 ], [ %5, %2 ]
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

declare dso_local arm_apcscc i32 @NextRandom() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
