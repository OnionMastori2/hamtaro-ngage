; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderXZCollisionDimensions = type { i16, i16 }

@gRenderFacingSampleOffsets = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gRenderCollisionFacingDirections = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gRenderCollisionFacingDistances = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRenderXZCollisionDimensions = external dso_local local_unnamed_addr global %struct.RenderXZCollisionDimensions, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i8 %3 to i32
  %6 = getelementptr [0 x [2 x i16]], ptr @gRenderFacingSampleOffsets, i32 0, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = sext i16 %7 to i32
  %9 = add i32 %8, %1
  %10 = getelementptr [0 x [2 x i16]], ptr @gRenderFacingSampleOffsets, i32 0, i32 %5, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = sext i16 %11 to i32
  %13 = add i32 %12, %2
  %14 = shl i32 %9, 13
  %15 = ashr i32 %14, 16
  %16 = shl i32 %13, 13
  %17 = ashr i32 %16, 16
  %18 = getelementptr [0 x [2 x i16]], ptr @gRenderCollisionFacingDirections, i32 0, i32 %5
  %19 = load i16, ptr %18, align 2
  %20 = sext i16 %19 to i32
  %21 = getelementptr [0 x i16], ptr @gRenderCollisionFacingDistances, i32 0, i32 %5
  %22 = load i16, ptr %21, align 2
  %23 = sext i16 %22 to i32
  %24 = mul nsw i32 %23, %20
  %25 = add nsw i32 %24, %15
  %26 = getelementptr [0 x [2 x i16]], ptr @gRenderCollisionFacingDirections, i32 0, i32 %5, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, %23
  %30 = add nsw i32 %29, %17
  %31 = icmp slt i32 %25, 0
  %32 = load i16, ptr @gRenderXZCollisionDimensions, align 2
  %33 = zext i16 %32 to i32
  %34 = select i1 %31, i32 %33, i32 0
  %35 = icmp slt i32 %30, 0
  %36 = load i16, ptr getelementptr inbounds (%struct.RenderXZCollisionDimensions, ptr @gRenderXZCollisionDimensions, i32 0, i32 1), align 2
  %37 = zext i16 %36 to i32
  %38 = select i1 %35, i32 %37, i32 0
  %39 = add nsw i32 %38, %30
  %40 = mul i32 %39, %33
  %41 = getelementptr i16, ptr %0, i32 %40
  %42 = getelementptr i16, ptr %41, i32 %25
  %43 = getelementptr i16, ptr %42, i32 %34
  ret ptr %43
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
