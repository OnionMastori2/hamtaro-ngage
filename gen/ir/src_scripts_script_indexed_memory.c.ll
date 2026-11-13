; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc ptr @ResolveIndexedControlMemoryAddress(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr i8, ptr %0, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr i8, ptr %0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %11, 16
  %16 = shl nuw nsw i32 %14, 8
  %17 = or disjoint i32 %15, %16
  %18 = getelementptr i8, ptr %0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %17, %20
  %22 = shl nuw i32 %21, 8
  %23 = zext i8 %8 to i32
  %24 = zext i8 %3 to i32
  %25 = load i8, ptr %0, align 1
  %26 = zext i8 %25 to i32
  %27 = mul nuw nsw i32 %23, %24
  %28 = add i32 %22, %27
  %29 = add i32 %28, %26
  %30 = inttoptr i32 %29 to ptr
  ret ptr %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @CopyControlOrClassToIndexedMemory(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 7
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr i8, ptr %0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %17, 16
  %22 = shl nuw nsw i32 %20, 8
  %23 = or disjoint i32 %22, %21
  %24 = getelementptr i8, ptr %0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or disjoint i32 %23, %26
  %28 = shl nuw i32 %27, 8
  %29 = zext i8 %14 to i32
  %30 = zext i8 %9 to i32
  %31 = load i8, ptr %0, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %29, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = add i32 %34, %28
  %36 = inttoptr i32 %35 to ptr
  br i1 %7, label %40, label %37

37:                                               ; preds = %1
  %38 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %4
  %39 = load i16, ptr %38, align 2
  store i16 %39, ptr %36, align 2
  br label %43

40:                                               ; preds = %1
  %41 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %4
  %42 = load i8, ptr %41, align 1
  store i8 %42, ptr %36, align 1
  br label %43

43:                                               ; preds = %40, %37
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @CopyIndexedMemoryToControlOrClass(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 7
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr i8, ptr %0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %17, 16
  %22 = shl nuw nsw i32 %20, 8
  %23 = or disjoint i32 %22, %21
  %24 = getelementptr i8, ptr %0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or disjoint i32 %23, %26
  %28 = shl nuw i32 %27, 8
  %29 = zext i8 %14 to i32
  %30 = zext i8 %9 to i32
  %31 = load i8, ptr %0, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %29, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = add i32 %34, %28
  %36 = inttoptr i32 %35 to ptr
  br i1 %7, label %40, label %37

37:                                               ; preds = %1
  %38 = load i16, ptr %36, align 2
  %39 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %4
  store i16 %38, ptr %39, align 2
  br label %43

40:                                               ; preds = %1
  %41 = load i8, ptr %36, align 1
  %42 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %4
  store i8 %41, ptr %42, align 1
  br label %43

43:                                               ; preds = %40, %37
  ret i32 8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
