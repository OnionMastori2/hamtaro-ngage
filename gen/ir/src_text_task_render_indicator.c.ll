; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskDefaultIndicatorAnimation = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeTaskRenderSlot0(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, 36
  %7 = inttoptr i32 %6 to ptr
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 16
  %11 = or disjoint i32 %10, 32768
  %12 = add i32 %3, 38
  %13 = inttoptr i32 %12 to ptr
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  %16 = shl nsw i32 %15, 16
  %17 = add i32 %3, 40
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 4
  %20 = add i32 %16, 294912
  br label %21

21:                                               ; preds = %1, %5
  %22 = phi i32 [ %20, %5 ], [ 262292, %1 ]
  %23 = phi ptr [ %19, %5 ], [ @gTaskDefaultIndicatorAnimation, %1 ]
  %24 = phi i32 [ %11, %5 ], [ 220, %1 ]
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 0, i32 noundef 1) #2
  tail call arm_apcscc void @SetRenderField62(i32 noundef 0, i32 noundef 120) #2
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 0, i8 noundef zeroext 0) #2
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 0, i32 noundef %24, i32 noundef %22, i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 0, ptr noundef %23) #2
  ret void
}

declare dso_local arm_apcscc void @ResetRenderSlot(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField62(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
