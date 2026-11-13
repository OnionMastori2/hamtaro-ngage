; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

@gHblankIrqEnabled = external dso_local global i8, align 1
@gHblankHandlers = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gVcountIrqEnabled = external dso_local global i8, align 1
@gVcountHandlers = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @HandleHblankIrq() local_unnamed_addr #0 {
  %1 = load i8, ptr @gHblankIrqEnabled, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108868 to ptr), align 4
  %5 = and i16 %4, -17
  store volatile i16 %5, ptr inttoptr (i32 67108868 to ptr), align 4
  br label %11

6:                                                ; preds = %0
  %7 = load volatile i8, ptr @gHblankIrqEnabled, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [0 x ptr], ptr @gHblankHandlers, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void %10() #2
  br label %11

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @HblankNoop() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @HandleVcountIrq() local_unnamed_addr #0 {
  %1 = load i8, ptr @gVcountIrqEnabled, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108868 to ptr), align 4
  %5 = and i16 %4, -33
  store volatile i16 %5, ptr inttoptr (i32 67108868 to ptr), align 4
  br label %11

6:                                                ; preds = %0
  %7 = load volatile i8, ptr @gVcountIrqEnabled, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [0 x ptr], ptr @gVcountHandlers, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void %10() #2
  br label %11

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @VcountNoop() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @UnreferencedIrqNoop5BC() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @UnreferencedIrqNoop5C0() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @UnreferencedIrqNoop5C4() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @UnreferencedIrqNoop5C8() local_unnamed_addr #1 {
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
