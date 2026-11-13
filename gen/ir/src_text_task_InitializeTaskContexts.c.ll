; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskContextSentinel = external dso_local global %struct.TaskContext, align 4
@gTaskContextHead = external dso_local local_unnamed_addr global ptr, align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gInitialTaskFlagsFirst = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gTaskFlagsFirst = external dso_local local_unnamed_addr global [0 x i8], align 1
@gInitialTaskFlagsSecond = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gTaskFlagsSecond = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @InitializeTaskContexts() local_unnamed_addr #0 {
  store ptr @gTaskContextSentinel, ptr @gTaskContextHead, align 4
  store ptr @gDefaultTaskContextScript, ptr getelementptr inbounds (%struct.TaskContext, ptr @gTaskContextSentinel, i32 0, i32 13), align 4
  store ptr null, ptr getelementptr inbounds (%struct.TaskContext, ptr @gTaskContextSentinel, i32 0, i32 21), align 4
  store ptr @gTaskContextSentinel, ptr getelementptr inbounds (%struct.TaskContext, ptr @gTaskContextSentinel, i32 0, i32 22), align 4
  %1 = load i8, ptr @gInitialTaskFlagsFirst, align 1
  store i8 %1, ptr @gTaskFlagsFirst, align 1
  %2 = load i8, ptr @gInitialTaskFlagsSecond, align 1
  store i8 %2, ptr @gTaskFlagsSecond, align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 1), align 1
  store i8 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 1), align 1
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 2), align 1
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 2), align 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 3), align 1
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 3), align 1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 4), align 1
  store i8 %9, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 4), align 1
  store i8 %10, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 5), align 1
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 5), align 1
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 6), align 1
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 6), align 1
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 7), align 1
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 7), align 1
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 7), align 1
  store i8 %16, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 7), align 1
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsFirst, i32 0, i32 8), align 1
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), align 1
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gInitialTaskFlagsSecond, i32 0, i32 8), align 1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 8), align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
