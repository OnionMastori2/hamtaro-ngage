; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.HeapBlock = type { i32, ptr, ptr }

@gFreeHeapHead = external dso_local local_unnamed_addr global ptr, align 4
@gUsedHeapHead = external dso_local local_unnamed_addr global ptr, align 4
@gHeapSentinel = external dso_local global %struct.HeapBlock, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc ptr @AllocateHeapRaw(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 3
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %0, -4
  %5 = add i32 %4, 16
  %6 = add i32 %0, 12
  %7 = select i1 %3, i32 %6, i32 %5
  %8 = load ptr, ptr @gFreeHeapHead, align 4
  %9 = load ptr, ptr @gUsedHeapHead, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %1, %21
  %12 = phi ptr [ %22, %21 ], [ %8, %1 ]
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %7, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.HeapBlock, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @gHeapSentinel
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call arm_apcscc void @CoalesceHeap() #2
  %20 = load ptr, ptr @gFreeHeapHead, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11

24:                                               ; preds = %11, %21, %1
  %25 = phi ptr [ null, %1 ], [ null, %21 ], [ %12, %11 ]
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %9, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %struct.HeapBlock, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @gHeapSentinel
  br i1 %30, label %31, label %26

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.HeapBlock, ptr %27, i32 0, i32 2
  %33 = add i32 %7, -12
  %34 = getelementptr inbounds %struct.HeapBlock, ptr %25, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr %35, ptr %32, align 4
  store i32 %33, ptr %35, align 4
  %36 = getelementptr %struct.HeapBlock, ptr %35, i32 1
  %37 = getelementptr inbounds %struct.HeapBlock, ptr %35, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.HeapBlock, ptr %35, i32 0, i32 2
  store ptr @gHeapSentinel, ptr %38, align 4
  %39 = load i32, ptr %25, align 4
  %40 = sub i32 %39, %7
  store i32 %40, ptr %25, align 4
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr i8, ptr %41, i32 %7
  store ptr %42, ptr %34, align 4
  %43 = load ptr, ptr %37, align 4
  ret ptr %43
}

declare dso_local arm_apcscc void @CoalesceHeap() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
