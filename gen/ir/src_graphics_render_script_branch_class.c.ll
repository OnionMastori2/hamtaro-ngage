; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchClassLess(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call arm_apcscc i32 @FindRenderClass(ptr noundef %0) #2
  %5 = and i32 %4, 255
  %6 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %5
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %3, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %13, %9
  %15 = load i16, ptr %6, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ugt i32 %14, %16
  %18 = load ptr, ptr %1, align 4
  br i1 %17, label %19, label %22

19:                                               ; preds = %2
  %20 = getelementptr i8, ptr %18, i32 2
  store ptr %20, ptr %1, align 4
  %21 = tail call arm_apcscc i32 @AnimationJump(ptr noundef %0, ptr noundef nonnull %1) #2
  br label %27

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %18, i32 7
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 7
  store i16 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %19
  ret i32 0
}

declare dso_local arm_apcscc i32 @FindRenderClass(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @AnimationJump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchClassGreater(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call arm_apcscc i32 @FindRenderClass(ptr noundef %0) #2
  %5 = and i32 %4, 255
  %6 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %5
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %3, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %13, %9
  %15 = load i16, ptr %6, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ult i32 %14, %16
  %18 = load ptr, ptr %1, align 4
  br i1 %17, label %19, label %22

19:                                               ; preds = %2
  %20 = getelementptr i8, ptr %18, i32 2
  store ptr %20, ptr %1, align 4
  %21 = tail call arm_apcscc i32 @AnimationJump(ptr noundef %0, ptr noundef nonnull %1) #2
  br label %27

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %18, i32 7
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 7
  store i16 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %19
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
