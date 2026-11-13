; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBootGate2170 = external dso_local local_unnamed_addr global i8, align 1
@gBootMode0786 = external dso_local local_unnamed_addr global i8, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateRenderXZMotion() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = icmp ne i8 %1, 0
  %3 = load i8, ptr @gBootGate2170, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %24

6:                                                ; preds = %0
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 24) #2
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i8 1, i8 2
  store i8 %9, ptr @gBootMode0786, align 1
  %10 = tail call arm_apcscc i32 @UpdateFollowerRenderXZMotion() #2
  %11 = load ptr, ptr @gRenderSlots, align 4
  %12 = load i8, ptr @gRenderClassSlots1, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr %struct.RenderSlot, ptr %11, i32 %13, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %11, i32 %13, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  store i32 %18, ptr %16, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %11, i32 %13, i32 6, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.RenderSlot, ptr %11, i32 %13, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4
  store i32 0, ptr %14, align 4
  store i32 0, ptr %19, align 4
  br label %24

24:                                               ; preds = %6, %0
  ret void
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @UpdateFollowerRenderXZMotion() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
