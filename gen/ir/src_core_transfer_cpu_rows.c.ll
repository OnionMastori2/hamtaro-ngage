; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTransferBufferB = external dso_local local_unnamed_addr global [256 x i32], align 4
@gCpuTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @QueueCpuTileRows(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i8 %2 to i32
  %6 = shl nuw nsw i32 %5, 5
  %7 = zext i8 %3 to i32
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr @gCpuTransferWriteIndex, align 1
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %25, %11 ], [ %0, %9 ]
  %13 = phi i32 [ %28, %11 ], [ 0, %9 ]
  %14 = phi i32 [ %27, %11 ], [ %1, %9 ]
  %15 = phi i8 [ %22, %11 ], [ %10, %9 ]
  %16 = add i8 %15, 1
  %17 = zext i8 %15 to i32
  %18 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %17
  store i32 %12, ptr %18, align 4
  %19 = add i8 %15, 2
  %20 = zext i8 %16 to i32
  %21 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %20
  store i32 %14, ptr %21, align 4
  %22 = add i8 %15, 3
  %23 = zext i8 %19 to i32
  %24 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %23
  store i32 %6, ptr %24, align 4
  %25 = add i32 %12, 1024
  %26 = shl nuw nsw i32 %13, 10
  %27 = add i32 %26, %1
  %28 = add nuw nsw i32 %13, 1
  %29 = icmp eq i32 %28, %7
  br i1 %29, label %30, label %11

30:                                               ; preds = %11
  store i8 %22, ptr @gCpuTransferWriteIndex, align 1
  br label %31

31:                                               ; preds = %30, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @QueueCpuTilemapRows(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = zext i8 %2 to i32
  %7 = shl nuw nsw i32 %6, 1
  %8 = zext i8 %3 to i32
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr @gCpuTransferWriteIndex, align 1
  %12 = icmp eq i8 %4, 0
  %13 = select i1 %12, i32 6, i32 7
  %14 = select i1 %12, i32 64, i32 128
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi i32 [ %0, %10 ], [ %30, %15 ]
  %17 = phi i32 [ 0, %10 ], [ %32, %15 ]
  %18 = phi i32 [ %1, %10 ], [ %31, %15 ]
  %19 = phi i8 [ %11, %10 ], [ %26, %15 ]
  %20 = add i8 %19, 1
  %21 = zext i8 %19 to i32
  %22 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %21
  store i32 %16, ptr %22, align 4
  %23 = add i8 %19, 2
  %24 = zext i8 %20 to i32
  %25 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %24
  store i32 %18, ptr %25, align 4
  %26 = add i8 %19, 3
  %27 = zext i8 %23 to i32
  %28 = getelementptr [256 x i32], ptr @gTransferBufferB, i32 0, i32 %27
  store i32 %7, ptr %28, align 4
  %29 = shl nuw nsw i32 %17, %13
  %30 = add i32 %16, %14
  %31 = add i32 %29, %1
  %32 = add nuw nsw i32 %17, 1
  %33 = icmp eq i32 %32, %8
  br i1 %33, label %34, label %15

34:                                               ; preds = %15
  store i8 %26, ptr @gCpuTransferWriteIndex, align 1
  br label %35

35:                                               ; preds = %34, %5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
