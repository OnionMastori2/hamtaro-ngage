; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderXZCollisionDimensions = type { i16, i16 }

@gRenderXZCollisionDimensions = external dso_local global %struct.RenderXZCollisionDimensions, align 2
@gRenderCollisionEdgeOffsets = external dso_local local_unnamed_addr constant [0 x [6 x [2 x i8]]], align 1
@gRenderCollisionEdgeMasks = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ClassifyRenderCollisionMask(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %3 [
    i8 3, label %8
    i8 1, label %8
    i8 32, label %11
    i8 48, label %11
  ]

3:                                                ; preds = %2
  %4 = icmp ugt i8 %1, 1
  %5 = and i8 %0, -5
  %6 = icmp eq i8 %5, 56
  %7 = and i1 %4, %6
  br i1 %7, label %11, label %14

8:                                                ; preds = %2, %2
  %9 = icmp ult i8 %1, 2
  %10 = select i1 %9, i32 4, i32 2
  br label %14

11:                                               ; preds = %3, %2, %2
  %12 = icmp ult i8 %1, 2
  %13 = select i1 %12, i32 3, i32 1
  br label %14

14:                                               ; preds = %3, %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind memory(readwrite, argmem: read)
define dso_local arm_apcscc i32 @GetRenderXZCollisionMask(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  br label %4

4:                                                ; preds = %62, %3
  %5 = phi i32 [ 0, %3 ], [ %63, %62 ]
  %6 = phi i32 [ 0, %3 ], [ %58, %62 ]
  %7 = shl nuw i32 %5, 1
  %8 = mul nuw nsw i32 %5, 12
  %9 = getelementptr i8, ptr @gRenderCollisionEdgeOffsets, i32 %8
  %10 = getelementptr i8, ptr @gRenderCollisionEdgeMasks, i32 %7
  br label %11

11:                                               ; preds = %40, %4
  %12 = phi i32 [ 5, %4 ], [ %60, %40 ]
  %13 = phi ptr [ %9, %4 ], [ %59, %40 ]
  %14 = phi i32 [ %6, %4 ], [ %58, %40 ]
  %15 = load i8, ptr %13, align 1
  %16 = sext i8 %15 to i32
  %17 = add i32 %16, %1
  %18 = getelementptr i8, ptr %13, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = add i32 %20, %2
  %22 = shl i32 %17, 13
  %23 = ashr i32 %22, 16
  %24 = shl i32 %21, 13
  %25 = ashr i32 %24, 16
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load volatile i16, ptr @gRenderXZCollisionDimensions, align 2
  %29 = zext i16 %28 to i32
  %30 = tail call i32 asm "", "=r,0"(i32 %29) #2, !srcloc !4
  %31 = add i32 %30, %23
  br label %32

32:                                               ; preds = %27, %11
  %33 = phi i32 [ %31, %27 ], [ %23, %11 ]
  %34 = icmp slt i32 %25, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load volatile i16, ptr getelementptr inbounds (%struct.RenderXZCollisionDimensions, ptr @gRenderXZCollisionDimensions, i32 0, i32 1), align 2
  %37 = zext i16 %36 to i32
  %38 = tail call i32 asm "", "=r,0"(i32 %37) #2, !srcloc !5
  %39 = add i32 %38, %25
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %25, %32 ]
  %42 = load volatile i16, ptr @gRenderXZCollisionDimensions, align 2
  %43 = zext i16 %42 to i32
  %44 = tail call i32 asm "", "=r,0"(i32 %43) #2, !srcloc !6
  %45 = shl i32 %33, 1
  %46 = shl i32 %41, 1
  %47 = mul i32 %46, %44
  %48 = getelementptr i8, ptr %0, i32 %47
  %49 = ptrtoint ptr %48 to i32
  %50 = add i32 %45, %49
  %51 = inttoptr i32 %50 to ptr
  %52 = load i16, ptr %51, align 2
  %53 = load i16, ptr %10, align 2
  %54 = and i16 %53, %52
  %55 = icmp eq i16 %54, 0
  %56 = select i1 %55, i16 0, i16 %53
  %57 = zext i16 %56 to i32
  %58 = or i32 %14, %57
  %59 = getelementptr i8, ptr %13, i32 2
  %60 = add nsw i32 %12, -1
  %61 = icmp sgt i32 %12, 0
  br i1 %61, label %11, label %62

62:                                               ; preds = %40
  %63 = add nuw nsw i32 %5, 1
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %4

65:                                               ; preds = %62
  ret i32 %58
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind memory(readwrite, argmem: read) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1809}
!5 = !{i64 1972}
!6 = !{i64 2098}
