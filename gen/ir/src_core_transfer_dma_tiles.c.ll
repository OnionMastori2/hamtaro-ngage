; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gTransferBufferA = external dso_local local_unnamed_addr global [256 x i32], align 4
@gTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @QueueDmaTileRows(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, 255
  %6 = shl i32 %2, 5
  %7 = and i32 %6, 8160
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr @gTransferWriteIndex, align 1
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i8 [ %22, %11 ], [ %10, %9 ]
  %13 = phi i32 [ %25, %11 ], [ %5, %9 ]
  %14 = phi i32 [ %23, %11 ], [ %1, %9 ]
  %15 = phi i32 [ %24, %11 ], [ %0, %9 ]
  %16 = zext i8 %12 to i32
  %17 = getelementptr i32, ptr @gTransferBufferA, i32 %16
  store i32 %15, ptr %17, align 4
  %18 = getelementptr i32, ptr %17, i32 1
  store i32 %14, ptr %18, align 4
  %19 = getelementptr i32, ptr %17, i32 2
  store i32 %7, ptr %19, align 4
  %20 = icmp eq i8 %12, -4
  %21 = add i8 %12, 3
  %22 = select i1 %20, i8 0, i8 %21
  %23 = add i32 %14, 1024
  %24 = add i32 %15, %7
  %25 = add nsw i32 %13, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %11

27:                                               ; preds = %11
  store i8 %22, ptr @gTransferWriteIndex, align 1
  br label %28

28:                                               ; preds = %27, %4
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
