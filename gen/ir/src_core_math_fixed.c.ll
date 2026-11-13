; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc i32 @MultiplyFixed8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %0, 16
  %4 = ashr exact i32 %3, 16
  %5 = shl i32 %1, 16
  %6 = ashr exact i32 %5, 16
  %7 = mul nsw i32 %6, %4
  %8 = icmp slt i32 %7, 0
  %9 = shl i32 %7, 8
  %10 = add i32 %9, 65280
  %11 = select i1 %8, i32 %10, i32 %9
  %12 = ashr i32 %11, 16
  ret i32 %12
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @DivideFixed8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = shl i32 %0, 16
  %4 = ashr exact i32 %3, 8
  %5 = shl i32 %1, 16
  %6 = ashr exact i32 %5, 16
  %7 = tail call arm_apcscc i32 @__divsi3(i32 noundef %4, i32 noundef %6) #3
  %8 = shl i32 %7, 16
  %9 = ashr exact i32 %8, 16
  ret i32 %9
}

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @DivideFixed16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = shl i32 %0, 16
  %4 = shl i32 %1, 16
  %5 = ashr exact i32 %4, 16
  %6 = tail call arm_apcscc i32 @__divsi3(i32 noundef %3, i32 noundef %5) #3
  ret i32 %6
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @ReciprocalFixed8(i32 noundef %0) local_unnamed_addr #1 {
  %2 = shl i32 %0, 16
  %3 = ashr exact i32 %2, 16
  %4 = tail call arm_apcscc i32 @__divsi3(i32 noundef 65536, i32 noundef %3) #3
  %5 = shl i32 %4, 16
  %6 = ashr exact i32 %5, 16
  ret i32 %6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
