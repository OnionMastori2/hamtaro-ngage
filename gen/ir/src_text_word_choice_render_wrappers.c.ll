; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBootGate2170 = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = icmp eq i8 %8, %0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8 0, ptr @gBootGate2170, align 1
  br label %11

11:                                               ; preds = %10, %7
  %12 = zext i8 %0 to i32
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef %12) #3
  %13 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %12, i32 noundef %13) #3
  %14 = zext i8 %2 to i32
  tail call arm_apcscc void @SetRenderField62(i32 noundef %12, i32 noundef %14) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %12, i8 noundef zeroext 2) #3
  %15 = shl i32 %3, 16
  %16 = or disjoint i32 %15, 32768
  %17 = shl i32 %4, 16
  %18 = or disjoint i32 %17, 32768
  %19 = shl i32 %5, 16
  %20 = or disjoint i32 %19, 32768
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %12, i32 noundef %16, i32 noundef %18, i32 noundef %20) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %12, ptr noundef %6) #3
  ret void
}

declare dso_local arm_apcscc void @ResetRenderSlot(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField62(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = icmp eq i8 %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i8 0, ptr @gBootGate2170, align 1
  br label %6

6:                                                ; preds = %5, %2
  %7 = zext i8 %0 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %7, ptr noundef %1) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gRenderClassSlots1, align 1
  %5 = icmp eq i8 %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i8 0, ptr @gBootGate2170, align 1
  br label %7

7:                                                ; preds = %6, %3
  %8 = zext i8 %0 to i32
  %9 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %8, i32 noundef %9) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %8, ptr noundef %2) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %0 to i32
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %3, i8 noundef zeroext %1) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i8 %0 to i32
  %6 = shl i32 %1, 16
  %7 = or disjoint i32 %6, 32768
  %8 = shl i32 %2, 16
  %9 = or disjoint i32 %8, 32768
  %10 = shl i32 %3, 16
  %11 = or disjoint i32 %10, 32768
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %0 to i32
  %4 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %3, i32 noundef %4) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = shl i8 %1, 6
  %6 = shl i8 %2, 4
  %7 = and i8 %6, 48
  %8 = or disjoint i8 %7, %5
  %9 = icmp ult i8 %1, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = and i8 %3, 15
  %12 = or disjoint i8 %8, %11
  %13 = zext i8 %0 to i32
  br label %17

14:                                               ; preds = %4
  %15 = zext i8 %0 to i32
  %16 = zext i8 %3 to i32
  tail call arm_apcscc void @SetRenderField65(i32 noundef %15, i32 noundef %16) #3
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %15, %14 ], [ %13, %10 ]
  %19 = phi i8 [ %8, %14 ], [ %12, %10 ]
  %20 = zext i8 %19 to i32
  tail call arm_apcscc void @SetRenderField62(i32 noundef %18, i32 noundef %20) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderField65(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = zext i8 %0 to i32
  %6 = sext i16 %1 to i32
  %7 = shl nsw i32 %6, 8
  %8 = sext i16 %2 to i32
  %9 = shl nsw i32 %8, 8
  %10 = sext i16 %3 to i32
  %11 = shl nsw i32 %10, 8
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #2 {
  store i8 %0, ptr @gTaskRenderSlotIndexFAC, align 1
  %3 = ptrtoint ptr %1 to i32
  store i32 %3, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
