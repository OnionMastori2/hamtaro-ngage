; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.HeapBlock = type { i32, ptr, ptr }

@gUsedHeapHead = external dso_local local_unnamed_addr global ptr, align 4
@gHeapSentinel = external dso_local global %struct.HeapBlock, align 4
@gFreeHeapHead = external dso_local local_unnamed_addr global ptr, align 4
@gHeapDescriptors = external dso_local global [0 x %struct.HeapBlock], align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc i32 @FreeHeap(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gUsedHeapHead, align 4
  %3 = getelementptr inbounds %struct.HeapBlock, ptr %2, i32 0, i32 2
  %4 = getelementptr inbounds %struct.HeapBlock, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %22, label %11

7:                                                ; preds = %11
  %8 = getelementptr inbounds %struct.HeapBlock, ptr %14, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %14, %7 ], [ %2, %1 ]
  %13 = getelementptr inbounds %struct.HeapBlock, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, @gHeapSentinel
  %16 = ptrtoint ptr %14 to i32
  %17 = add i32 %16, -33695744
  %18 = icmp ult i32 %17, 120828
  %19 = and i1 %15, %18
  br i1 %19, label %7, label %61

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.HeapBlock, ptr %12, i32 0, i32 2
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %3, %1 ], [ %21, %20 ]
  %24 = phi ptr [ %2, %1 ], [ %14, %20 ]
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 12
  %27 = load ptr, ptr @gFreeHeapHead, align 4
  br label %28

28:                                               ; preds = %47, %22
  %29 = phi ptr [ %27, %22 ], [ %49, %47 ]
  %30 = icmp eq ptr %29, @gHeapSentinel
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.HeapBlock, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %29, align 4
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = load ptr, ptr %23, align 4
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = add i32 %34, %26
  store i32 %39, ptr %29, align 4
  br label %57

40:                                               ; preds = %31
  %41 = getelementptr i8, ptr %36, i32 %26
  %42 = icmp eq ptr %33, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.HeapBlock, ptr %29, i32 0, i32 1
  %45 = add i32 %34, %26
  store i32 %45, ptr %29, align 4
  %46 = load ptr, ptr %23, align 4
  store ptr %46, ptr %44, align 4
  br label %57

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.HeapBlock, ptr %29, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, @gHeapSentinel
  br i1 %50, label %51, label %28

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.HeapBlock, ptr %29, i32 0, i32 2
  %53 = tail call arm_apcscc ptr @FindHeapDescriptor(i32 noundef 1) #1
  store ptr %53, ptr %52, align 4
  store i32 %26, ptr %53, align 4
  %54 = load ptr, ptr %23, align 4
  %55 = getelementptr inbounds %struct.HeapBlock, ptr %53, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.HeapBlock, ptr %53, i32 0, i32 2
  store ptr @gHeapSentinel, ptr %56, align 4
  br label %57

57:                                               ; preds = %28, %51, %43, %38
  %58 = getelementptr inbounds %struct.HeapBlock, ptr %24, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  store ptr %59, ptr %23, align 4
  store ptr @gHeapSentinel, ptr %58, align 4
  %60 = load i32, ptr %24, align 4
  br label %61

61:                                               ; preds = %11, %57
  %62 = phi i32 [ %60, %57 ], [ 0, %11 ]
  ret i32 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef ptr @FindHeapDescriptor(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ @gHeapDescriptors, %1 ], [ %15, %14 ]
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.HeapBlock, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.HeapBlock, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %77, label %14

14:                                               ; preds = %10, %6, %2
  %15 = getelementptr %struct.HeapBlock, ptr %3, i32 1
  %16 = icmp ugt ptr %15, inttoptr (i32 33695743 to ptr)
  br i1 %16, label %17, label %2

17:                                               ; preds = %14
  %18 = icmp eq i32 %0, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @gFreeHeapHead, align 4
  %21 = icmp eq ptr %20, @gHeapSentinel
  br i1 %21, label %61, label %22

