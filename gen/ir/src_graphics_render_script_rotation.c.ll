; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationSetRotation(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #2
  store i8 %7, ptr %3, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %8
  store i8 1, ptr %9, align 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = getelementptr i8, ptr %11, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = or disjoint i16 %18, %14
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 10
  store i16 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %11, i32 3
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 3
  store i16 %24, ptr %22, align 4
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindUnusedAffineMatrix() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationSetRotationVelocity(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #2
  store i8 %7, ptr %3, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %8
  store i8 1, ptr %9, align 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  %16 = getelementptr i8, ptr %11, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  %19 = or disjoint i16 %15, %18
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 14
  store i16 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %11, i32 3
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 3
  store i16 %24, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationSetAffineField5E(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #2
  store i8 %7, ptr %3, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %8
  store i8 1, ptr %9, align 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr i8, ptr %0, i32 94
  store i8 %13, ptr %14, align 1
  %15 = getelementptr i8, ptr %11, i32 2
  store ptr %15, ptr %1, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 2
  store i16 %18, ptr %16, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationSetAffineField5F(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #2
  store i8 %7, ptr %3, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %8
  store i8 1, ptr %9, align 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr i8, ptr %0, i32 95
  store i8 %13, ptr %14, align 1
  %15 = getelementptr i8, ptr %11, i32 2
  store ptr %15, ptr %1, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 2
  store i16 %18, ptr %16, align 4
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
