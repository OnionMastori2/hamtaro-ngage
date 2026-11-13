; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderTurnAnimationDirections42A8 = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gRenderTurnAnimationScripts0658 = external dso_local local_unnamed_addr global [0 x [8 x ptr]], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetRenderMotionAnimation(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 23
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 15
  %8 = add nsw i8 %7, -1
  %9 = icmp ugt i8 %8, 3
  %10 = select i1 %9, i8 0, i8 %8
  %11 = zext i8 %10 to i32
  %12 = add nsw i8 %10, 1
  store i8 %12, ptr %5, align 4
  %13 = getelementptr [0 x i8], ptr @gRenderTurnAnimationDirections42A8, i32 0, i32 %11
  %14 = load i8, ptr %13, align 1
  %15 = load i8, ptr %0, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = zext i8 %14 to i32
  %21 = getelementptr [0 x [8 x ptr]], ptr @gRenderTurnAnimationScripts0658, i32 0, i32 %19, i32 %20
  %22 = load ptr, ptr %21, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %16, ptr noundef %22) #2
  %23 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  store i32 0, ptr %23, align 4
  %24 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 7
  store i32 0, ptr %26, align 4
  %27 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 7, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 7, i32 2
  store i32 0, ptr %28, align 4
  ret i32 2
}

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
