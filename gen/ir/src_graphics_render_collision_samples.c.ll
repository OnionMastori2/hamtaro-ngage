; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderXZCollisionDimensions = type { i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderFacingSampleOffsets = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gRenderCollisionSampleOffsets = external dso_local local_unnamed_addr constant [0 x [6 x [2 x i8]]], align 1
@gRenderXZCollisionDimensions = external dso_local local_unnamed_addr global %struct.RenderXZCollisionDimensions, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc i32 @GetRenderFacingIndex(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  %3 = load i8, ptr %2, align 4
  %4 = add i8 %3, 3
  %5 = and i8 %4, 3
  %6 = zext nneg i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc ptr @GetRenderCollisionSample(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = icmp eq i8 %4, -1
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = zext i8 %3 to i32
  %9 = getelementptr [0 x [2 x i16]], ptr @gRenderFacingSampleOffsets, i32 0, i32 %8
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = getelementptr [0 x [2 x i16]], ptr @gRenderFacingSampleOffsets, i32 0, i32 %8, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  br label %24

15:                                               ; preds = %5
  %16 = zext i8 %4 to i32
  %17 = zext i8 %3 to i32
  %18 = getelementptr [0 x [6 x [2 x i8]]], ptr @gRenderCollisionSampleOffsets, i32 0, i32 %17, i32 %16
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = getelementptr [0 x [6 x [2 x i8]]], ptr @gRenderCollisionSampleOffsets, i32 0, i32 %17, i32 %16, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  br label %24

24:                                               ; preds = %15, %7
  %25 = phi i32 [ %14, %7 ], [ %23, %15 ]
  %26 = phi i32 [ %11, %7 ], [ %20, %15 ]
  %27 = add i32 %26, %1
  %28 = add i32 %25, %2
  %29 = shl i32 %27, 13
  %30 = ashr i32 %29, 16
  %31 = shl i32 %28, 13
  %32 = ashr i32 %31, 16
  %33 = icmp slt i32 %30, 0
  %34 = load i16, ptr @gRenderXZCollisionDimensions, align 2
  %35 = zext i16 %34 to i32
  %36 = select i1 %33, i32 %35, i32 0
  %37 = icmp slt i32 %32, 0
  %38 = load i16, ptr getelementptr inbounds (%struct.RenderXZCollisionDimensions, ptr @gRenderXZCollisionDimensions, i32 0, i32 1), align 2
  %39 = zext i16 %38 to i32
  %40 = select i1 %37, i32 %39, i32 0
  %41 = add nsw i32 %40, %32
  %42 = mul i32 %41, %35
  %43 = getelementptr i16, ptr %0, i32 %42
  %44 = getelementptr i16, ptr %43, i32 %30
  %45 = getelementptr i16, ptr %44, i32 %36
  ret ptr %45
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
