; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptReturnStack = external dso_local global [16 x i32], align 4
@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gGameFlags = external dso_local global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gSaveGroup01Block1CC20 = external dso_local global [0 x i8], align 1
@gSaveGroup01Block37F0 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptCallDepth = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte3E30 = external dso_local local_unnamed_addr global i8, align 1
@gMapDescriptorBank = external dso_local local_unnamed_addr global i8, align 1
@gMapDescriptorIndex = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConsumeSaveDataGroups0And1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef %0, ptr noundef nonnull @gScriptReturnStack, i32 noundef 16) #2
  %3 = getelementptr i8, ptr %0, i32 64
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %3, ptr noundef nonnull @gSaveGroup01Block2EB0, i32 noundef 67109020) #2
  %4 = getelementptr i8, ptr %0, i32 688
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %4, ptr noundef nonnull @gAnimationClassValues, i32 noundef 67108880) #2
  %5 = getelementptr i8, ptr %0, i32 752
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %5, ptr noundef nonnull @gGameFlags, i32 noundef 67108866) #2
  %6 = getelementptr i8, ptr %0, i32 760
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %6, ptr noundef nonnull @gRasterScriptControlBytes, i32 noundef 67108872) #2
  %7 = getelementptr i8, ptr %0, i32 792
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %7, ptr noundef nonnull @gSaveGroup01Block1CC20, i32 noundef 67108872) #2
  %8 = getelementptr i8, ptr %0, i32 824
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %8, %2 ], [ %12, %9 ]
  %11 = phi i32 [ 0, %2 ], [ %15, %9 ]
  %12 = getelementptr i8, ptr %10, i32 1
  %13 = load i8, ptr %10, align 1
  %14 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %11
  store i8 %13, ptr %14, align 1
  %15 = add nuw nsw i32 %11, 1
  %16 = icmp eq i32 %15, 86
  br i1 %16, label %17, label %9

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %10, i32 2
  %19 = load i8, ptr %12, align 1
  store i8 %19, ptr @gScriptCallDepth, align 1
  %20 = getelementptr i8, ptr %10, i32 3
  %21 = load i8, ptr %18, align 1
  store i8 %21, ptr @gSaveGroup01Byte3E30, align 1
  %22 = getelementptr i8, ptr %10, i32 4
  %23 = load i8, ptr %20, align 1
  store i8 %23, ptr @gMapDescriptorBank, align 1
  %24 = getelementptr i8, ptr %10, i32 5
  %25 = load i8, ptr %22, align 1
  store i8 %25, ptr @gMapDescriptorIndex, align 1
  %26 = getelementptr i8, ptr %10, i32 6
  %27 = load i8, ptr %24, align 1
  store i8 %27, ptr @gSaveGroup01Byte21E0, align 1
  %28 = load i8, ptr %26, align 1
  store i8 %28, ptr @gSaveGroup01Byte1F60, align 1
  %29 = getelementptr i8, ptr %10, i32 7
  %30 = load i8, ptr %29, align 1
  store i8 %30, ptr @gSaveGroup01Byte1F90, align 1
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
