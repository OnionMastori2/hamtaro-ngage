; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureAudioPlayer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 255
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1752395091
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = icmp ugt i32 %4, 16
  %12 = trunc i32 %2 to i8
  %13 = select i1 %11, i8 16, i8 %12
  store i32 1752395092, ptr %7, align 4
  tail call arm_apcscc void @ClearAudioTrackIndirect(ptr noundef %0) #2
  %14 = ptrtoint ptr %1 to i32
  %15 = getelementptr i32, ptr %0, i32 11
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 8
  store i8 %13, ptr %16, align 1
  %17 = getelementptr i32, ptr %0, i32 1
  store i32 -2147483648, ptr %17, align 4
  %18 = icmp eq i8 %13, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %10, %19
  %20 = phi i8 [ %22, %19 ], [ %13, %10 ]
  %21 = phi ptr [ %23, %19 ], [ %1, %10 ]
  store i8 0, ptr %21, align 1
  %22 = add i8 %20, -1
  %23 = getelementptr i8, ptr %21, i32 80
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %10
  %26 = getelementptr i32, ptr %7, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr i32, ptr %0, i32 14
  store i32 %27, ptr %30, align 4
  %31 = getelementptr i32, ptr %7, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i32, ptr %0, i32 15
  store i32 %32, ptr %33, align 4
  store i32 0, ptr %26, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = ptrtoint ptr %0 to i32
  %36 = getelementptr i32, ptr %7, i32 9
  store i32 %35, ptr %36, align 4
  store i32 ptrtoint (ptr @ProcessAudioPlayerAsm to i32), ptr %26, align 4
  store i32 1752395091, ptr %7, align 4
  %37 = getelementptr i32, ptr %0, i32 13
  store i32 1752395091, ptr %37, align 4
  br label %38

38:                                               ; preds = %6, %34, %3
  ret void
}

declare dso_local arm_apcscc void @ClearAudioTrackIndirect(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ProcessAudioPlayerAsm(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
