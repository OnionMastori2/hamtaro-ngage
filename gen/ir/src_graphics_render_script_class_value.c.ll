; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationAddClassValue(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call arm_apcscc i32 @FindRenderClass(ptr noundef %0) #2
  %5 = and i32 %4, 255
  %6 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %5
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = getelementptr i8, ptr %3, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i16
  %14 = or disjoint i16 %10, %13
  %15 = load i16, ptr %6, align 2
  %16 = add i16 %14, %15
  store i16 %16, ptr %6, align 2
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr i8, ptr %17, i32 3
  store ptr %18, ptr %1, align 4
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %20 = load i16, ptr %19, align 4
  %21 = add i16 %20, 3
  store i16 %21, ptr %19, align 4
  ret i32 0
}

declare dso_local arm_apcscc i32 @FindRenderClass(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
