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
define dso_local arm_apcscc noundef i32 @GraphicsCall(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 0
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %2, %6, %10, %14
  %19 = phi i32 [ 0, %2 ], [ 1, %6 ], [ 2, %10 ], [ 3, %14 ]
  %20 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 %19
  store i8 1, ptr %20, align 1
  %21 = load i8, ptr %1, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %1, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or disjoint i32 %26, %22
  %28 = getelementptr i8, ptr %1, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or disjoint i32 %27, %31
  %33 = getelementptr i8, ptr %1, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw i32 %35, 24
  %37 = or disjoint i32 %32, %36
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr i8, ptr %1, i32 4
  %40 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 5, i32 %19
  store ptr %39, ptr %40, align 4
  br label %43

41:                                               ; preds = %14
  %42 = getelementptr i8, ptr %1, i32 4
  br label %43

43:                                               ; preds = %41, %18
  %44 = phi ptr [ %42, %41 ], [ %38, %18 ]
  %45 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %44, ptr %45, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @GraphicsEndRepeat(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 3, i32 0
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %10, %6, %2
  %19 = phi i32 [ 3, %2 ], [ 2, %6 ], [ 1, %10 ], [ 0, %14 ]
  %20 = phi ptr [ %3, %2 ], [ %7, %6 ], [ %11, %10 ], [ %15, %14 ]
  %21 = phi i8 [ %4, %2 ], [ %8, %6 ], [ %12, %10 ], [ %16, %14 ]
  %22 = add i8 %21, -1
  store i8 %22, ptr %20, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr %struct.GraphicsScript, ptr %0, i32 0, i32 5, i32 %19
  %26 = load ptr, ptr %25, align 4
  br label %28

27:                                               ; preds = %18
  store i8 0, ptr %20, align 1
  br label %28

28:                                               ; preds = %27, %14, %24
  %29 = phi ptr [ %26, %24 ], [ %1, %14 ], [ %1, %27 ]
  %30 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %29, ptr %30, align 4
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @GraphicsWriteBytes(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %5, ptr %6, align 4
  %7 = load i8, ptr %3, align 1
  %8 = getelementptr i8, ptr %1, i32 6
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr i8, ptr %1, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %19 = getelementptr i8, ptr %1, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or disjoint i32 %18, %22
  %24 = getelementptr i8, ptr %1, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = or disjoint i32 %23, %27
  %29 = inttoptr i32 %28 to ptr
  br label %30

30:                                               ; preds = %10, %30
  %31 = phi i8 [ %37, %30 ], [ 0, %10 ]
  %32 = phi ptr [ %36, %30 ], [ %29, %10 ]
  %33 = phi ptr [ %34, %30 ], [ %8, %10 ]
  %34 = getelementptr i8, ptr %33, i32 1
  %35 = load i8, ptr %33, align 1
  %36 = getelementptr i8, ptr %32, i32 1
  store i8 %35, ptr %32, align 1
  %37 = add nuw i8 %31, 1
  %38 = icmp ult i8 %37, %7
  br i1 %38, label %30, label %39

39:                                               ; preds = %30, %2
  %40 = phi ptr [ %8, %2 ], [ %34, %30 ]
  %41 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %40, ptr %41, align 4
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @GraphicsWriteMirrorRows(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %1, i32 2
  %8 = load i8, ptr %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, ptr %7, align 1
  %11 = getelementptr i8, ptr %1, i32 7
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %1, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %17, %20
  %22 = getelementptr i8, ptr %1, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or disjoint i32 %21, %25
  %27 = getelementptr i8, ptr %1, i32 6
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = or disjoint i32 %26, %30
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr i8, ptr %32, i32 %9
  %34 = getelementptr i8, ptr %33, i32 -1
  %35 = icmp eq i8 %8, 0
  %36 = sub nsw i32 0, %9
  %37 = shl nuw nsw i32 %9, 1
  br label %38

38:                                               ; preds = %13, %51
  %39 = phi i8 [ 0, %13 ], [ %56, %51 ]
  %40 = phi ptr [ %34, %13 ], [ %55, %51 ]
  %41 = phi ptr [ %11, %13 ], [ %54, %51 ]
  br i1 %35, label %51, label %42

42:                                               ; preds = %38, %42
  %43 = phi i8 [ %49, %42 ], [ 0, %38 ]
  %44 = phi ptr [ %48, %42 ], [ %40, %38 ]
  %45 = phi ptr [ %46, %42 ], [ %41, %38 ]
  %46 = getelementptr i8, ptr %45, i32 1
  %47 = load i8, ptr %45, align 1
  %48 = getelementptr i8, ptr %44, i32 -1
  store i8 %47, ptr %44, align 1
  %49 = add nuw i8 %43, 1
  %50 = icmp ult i8 %49, %8
  br i1 %50, label %42, label %51

51:                                               ; preds = %42, %38
  %52 = phi ptr [ %41, %38 ], [ %46, %42 ]
  %53 = phi ptr [ %40, %38 ], [ %48, %42 ]
  %54 = getelementptr i8, ptr %52, i32 %36
  %55 = getelementptr i8, ptr %53, i32 %37
  %56 = add nuw i8 %39, 1
  %57 = icmp ult i8 %56, %10
  br i1 %57, label %38, label %58

58:                                               ; preds = %51, %2
  %59 = phi ptr [ %11, %2 ], [ %54, %51 ]
  %60 = getelementptr i8, ptr %59, i32 %9
  %61 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %60, ptr %61, align 4
  ret i32 1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
