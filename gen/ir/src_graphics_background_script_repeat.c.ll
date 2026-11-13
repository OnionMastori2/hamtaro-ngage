; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandBeginRepeat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 10
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.BackgroundRenderState, ptr %0, i32 0, i32 10, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.BackgroundRenderState, ptr %0, i32 0, i32 10, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.BackgroundRenderState, ptr %0, i32 0, i32 10, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 3, i32 4
  br label %21

21:                                               ; preds = %16, %8, %12, %2
  %22 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 2, %12 ], [ %20, %16 ]
  %23 = getelementptr %struct.BackgroundRenderState, ptr %0, i32 0, i32 10, i32 %22
  store i8 %4, ptr %23, align 1
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr i8, ptr %24, i32 1
  store ptr %25, ptr %1, align 4
  %26 = getelementptr %struct.BackgroundRenderState, ptr %0, i32 0, i32 7, i32 %22
  store ptr %25, ptr %26, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef nonnull %0, ptr noundef nonnull %1) #3
  ret i32 0
}

declare dso_local arm_apcscc void @CommitBackgroundScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandEndRepeat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 10
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i8 [ 3, %2 ], [ %14, %4 ]
  %6 = sext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp ugt i8 %8, 1
  %10 = add i8 %5, -1
  %11 = lshr i8 %10, 6
  %12 = and i8 %11, 2
  %13 = xor i8 %12, 2
  %14 = select i1 %9, i8 %5, i8 %10
  %15 = select i1 %9, i8 3, i8 %13
  switch i8 %15, label %31 [
    i8 0, label %16
    i8 2, label %4
    i8 3, label %24
  ]

16:                                               ; preds = %4, %24
  %17 = phi i32 [ 1, %24 ], [ 0, %4 ]
  %18 = tail call i32 asm "", "={r12},{r12}"(i32 %17) #4, !srcloc !4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = sext i8 %14 to i32
  %22 = getelementptr %struct.BackgroundRenderState, ptr %0, i32 0, i32 7, i32 %21
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %1, align 4
  br label %31

24:                                               ; preds = %4
  %25 = getelementptr i8, ptr %3, i32 %6
  %26 = add i8 %8, -1
  store i8 %26, ptr %25, align 1
  br label %16

27:                                               ; preds = %16
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef nonnull %0, ptr noundef %1) #3
  %28 = tail call i8 @llvm.smax.i8(i8 %14, i8 0)
  %29 = zext nneg i8 %28 to i32
  %30 = getelementptr i8, ptr %3, i32 %29
  store i8 0, ptr %30, align 1
  br label %31

31:                                               ; preds = %4, %20, %27
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandSetDelay(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  store ptr %11, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #3
  %12 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 4
  store i16 %10, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1054}
