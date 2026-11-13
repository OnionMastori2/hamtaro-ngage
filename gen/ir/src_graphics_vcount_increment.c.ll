; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @IncrementVcountClassValue() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 41), align 2
  %2 = add i16 %1, 1
  store i16 %2, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 41), align 2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableVcountInterruptCF248(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load volatile i16, ptr inttoptr (i32 67109384 to ptr), align 8
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  %3 = load volatile i16, ptr inttoptr (i32 67109376 to ptr), align 512
  %4 = and i16 %3, -5
  store volatile i16 %4, ptr inttoptr (i32 67109376 to ptr), align 512
  store volatile i16 %2, ptr inttoptr (i32 67109384 to ptr), align 8
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
