; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCall(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %12 = getelementptr i8, ptr %11, i32 5
  store ptr %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 5
  store i16 %15, ptr %13, align 4
  br label %53

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
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %34, %30
  %36 = getelementptr i8, ptr %27, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or disjoint i32 %35, %39
  %41 = getelementptr i8, ptr %27, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %43, 24
  %45 = or disjoint i32 %40, %44
  %46 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %26
  store i32 %45, ptr %46, align 4
  %47 = inttoptr i32 %45 to ptr
  store ptr %47, ptr %1, align 4
  %48 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, 5
  %51 = or i16 %50, -32768
  %52 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 %26
  store i16 %51, ptr %52, align 2
  store i16 0, ptr %48, align 4
  br label %53

53:                                               ; preds = %25, %10
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
