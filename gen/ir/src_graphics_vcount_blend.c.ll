; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gScanlineTransitionBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @UpdateVcountAlternatingBlend() local_unnamed_addr #0 {
  %1 = load i8, ptr @gScanlineTransitionBytes, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  store volatile i16 2566, ptr inttoptr (i32 67108946 to ptr), align 2
  %4 = load volatile i16, ptr inttoptr (i32 67108868 to ptr), align 4
  %5 = and i16 %4, 63
  store volatile i16 %5, ptr inttoptr (i32 67108868 to ptr), align 4
  %6 = load volatile i16, ptr inttoptr (i32 67108868 to ptr), align 4
  %7 = or i16 %6, 26624
  br label %11

8:                                                ; preds = %0
  store volatile i16 1036, ptr inttoptr (i32 67108946 to ptr), align 2
  %9 = load volatile i16, ptr inttoptr (i32 67108868 to ptr), align 4
  %10 = and i16 %9, 63
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i16 [ %10, %8 ], [ %7, %3 ]
  %13 = phi i8 [ 0, %8 ], [ 1, %3 ]
  store volatile i16 %12, ptr inttoptr (i32 67108868 to ptr), align 4
  store i8 %13, ptr @gScanlineTransitionBytes, align 1
  store volatile i16 7490, ptr inttoptr (i32 67108944 to ptr), align 16
  ret void
}

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
