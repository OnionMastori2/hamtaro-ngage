; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gDigitRenderResources = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @RenderAnimationClassDigits() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 31), align 2
  %2 = zext i16 %1 to i32
  %3 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %2, i32 noundef 100) #2
  %4 = getelementptr [0 x ptr], ptr @gDigitRenderResources, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef %5) #2
  %6 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %2, i32 noundef 100) #2
  %7 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %6, i32 noundef 10) #2
  %8 = getelementptr [0 x ptr], ptr @gDigitRenderResources, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 25, ptr noundef %9) #2
  %10 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %2, i32 noundef 10) #2
  %11 = getelementptr [0 x ptr], ptr @gDigitRenderResources, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef %12) #2
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @RenderRasterControlDigits() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 34), align 1
  %2 = zext i8 %1 to i32
  %3 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %2, i32 noundef 100) #2
  %4 = getelementptr [0 x ptr], ptr @gDigitRenderResources, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef %5) #2
  %6 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %2, i32 noundef 100) #2
  %7 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %6, i32 noundef 10) #2
  %8 = getelementptr [0 x ptr], ptr @gDigitRenderResources, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 25, ptr noundef %9) #2
  %10 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %2, i32 noundef 10) #2
  %11 = getelementptr [0 x ptr], ptr @gDigitRenderResources, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef %12) #2
  ret i32 0
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
