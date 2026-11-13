; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderTurnAnimationScripts0658 = external dso_local local_unnamed_addr global [0 x [8 x ptr]], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackDecrementTurnDirection(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %4, align 1
  %9 = getelementptr i8, ptr %4, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 %7, %11
  %13 = and i32 %12, 7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = icmp eq i32 %13, 4
  br i1 %16, label %20, label %17

17:                                               ; preds = %15, %1
  %18 = phi i8 [ 1, %1 ], [ 2, %15 ]
  %19 = getelementptr i8, ptr %4, i32 2
  store i8 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %17, %15
  %21 = getelementptr i8, ptr %4, i32 3
  store i8 0, ptr %21, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStepActorTurnAnimation(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %3
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %14 [
    i8 -127, label %7
    i8 -128, label %12
  ]

7:                                                ; preds = %1
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %4, i32 2
  store i8 0, ptr %11, align 1
  br label %50

12:                                               ; preds = %1
  %13 = load i8, ptr @gRenderClassSlots0, align 1
  br label %14

14:                                               ; preds = %7, %1, %12
  %15 = phi i8 [ %13, %12 ], [ %6, %1 ], [ %8, %7 ]
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %4, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load i8, ptr %4, align 1
  %22 = getelementptr i8, ptr %4, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %21, %23
  %25 = getelementptr i8, ptr %4, i32 2
  br i1 %24, label %39, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr %25, align 1
  %28 = icmp eq i8 %27, 1
  %29 = select i1 %28, i8 1, i8 7
  %30 = add i8 %29, %23
  %31 = and i8 %30, 7
  store i8 %31, ptr %22, align 1
  %32 = getelementptr i8, ptr %0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = zext nneg i8 %31 to i32
  %36 = getelementptr [0 x [8 x ptr]], ptr @gRenderTurnAnimationScripts0658, i32 0, i32 %34, i32 %35
  %37 = load ptr, ptr %36, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %16, ptr noundef %37) #3
  %38 = load i8, ptr %22, align 1
  br label %40

39:                                               ; preds = %20
  store i8 0, ptr %25, align 1
  br label %40

40:                                               ; preds = %39, %26
  %41 = phi i8 [ %21, %39 ], [ %38, %26 ]
  store i8 4, ptr %17, align 1
  %42 = getelementptr i8, ptr %0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = zext i8 %41 to i32
  %46 = getelementptr [0 x [8 x ptr]], ptr @gRenderTurnAnimationScripts0658, i32 0, i32 %44, i32 %45
  %47 = load ptr, ptr %46, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %16, ptr noundef %47) #3
  br label %50

48:                                               ; preds = %14
  %49 = add i8 %18, -1
  store i8 %49, ptr %17, align 1
  br label %50

50:                                               ; preds = %40, %48, %10
  ret i32 3
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
