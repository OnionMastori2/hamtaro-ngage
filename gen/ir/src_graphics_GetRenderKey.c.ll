; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @GetRenderKey(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 23, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, -64
  %6 = icmp eq i8 %5, -128
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 5
  %9 = load i32, ptr %8, align 4
  br label %20

10:                                               ; preds = %1
  %11 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 23, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -65536
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %13, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  br label %20

20:                                               ; preds = %10, %7
  %21 = phi i32 [ %9, %7 ], [ %19, %10 ]
  ret i32 %21
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
