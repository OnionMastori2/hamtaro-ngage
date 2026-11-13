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
define dso_local arm_apcscc void @ConsumeSaveDataGroup2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef %0, ptr noundef nonnull @gTaskTextVariables2BB0, i32 noundef 16) #2
  %3 = getelementptr i8, ptr %0, i32 64
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef %3, ptr noundef nonnull @gMapInitializationWords, i32 noundef 104) #2
  %4 = getelementptr i8, ptr %0, i32 480
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef %4, ptr noundef nonnull @gSaveGroup2Block1DC80, i32 noundef 112) #2
  %5 = getelementptr i8, ptr %0, i32 928
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %5, ptr noundef getelementptr ([0 x i8], ptr @gGameFlags, i32 0, i32 8), i32 noundef 67108886) #2
  %6 = getelementptr i8, ptr %0, i32 1016
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef %6, ptr noundef getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 32), i32 noundef 120) #2
  %7 = getelementptr i8, ptr %0, i32 1496
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef %7, ptr noundef nonnull @gSaveGroup2Block1CB20, i32 noundef 64) #2
  %8 = getelementptr i8, ptr %0, i32 1752
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr @gTaskFlagsFirst, align 1
  %10 = getelementptr i8, ptr %0, i32 1753
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  %12 = getelementptr i8, ptr %0, i32 1754
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  %14 = getelementptr i8, ptr %0, i32 1755
  %15 = load i8, ptr %14, align 1
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  %16 = getelementptr i8, ptr %0, i32 1756
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  %18 = getelementptr i8, ptr %0, i32 1757
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  %20 = getelementptr i8, ptr %0, i32 1758
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  %22 = getelementptr i8, ptr %0, i32 1759
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 7), align 1
  %24 = getelementptr i8, ptr %0, i32 1760
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), align 1
  %26 = getelementptr i8, ptr %0, i32 1761
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr @gTaskFlagsSecond, align 1
  %28 = getelementptr i8, ptr %0, i32 1762
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  %30 = getelementptr i8, ptr %0, i32 1763
  %31 = load i8, ptr %30, align 1
  store i8 %31, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  %32 = getelementptr i8, ptr %0, i32 1764
  %33 = load i8, ptr %32, align 1
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  %34 = getelementptr i8, ptr %0, i32 1765
  %35 = load i8, ptr %34, align 1
  store i8 %35, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  %36 = getelementptr i8, ptr %0, i32 1766
  %37 = load i8, ptr %36, align 1
  store i8 %37, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  %38 = getelementptr i8, ptr %0, i32 1767
  %39 = load i8, ptr %38, align 1
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  %40 = getelementptr i8, ptr %0, i32 1768
  %41 = load i8, ptr %40, align 1
  store i8 %41, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 7), align 1
  %42 = getelementptr i8, ptr %0, i32 1769
  %43 = load i8, ptr %42, align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 8), align 1
  ret void
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
