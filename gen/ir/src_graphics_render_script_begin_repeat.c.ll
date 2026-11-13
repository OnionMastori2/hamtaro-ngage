; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBeginRepeat(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %25, label %16

10:                                               ; preds = %2
  tail call arm_apcscc void @QueueRenderError(i32 noundef 1) #2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 2
  store ptr %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 2
  store i16 %15, ptr %13, align 4
  br label %38

16:                                               ; preds = %6
  %17 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %23, i32 2, i32 3
  br label %25

25:                                               ; preds = %20, %16, %6
  %26 = phi i32 [ 0, %6 ], [ 1, %16 ], [ %24, %20 ]
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr i8, ptr %27, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i16
  %31 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 %26
  store i16 %30, ptr %31, align 2
  %32 = getelementptr i8, ptr %27, i32 2
  store ptr %32, ptr %1, align 4
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 2
  store i16 %35, ptr %33, align 4
  %36 = ptrtoint ptr %32 to i32
  %37 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %26
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %25, %10
  ret i32 0
}

declare dso_local arm_apcscc void @QueueRenderError(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
