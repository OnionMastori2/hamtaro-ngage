; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @FindRenderClass(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = load i8, ptr @gRenderClassSlots3, align 1
  %6 = tail call arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef %0) #2
  %7 = icmp eq i8 %2, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = icmp eq i8 %3, %6
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp eq i8 %4, %6
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = icmp eq i8 %5, %6
  %14 = select i1 %13, i32 45, i32 -1
  br label %15

15:                                               ; preds = %12, %1, %8, %10
  %16 = phi i32 [ 42, %1 ], [ 43, %8 ], [ 44, %10 ], [ %14, %12 ]
  ret i32 %16
}

declare dso_local arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
