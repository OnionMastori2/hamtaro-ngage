; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskContextHead = external dso_local global ptr, align 4
@gTaskContextSentinel = external dso_local global %struct.TaskContext, align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ @gTaskContextHead, %0 ], [ %5, %1 ]
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @gTaskContextSentinel
  %5 = getelementptr inbounds %struct.TaskContext, ptr %3, i32 0, i32 22
  br i1 %4, label %6, label %1

6:                                                ; preds = %1
  %7 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef 52) #2
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 15
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 13
  store ptr @gDefaultTaskContextScript, ptr %11, align 4
  %12 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 21
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 22
  store ptr @gTaskContextSentinel, ptr %13, align 4
  store ptr %7, ptr %2, align 4
  br label %14

14:                                               ; preds = %6, %9
  ret ptr %7
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
