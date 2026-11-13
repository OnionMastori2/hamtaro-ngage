; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationEndRepeat(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %26

10:                                               ; preds = %2
  tail call arm_apcscc void @QueueRenderError(i32 noundef 2) #2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  store ptr %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  br label %89

16:                                               ; preds = %6
  %17 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %23, i16 %4, i16 %22
  %25 = select i1 %23, i32 1, i32 2
  br label %26

26:                                               ; preds = %20, %16, %6
  %27 = phi i16 [ %8, %6 ], [ %18, %16 ], [ %24, %20 ]
  %28 = phi i32 [ 4, %6 ], [ 3, %16 ], [ %25, %20 ]
  %29 = add nsw i32 %28, -1
  %30 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 %29
  %31 = add i16 %27, -1
  store i16 %31, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %29
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %88, %33
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr i8, ptr %36, i32 1
  store ptr %37, ptr %1, align 4
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %39 = load i16, ptr %38, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %38, align 4
  br label %89

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add nsw i32 %28, -1
  %45 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 %44
  %46 = load i16, ptr %45, align 2
  %47 = icmp sgt i16 %46, -1
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %48
  %51 = add nsw i32 %28, -2
  %52 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 %51
  %53 = load i16, ptr %52, align 2
  %54 = icmp sgt i16 %53, -1
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = icmp eq i32 %51, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %55
  %58 = add nsw i32 %28, -3
  %59 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 %58
  %60 = load i16, ptr %59, align 2
  %61 = icmp sgt i16 %60, -1
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = icmp eq i32 %58, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %62
  %65 = add nsw i32 %28, -4
  %66 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 %65
  %67 = load i16, ptr %66, align 2
  %68 = icmp sgt i16 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = icmp eq i32 %65, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %69
  %72 = add nsw i32 %28, -5
  br label %73

73:                                               ; preds = %71, %64, %57, %50, %41
  %74 = phi i32 [ %44, %41 ], [ %51, %50 ], [ %58, %57 ], [ %65, %64 ], [ %72, %71 ]
  %75 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %74
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %48, %55, %62, %69, %73
  %78 = phi i32 [ %76, %73 ], [ %43, %69 ], [ %43, %62 ], [ %43, %55 ], [ %43, %48 ]
  %79 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %29
  %80 = load i32, ptr %79, align 4
  %81 = sub i32 %80, %78
  %82 = icmp ugt i32 %81, 32767
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = inttoptr i32 %80 to ptr
  store ptr %84, ptr %1, align 4
  %85 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %86 = tail call ptr asm "", "={r2},{r2}"(ptr nonnull %85) #3, !srcloc !4
  %87 = trunc i32 %81 to i16
  store i16 %87, ptr %86, align 2
  br label %89

88:                                               ; preds = %77
  tail call arm_apcscc void @QueueRenderError(i32 noundef 3) #2
  br label %35

89:                                               ; preds = %83, %35, %10
  ret i32 0
}

declare dso_local arm_apcscc void @QueueRenderError(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1579}
