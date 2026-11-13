; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gTransferBufferA = external dso_local local_unnamed_addr global [256 x i32], align 4
@gTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @QueueDmaTilemapRows(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %3, 255
  %7 = shl i32 %2, 1
  %8 = and i32 %7, 510
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  %11 = and i32 %4, 255
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 6, i32 7
  %14 = load i8, ptr @gTransferWriteIndex, align 1
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi i8 [ %28, %15 ], [ %14, %10 ]
  %17 = phi i32 [ %29, %15 ], [ 0, %10 ]
  %18 = phi i32 [ %30, %15 ], [ 0, %10 ]
  %19 = shl i32 %18, %13
  %20 = add i32 %17, %0
  %21 = add i32 %19, %1
  %22 = zext i8 %16 to i32
  %23 = getelementptr i32, ptr @gTransferBufferA, i32 %22
  store i32 %20, ptr %23, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store i32 %21, ptr %24, align 4
  %25 = getelementptr i32, ptr %23, i32 2
  store i32 %8, ptr %25, align 4
  %26 = icmp eq i8 %16, -4
  %27 = add i8 %16, 3
  %28 = select i1 %26, i8 0, i8 %27
  %29 = add nuw nsw i32 %17, %8
  %30 = add nuw nsw i32 %18, 1
  %31 = icmp eq i32 %30, %6
  br i1 %31, label %32, label %15

32:                                               ; preds = %15
  store i8 %28, ptr @gTransferWriteIndex, align 1
  br label %33

33:                                               ; preds = %32, %5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
