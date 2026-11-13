; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @MarkUsedAffineMatrices() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %2 = zext i8 %1 to i32
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @gRenderSlots, align 4
  br label %6

6:                                                ; preds = %4, %15
  %7 = phi i32 [ %16, %15 ], [ 0, %4 ]
  %8 = phi ptr [ %17, %15 ], [ %5, %4 ]
  %9 = getelementptr %struct.RenderSlot, ptr %8, i32 0, i32 23, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = zext i8 %10 to i32
  %14 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %13
  store i8 1, ptr %14, align 1
  br label %15

15:                                               ; preds = %12, %6
  %16 = add nuw nsw i32 %7, 1
  %17 = getelementptr %struct.RenderSlot, ptr %8, i32 1
  %18 = icmp eq i32 %16, %2
  br i1 %18, label %19, label %6

19:                                               ; preds = %15, %0
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