22:                                               ; preds = %19, %58
  %23 = phi ptr [ %59, %58 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.HeapBlock, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @gHeapSentinel
  br i1 %26, label %61, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.HeapBlock, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %23, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  br label %32

32:                                               ; preds = %50, %27
  %33 = phi ptr [ %25, %27 ], [ %52, %50 ]
  %34 = phi ptr [ %24, %27 ], [ %51, %50 ]
  %35 = getelementptr inbounds %struct.HeapBlock, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.HeapBlock, ptr %33, i32 0, i32 1
  %40 = load i32, ptr %33, align 4
  %41 = add i32 %40, %30
  store i32 %41, ptr %23, align 4
  store i32 0, ptr %33, align 4
  br label %54

42:                                               ; preds = %32
  %43 = load i32, ptr %33, align 4
  %44 = getelementptr i8, ptr %36, i32 %43
  %45 = icmp eq ptr %29, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.HeapBlock, ptr %33, i32 0, i32 1
  %48 = add i32 %43, %30
  store i32 %48, ptr %23, align 4
  store i32 0, ptr %33, align 4
  %49 = load ptr, ptr %47, align 4
  store ptr %49, ptr %28, align 4
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.HeapBlock, ptr %33, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, @gHeapSentinel
  br i1 %53, label %58, label %32

54:                                               ; preds = %46, %38
  %55 = phi ptr [ %47, %46 ], [ %39, %38 ]
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.HeapBlock, ptr %33, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  store ptr %57, ptr %34, align 4
  store ptr null, ptr %56, align 4
  br label %58

58:                                               ; preds = %50, %54
  %59 = phi ptr [ %23, %54 ], [ %25, %50 ]
  %60 = icmp eq ptr %59, @gHeapSentinel
  br i1 %60, label %61, label %22

61:                                               ; preds = %22, %58, %19
  br label %62

62:                                               ; preds = %61, %74
  %63 = phi ptr [ %75, %74 ], [ @gHeapDescriptors, %61 ]
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.HeapBlock, ptr %63, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.HeapBlock, ptr %63, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70, %66, %62
  %75 = getelementptr %struct.HeapBlock, ptr %63, i32 1
  %76 = icmp ugt ptr %75, inttoptr (i32 33695743 to ptr)
  br i1 %76, label %77, label %62

77:                                               ; preds = %10, %70, %74, %17
  %78 = phi ptr [ null, %17 ], [ null, %74 ], [ %63, %70 ], [ %3, %10 ]
  ret ptr %78
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @CoalesceHeap() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gFreeHeapHead, align 4
  %2 = icmp eq ptr %1, @gHeapSentinel
  br i1 %2, label %42, label %3

3:                                                ; preds = %0, %39
  %4 = phi ptr [ %40, %39 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.HeapBlock, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @gHeapSentinel
  br i1 %7, label %42, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.HeapBlock, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr i8, ptr %10, i32 %11
  br label %13

13:                                               ; preds = %8, %31
  %14 = phi ptr [ %6, %8 ], [ %33, %31 ]
  %15 = phi ptr [ %5, %8 ], [ %32, %31 ]
  %16 = getelementptr inbounds %struct.HeapBlock, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.HeapBlock, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %14, align 4
  %22 = add i32 %21, %11
  store i32 %22, ptr %4, align 4
  store i32 0, ptr %14, align 4
  br label %35

23:                                               ; preds = %13
  %24 = load i32, ptr %14, align 4
  %25 = getelementptr i8, ptr %17, i32 %24
  %26 = icmp eq ptr %10, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.HeapBlock, ptr %14, i32 0, i32 1
  %29 = add i32 %24, %11
  store i32 %29, ptr %4, align 4
  store i32 0, ptr %14, align 4
  %30 = load ptr, ptr %28, align 4
  store ptr %30, ptr %9, align 4
  br label %35

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.HeapBlock, ptr %14, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @gHeapSentinel
  br i1 %34, label %39, label %13

35:                                               ; preds = %27, %19
  %36 = phi ptr [ %28, %27 ], [ %20, %19 ]
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.HeapBlock, ptr %14, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  store ptr %38, ptr %15, align 4
  store ptr null, ptr %37, align 4
  br label %39

39:                                               ; preds = %31, %35
  %40 = phi ptr [ %4, %35 ], [ %6, %31 ]
  %41 = icmp eq ptr %40, @gHeapSentinel
  br i1 %41, label %42, label %3

42:                                               ; preds = %3, %39, %0
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
