; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskContextHead = external dso_local local_unnamed_addr global ptr, align 4
@gTaskContextSentinel = external dso_local global %struct.TaskContext, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @RemoveTaskContext(ptr noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @gTaskContextHead, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.TaskContext, ptr %4, i32 0, i32 22
  br i1 %5, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %9, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  store ptr %11, ptr %9, align 4
  br label %14

14:                                               ; preds = %13, %7
  %15 = icmp eq ptr %11, @gTaskContextSentinel
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.TaskContext, ptr %11, i32 0, i32 21
  store ptr %9, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %14
  store ptr null, ptr %8, align 4
  store ptr @gTaskContextSentinel, ptr %10, align 4
  %19 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %0) #2
  %20 = load ptr, ptr @gTaskContextHead, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr @gTaskContextSentinel, ptr @gTaskContextHead, align 4
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
