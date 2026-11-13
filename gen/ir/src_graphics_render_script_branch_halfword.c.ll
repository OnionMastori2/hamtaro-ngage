; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchEqualHalfword(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %16, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr i8, ptr %3, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr i8, ptr %3, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %29, %25
  %31 = load i16, ptr %22, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  store ptr %26, ptr %1, align 4
  %35 = tail call arm_apcscc i32 @AnimationJump(ptr noundef %0, ptr noundef nonnull %1) #2
  br label %41

36:                                               ; preds = %2
  %37 = getelementptr i8, ptr %3, i32 11
  store ptr %37, ptr %1, align 4
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %39 = load i16, ptr %38, align 4
  %40 = add i16 %39, 11
  store i16 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %36, %34
  ret i32 0
}

declare dso_local arm_apcscc i32 @AnimationJump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchLessHalfword(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %16, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr i8, ptr %3, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr i8, ptr %3, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %29, %25
  %31 = load i16, ptr %22, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  store ptr %26, ptr %1, align 4
  %35 = tail call arm_apcscc i32 @AnimationJump(ptr noundef %0, ptr noundef nonnull %1) #2
  br label %41

36:                                               ; preds = %2
  %37 = getelementptr i8, ptr %3, i32 11
  store ptr %37, ptr %1, align 4
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %39 = load i16, ptr %38, align 4
  %40 = add i16 %39, 11
  store i16 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %36, %34
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchGreaterHalfword(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %16, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr i8, ptr %3, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr i8, ptr %3, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %29, %25
  %31 = load i16, ptr %22, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  store ptr %26, ptr %1, align 4
  %35 = tail call arm_apcscc i32 @AnimationJump(ptr noundef %0, ptr noundef nonnull %1) #2
  br label %41

36:                                               ; preds = %2
  %37 = getelementptr i8, ptr %3, i32 11
  store ptr %37, ptr %1, align 4
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %39 = load i16, ptr %38, align 4
  %40 = add i16 %39, 11
  store i16 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %36, %34
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
