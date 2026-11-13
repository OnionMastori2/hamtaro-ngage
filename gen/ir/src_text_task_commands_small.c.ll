; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2,0"
module asm ".align 2,0"
module asm ".align 2,0"
module asm ".align 2,0"
module asm ".align 2,0"
module asm ".align 2,0"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskFlagsSecond = external dso_local global [0 x i8], align 1
@gTaskFlagsFirst = external dso_local global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @TaskCommandCallSecondFlags(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = ptrtoint ptr %4 to i32
  %6 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %5, ptr %6, align 4
  store ptr @gTaskFlagsSecond, ptr %2, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @TaskCommandCallFirstFlags(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = ptrtoint ptr %4 to i32
  %6 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %5, ptr %6, align 4
  store ptr @gTaskFlagsFirst, ptr %2, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @TaskCommandSetFill3(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 7
  store i8 3, ptr %2, align 1
  %3 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1
  store ptr %5, ptr %3, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @TaskCommandSetFill2(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 7
  store i8 2, ptr %2, align 1
  %3 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1
  store ptr %5, ptr %3, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @TaskCommandSetFill1(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 7
  store i8 1, ptr %2, align 1
  %3 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1
  store ptr %5, ptr %3, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @TaskCommandSetDelay0(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 5
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1
  store ptr %5, ptr %3, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandSetDelay6(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef nonnull %0) #3
  br label %6

6:                                                ; preds = %5, %1
  store i8 6, ptr %2, align 1
  %7 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1
  store ptr %9, ptr %7, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandSetDelay2(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call arm_apcscc void @QueueTaskTextRowTransfer(ptr noundef nonnull %0) #3
  br label %6

6:                                                ; preds = %5, %1
  store i8 2, ptr %2, align 1
  %7 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1
  store ptr %9, ptr %7, align 4
  ret i32 1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
