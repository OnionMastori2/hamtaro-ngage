; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderLayerOffsets = external dso_local local_unnamed_addr global [4 x %struct.RenderLayerOffset], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @GetRenderLayerOffset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store i16 0, ptr %1, align 2
  store i16 0, ptr %2, align 2
  %4 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 15
  %7 = zext nneg i8 %6 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %32, %29, %26, %3
  %11 = phi i32 [ 0, %3 ], [ 1, %26 ], [ 2, %29 ], [ 3, %32 ]
  %12 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %11, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = lshr i32 %16, 16
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %1, align 2
  %19 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %11, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %11, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = lshr i32 %23, 16
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %2, align 2
  br label %34

26:                                               ; preds = %3
  %27 = and i32 %7, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %10

29:                                               ; preds = %26
  %30 = and i32 %7, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %10

32:                                               ; preds = %29
  %33 = icmp eq i8 %6, 0
  br i1 %33, label %34, label %10

34:                                               ; preds = %32, %10
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
