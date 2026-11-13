; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderAnimation(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = ptrtoint ptr %1 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 16
  store i16 0, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 23, i32 3
  store i8 0, ptr %7, align 1
  %8 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 2, i32 0
  store i32 0, ptr %8, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 21, i32 0
  store i16 0, ptr %9, align 2
  %10 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 2, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 21, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 2, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 21, i32 2
  store i16 0, ptr %13, align 2
  %14 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 2, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 21, i32 3
  store i16 0, ptr %15, align 2
  %16 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 23) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 23, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, -65
  store i8 %21, ptr %19, align 1
  br label %26

22:                                               ; preds = %2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 0) #2
  %23 = getelementptr %struct.RenderSlot, ptr %3, i32 %0, i32 23, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = or i8 %24, 64
  store i8 %25, ptr %23, align 1
  br label %26

26:                                               ; preds = %22, %18
  ret void
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetRenderAnimationByPointer(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = ptrtoint ptr %1 to i32
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  store i16 0, ptr %5, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %6, align 1
  %7 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 0
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  store i16 0, ptr %8, align 2
  %9 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  store i16 0, ptr %12, align 2
  %13 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  store i16 0, ptr %14, align 2
  %15 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 23) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, -65
  store i8 %20, ptr %18, align 1
  br label %25

21:                                               ; preds = %2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 0) #2
  %22 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = or i8 %23, 64
  store i8 %24, ptr %22, align 1
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
