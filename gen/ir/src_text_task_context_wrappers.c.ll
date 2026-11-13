; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureTaskContext(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = zext i8 %1 to i32
  %11 = zext i8 %2 to i32
  %12 = zext i8 %3 to i32
  %13 = zext i8 %4 to i32
  %14 = zext i8 %5 to i32
  %15 = zext i8 %6 to i32
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %0, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef 0, i32 noundef %7, i32 noundef %8) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureTaskContextExtended(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = zext i8 %1 to i32
  %11 = zext i8 %2 to i32
  %12 = zext i8 %3 to i32
  %13 = zext i8 %4 to i32
  %14 = zext i8 %5 to i32
  %15 = zext i8 %6 to i32
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %0, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef 0, i32 noundef %7, i32 noundef %8) #2
  ret void
}

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = zext i8 %1 to i32
  %11 = zext i8 %2 to i32
  %12 = zext i8 %3 to i32
  %13 = zext i8 %4 to i32
  %14 = zext i8 %5 to i32
  %15 = zext i8 %6 to i32
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %0, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef 8, i32 noundef %7, i32 noundef %8) #2
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
