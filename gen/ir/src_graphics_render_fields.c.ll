; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderField60(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 %0, i32 23
  store i8 %3, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderField62(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 %0, i32 23, i32 2
  store i8 %3, ptr %5, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderField65(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 %0, i32 23, i32 5
  store i8 %3, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 23, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, -13
  store i8 %6, ptr %4, align 1
  %7 = shl i8 %1, 2
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %8, i32 %0, i32 23, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = or i8 %10, %7
  store i8 %11, ptr %9, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderModeBits(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 23, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, -4
  store i8 %6, ptr %4, align 1
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 %0, i32 23, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = or i8 %9, %1
  store i8 %10, ptr %8, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderBit5(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 23, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, -33
  store i8 %6, ptr %4, align 1
  %7 = shl i8 %1, 5
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %8, i32 %0, i32 23, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = or i8 %10, %7
  store i8 %11, ptr %9, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderBit7(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 23, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 127
  store i8 %6, ptr %4, align 1
  %7 = shl i8 %1, 7
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %8, i32 %0, i32 23, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = or i8 %10, %7
  store i8 %11, ptr %9, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderBit6(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 23, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 64
  store i8 %5, ptr %3, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderActiveRange(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = zext i8 %0 to i32
  %4 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, -1
  %7 = icmp sle i32 %6, %3
  %8 = icmp ule i8 %4, %1
  %9 = or i1 %8, %7
  %10 = icmp uge i8 %0, %1
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call arm_apcscc void @QueueRenderError(i32 noundef 4) #4
  br label %14

13:                                               ; preds = %2
  store i8 %0, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6), align 1
  store i8 %1, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6, i32 1), align 2
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

declare dso_local arm_apcscc void @QueueRenderError(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
