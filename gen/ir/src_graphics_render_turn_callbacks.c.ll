; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderTurnNextDirections42E8 = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gRenderTurnAnimationScripts0658 = external dso_local local_unnamed_addr global [0 x [8 x ptr]], align 4
@gRenderTurnAnimationDirections42A8 = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackInitializeRenderTurn(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  %4 = load i8, ptr %1, align 1
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 88), align 1
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 89), align 1
  %7 = getelementptr i8, ptr %1, i32 2
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 90), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 91), align 1
  store i32 0, ptr %2, align 4
  ret i32 3
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateRenderTurn(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 88), align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 89), align 1
  %8 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %5, i8 noundef zeroext %7) #3
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  switch i8 %9, label %48 [
    i8 0, label %10
    i8 1, label %37
    i8 2, label %42
  ]

10:                                               ; preds = %3
  %11 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  %12 = load i8, ptr %11, align 4
  %13 = and i32 %8, 255
  %14 = trunc i32 %8 to i8
  %15 = icmp eq i8 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i8 4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 91), align 1
  br label %17

17:                                               ; preds = %10, %16
  %18 = phi i8 [ 1, %16 ], [ 2, %10 ]
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  %19 = load i8, ptr %11, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 2
  %22 = getelementptr i8, ptr @gRenderTurnNextDirections42E8, i32 %13
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = getelementptr i8, ptr %23, i32 -5
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr %11, align 1
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 88), align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 90), align 1
  %29 = zext i8 %28 to i32
  %30 = zext i8 %25 to i32
  %31 = add nsw i32 %30, -1
  %32 = getelementptr [0 x i8], ptr @gRenderTurnAnimationDirections42A8, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr [0 x [8 x ptr]], ptr @gRenderTurnAnimationScripts0658, i32 0, i32 %29, i32 %34
  %36 = load ptr, ptr %35, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %27, ptr noundef %36) #3
  br label %48

37:                                               ; preds = %3
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 91), align 1
  %39 = add i8 %38, -1
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 91), align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  br label %48

42:                                               ; preds = %3
  %43 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  %44 = load i8, ptr %43, align 4
  %45 = trunc i32 %8 to i8
  %46 = icmp eq i8 %44, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  br label %48

48:                                               ; preds = %42, %47, %37, %41, %3, %17
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
