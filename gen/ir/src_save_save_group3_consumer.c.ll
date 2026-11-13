; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSaveGroup3Block1EE40 = external dso_local global [0 x i8], align 1
@gSaveGroup3Block3730 = external dso_local global [0 x i8], align 1
@gSaveGroup3Block3C50 = external dso_local global [0 x i8], align 1
@gSaveGroup3Byte35CC = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup3Byte379C = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup3Byte3D00 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConsumeSaveDataGroup3(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %0, ptr noundef nonnull @gSaveGroup3Block1EE40, i32 noundef 67108872) #2
  %3 = getelementptr i8, ptr %0, i32 32
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %3, ptr noundef nonnull @gSaveGroup3Block3730, i32 noundef 67108888) #2
  %4 = getelementptr i8, ptr %0, i32 128
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %4, ptr noundef nonnull @gSaveGroup3Block3C50, i32 noundef 67108894) #2
  %5 = getelementptr i8, ptr %0, i32 248
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr @gSaveGroup3Byte35CC, align 1
  %7 = getelementptr i8, ptr %0, i32 249
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr @gSaveGroup3Byte379C, align 1
  %9 = getelementptr i8, ptr %0, i32 250
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr @gSaveGroup3Byte3D00, align 1
  ret void
}

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
