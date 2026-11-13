; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskTextVariables2BB0 = external dso_local global [0 x i32], align 4
@gMapInitializationWords = external dso_local global [0 x i32], align 4
@gSaveGroup2Block1DC80 = external dso_local global [0 x i8], align 1
@gGameFlags = external dso_local global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gSaveGroup2Block1CB20 = external dso_local global [0 x i8], align 1
@gTaskFlagsFirst = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskFlagsSecond = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ProduceSaveDataGroup2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gTaskTextVariables2BB0, ptr noundef %0, i32 noundef 16) #2
  %3 = getelementptr i8, ptr %0, i32 64
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gMapInitializationWords, ptr noundef %3, i32 noundef 104) #2
  %4 = getelementptr i8, ptr %0, i32 480
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gSaveGroup2Block1DC80, ptr noundef %4, i32 noundef 112) #2
  %5 = getelementptr i8, ptr %0, i32 928
  tail call arm_apcscc void @BiosCpuSet(ptr noundef getelementptr ([0 x i8], ptr @gGameFlags, i32 0, i32 8), ptr noundef %5, i32 noundef 67108886) #2
  %6 = getelementptr i8, ptr %0, i32 1016
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 32), ptr noundef %6, i32 noundef 120) #2
  %7 = getelementptr i8, ptr %0, i32 1496
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gSaveGroup2Block1CB20, ptr noundef %7, i32 noundef 64) #2
  %8 = getelementptr i8, ptr %0, i32 1752
  %9 = load i8, ptr @gTaskFlagsFirst, align 1
  store i8 %9, ptr %8, align 1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  %11 = getelementptr i8, ptr %0, i32 1753
  store i8 %10, ptr %11, align 1
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  %13 = getelementptr i8, ptr %0, i32 1754
  store i8 %12, ptr %13, align 1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  %15 = getelementptr i8, ptr %0, i32 1755
  store i8 %14, ptr %15, align 1
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  %17 = getelementptr i8, ptr %0, i32 1756
  store i8 %16, ptr %17, align 1
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  %19 = getelementptr i8, ptr %0, i32 1757
  store i8 %18, ptr %19, align 1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  %21 = getelementptr i8, ptr %0, i32 1758
  store i8 %20, ptr %21, align 1
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 7), align 1
  %23 = getelementptr i8, ptr %0, i32 1759
  store i8 %22, ptr %23, align 1
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), align 1
  %25 = getelementptr i8, ptr %0, i32 1760
  store i8 %24, ptr %25, align 1
  %26 = getelementptr i8, ptr %0, i32 1761
  %27 = load i8, ptr @gTaskFlagsSecond, align 1
  store i8 %27, ptr %26, align 1
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  %29 = getelementptr i8, ptr %0, i32 1762
  store i8 %28, ptr %29, align 1
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  %31 = getelementptr i8, ptr %0, i32 1763
  store i8 %30, ptr %31, align 1
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  %33 = getelementptr i8, ptr %0, i32 1764
  store i8 %32, ptr %33, align 1
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  %35 = getelementptr i8, ptr %0, i32 1765
  store i8 %34, ptr %35, align 1
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  %37 = getelementptr i8, ptr %0, i32 1766
  store i8 %36, ptr %37, align 1
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  %39 = getelementptr i8, ptr %0, i32 1767
  store i8 %38, ptr %39, align 1
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 7), align 1
  %41 = getelementptr i8, ptr %0, i32 1768
  store i8 %40, ptr %41, align 1
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 8), align 1
  %43 = getelementptr i8, ptr %0, i32 1769
  store i8 %42, ptr %43, align 1
  ret i32 1770
}

declare dso_local arm_apcscc void @BiosCpuFastSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
