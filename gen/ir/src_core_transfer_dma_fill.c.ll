; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gTransferAux = external dso_local global [32 x i32], align 4
@gTransferAuxWriteIndex = external dso_local local_unnamed_addr global i32, align 4
@gTransferBufferA = external dso_local global [256 x i32], align 4
@gTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @QueueDmaFill(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @gTransferAuxWriteIndex, align 4
  %5 = shl i32 %4, 2
  %6 = add i32 %5, ptrtoint (ptr @gTransferAux to i32)
  %7 = inttoptr i32 %6 to ptr
  store i32 %0, ptr %7, align 4
  %8 = add i32 %4, 1
  %9 = and i32 %8, 31
  store i32 %9, ptr @gTransferAuxWriteIndex, align 4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  %12 = load i8, ptr @gTransferWriteIndex, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 2
  %15 = add i32 %14, ptrtoint (ptr @gTransferBufferA to i32)
  %16 = add i32 %5, add (i32 ptrtoint (ptr @gTransferAux to i32), i32 -2147483648)
  %17 = inttoptr i32 %15 to ptr
  store i32 %16, ptr %17, align 4
  %18 = load i8, ptr @gTransferWriteIndex, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr i32, ptr @gTransferBufferA, i32 %19
  %21 = getelementptr i32, ptr %20, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr i32, ptr %20, i32 2
  store i32 %2, ptr %22, align 4
  %23 = icmp eq i8 %18, -4
  %24 = add i8 %18, 3
  %25 = select i1 %23, i8 0, i8 %24
  store i8 %25, ptr @gTransferWriteIndex, align 1
  br label %26

26:                                               ; preds = %11, %3
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
