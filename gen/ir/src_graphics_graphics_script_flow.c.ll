; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @GraphicsReturn(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 0
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8 0, ptr %0, align 4
  br label %25

19:                                               ; preds = %14, %10, %6, %2
  %20 = phi i32 [ 3, %2 ], [ 2, %6 ], [ 1, %10 ], [ 0, %14 ]
  %21 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 %20
  store i8 0, ptr %21, align 1
  %22 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 5, i32 %20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %19 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @GraphicsWait(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %6, ptr %12, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @GraphicsJump(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr i8, ptr %1, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr i8, ptr %1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or disjoint i32 %14, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %20, ptr %21, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @GraphicsBranchByte(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %1, i32 -1
  %4 = load i8, ptr %3, align 1
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %1, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %1, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr i8, ptr %1, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %16, %20
  %22 = inttoptr i32 %21 to ptr
  switch i8 %4, label %58 [
    i8 -110, label %23
    i8 -109, label %28
    i8 -108, label %33
  ]

23:                                               ; preds = %2
  %24 = load i8, ptr %22, align 1
  %25 = getelementptr i8, ptr %1, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %24, %26
  br i1 %27, label %38, label %58

28:                                               ; preds = %2
  %29 = load i8, ptr %22, align 1
  %30 = getelementptr i8, ptr %1, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = icmp ugt i8 %29, %31
  br i1 %32, label %38, label %58

33:                                               ; preds = %2
  %34 = load i8, ptr %22, align 1
  %35 = getelementptr i8, ptr %1, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = icmp ult i8 %34, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %33, %28, %23
  %39 = getelementptr i8, ptr %1, i32 5
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %1, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or disjoint i32 %45, %41
  %47 = getelementptr i8, ptr %1, i32 7
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or disjoint i32 %46, %50
  %52 = getelementptr i8, ptr %1, i32 8
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = or disjoint i32 %51, %55
  %57 = inttoptr i32 %56 to ptr
  br label %60

58:                                               ; preds = %28, %23, %2, %33
  %59 = getelementptr i8, ptr %1, i32 9
  br label %60

60:                                               ; preds = %58, %38
  %61 = phi ptr [ %59, %58 ], [ %57, %38 ]
  %62 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %61, ptr %62, align 4
  ret i32 1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
