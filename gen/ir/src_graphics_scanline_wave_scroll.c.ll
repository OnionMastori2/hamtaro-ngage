; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @UpdateScanlineWaveScroll() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = lshr i16 %1, 1
  %3 = zext nneg i16 %2 to i32
  %4 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %3
  %5 = load i16, ptr %4, align 2
  store volatile i16 %5, ptr inttoptr (i32 67108888 to ptr), align 8
  ret void
}

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
