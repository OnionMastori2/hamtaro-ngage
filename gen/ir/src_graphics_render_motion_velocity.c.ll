; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local arm_apcscc void @SetRenderMotionVelocity(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  switch i8 %2, label %17 [
    i8 0, label %4
    i8 1, label %7
    i8 2, label %9
    i8 3, label %12
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 0, ptr %5, align 4
  %6 = sub i32 0, %1
  br label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 0, ptr %8, align 4
  br label %14

9:                                                ; preds = %3
  %10 = sub i32 0, %1
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  br label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %1, ptr %13, align 4
  br label %14

14:                                               ; preds = %4, %7, %9, %12
  %15 = phi i32 [ 0, %12 ], [ 0, %9 ], [ %1, %7 ], [ %6, %4 ]
  %16 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %3
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
