; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsBlendAlphaStep(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetBlendEffect(i32 noundef 1) #2
  %3 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 12
  %4 = load i16, ptr %3, align 2
  %5 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 10
  %6 = load i16, ptr %5, align 2
  %7 = add i16 %6, %4
  store i16 %7, ptr %5, align 2
  %8 = lshr i16 %7, 8
  %9 = trunc i16 %8 to i8
  %10 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 13
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 11
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, %11
  store i16 %14, ptr %12, align 4
  %15 = lshr i16 %14, 8
  %16 = trunc i16 %15 to i8
  tail call arm_apcscc void @SetBlendCoefficients(i8 noundef zeroext %9, i8 noundef zeroext %16, i8 noundef zeroext 0) #2
  %17 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %18, -1
  store i8 %19, ptr %17, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8 1, ptr %0, align 4
  br label %27

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i16
  %26 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %22, %21
  ret i32 0
}

declare dso_local arm_apcscc void @SetBlendEffect(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBlendCoefficients(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
