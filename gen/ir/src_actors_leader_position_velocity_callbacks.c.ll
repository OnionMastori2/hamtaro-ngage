; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gScriptRenderOffsets2BB0 = external dso_local local_unnamed_addr global [2 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCopyLeaderPositionWithScaledVelocity(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 55), align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = zext i16 %6 to i32
  %10 = load i32, ptr @gScriptRenderOffsets2BB0, align 4
  %11 = tail call arm_apcscc i32 @__divsi3(i32 noundef %10, i32 noundef %9) #4
  %12 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6
  store i32 %11, ptr %12, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6, i32 1
  store i32 0, ptr %13, align 4
  %14 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @gScriptRenderOffsets2BB0, i32 0, i32 1), align 4
  %15 = tail call arm_apcscc i32 @__divsi3(i32 noundef %14, i32 noundef %9) #4
  br label %19

16:                                               ; preds = %1
  %17 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6
  %18 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6, i32 1
  store i32 0, ptr %18, align 4
  store i32 0, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi i32 [ 0, %16 ], [ %15, %8 ]
  %21 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6, i32 2
  store i32 %20, ptr %21, align 4
  %22 = zext i8 %5 to i32
  %23 = getelementptr %struct.RenderSlot, ptr %4, i32 %22, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr %struct.RenderSlot, ptr %4, i32 %22, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 4
  store i32 %27, ptr %28, align 4
  %29 = getelementptr %struct.RenderSlot, ptr %4, i32 %22, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 5
  store i32 %30, ptr %31, align 4
  ret i32 1
}

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackOffsetLeaderPositionAndApproach(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 55), align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @gScriptRenderOffsets2BB0, align 4
  %12 = add i32 %11, %10
  %13 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @gScriptRenderOffsets2BB0, i32 0, i32 1), align 4
  %20 = add i32 %19, %18
  %21 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 5
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %9, align 4
  %23 = sub i32 %22, %12
  %24 = tail call arm_apcscc i32 @__divsi3(i32 noundef %23, i32 noundef %8) #4
  %25 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %14, align 4
  %27 = sub i32 %26, %15
  %28 = tail call arm_apcscc i32 @__divsi3(i32 noundef %27, i32 noundef %8) #4
  %29 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6, i32 1
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %17, align 4
  %31 = sub i32 %30, %20
  %32 = tail call arm_apcscc i32 @__divsi3(i32 noundef %31, i32 noundef %8) #4
  %33 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 6, i32 2
  store i32 %32, ptr %33, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ClampRenderApproachCoordinate(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %2, i32 %0)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
