; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.DisplayStatus = type { i16 }

@gHblankIrqEnabled = external dso_local local_unnamed_addr global i8, align 1
@gDisplayStatus = external dso_local local_unnamed_addr global %struct.DisplayStatus, align 1
@gVcountIrqEnabled = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i32 %0 to i8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  store i8 %2, ptr @gHblankIrqEnabled, align 1
  %5 = load i16, ptr @gDisplayStatus, align 1
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %10, label %15

8:                                                ; preds = %1
  store i8 0, ptr @gHblankIrqEnabled, align 1
  %9 = load i16, ptr @gDisplayStatus, align 1
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i16 [ %9, %8 ], [ %5, %4 ]
  %12 = phi i16 [ 64, %8 ], [ 80, %4 ]
  %13 = and i16 %11, -209
  %14 = or disjoint i16 %13, %12
  store i16 %14, ptr @gDisplayStatus, align 1
  br label %15

15:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetVcountIrqEnabled(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %0, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  store i8 %0, ptr @gVcountIrqEnabled, align 1
  %5 = load i16, ptr @gDisplayStatus, align 1
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = and i16 %5, -225
  %10 = or disjoint i16 %9, 96
  store i16 %10, ptr @gDisplayStatus, align 1
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i16 [ %10, %8 ], [ %5, %4 ]
  %13 = icmp ult i8 %1, -96
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = zext i8 %1 to i16
  %16 = shl nuw i16 %15, 8
  %17 = and i16 %12, 255
  %18 = or disjoint i16 %17, %16
  br label %25

19:                                               ; preds = %11
  %20 = and i16 %12, 255
  br label %25

21:                                               ; preds = %2
  store i8 0, ptr @gVcountIrqEnabled, align 1
  %22 = load i16, ptr @gDisplayStatus, align 1
  %23 = and i16 %22, 31
  %24 = or disjoint i16 %23, 64
  br label %25

25:                                               ; preds = %14, %19, %21
  %26 = phi i16 [ %18, %14 ], [ %20, %19 ], [ %24, %21 ]
  store i16 %26, ptr @gDisplayStatus, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
