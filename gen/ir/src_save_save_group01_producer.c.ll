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
define dso_local arm_apcscc noundef i32 @ProduceSaveDataGroups0And1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gScriptReturnStack, ptr noundef %0, i32 noundef 16) #2
  %3 = getelementptr i8, ptr %0, i32 64
  tail call arm_apcscc void @BiosCpuSet(ptr noundef nonnull @gSaveGroup01Block2EB0, ptr noundef %3, i32 noundef 67109020) #2
  %4 = getelementptr i8, ptr %0, i32 688
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gAnimationClassValues, ptr noundef %4, i32 noundef 16) #2
  %5 = getelementptr i8, ptr %0, i32 752
  tail call arm_apcscc void @BiosCpuSet(ptr noundef nonnull @gGameFlags, ptr noundef %5, i32 noundef 67108866) #2
  %6 = load i8, ptr %5, align 1
  %7 = or i8 %6, 8
  store i8 %7, ptr %5, align 1
  %8 = getelementptr i8, ptr %0, i32 760
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gRasterScriptControlBytes, ptr noundef %8, i32 noundef 8) #2
  %9 = getelementptr i8, ptr %0, i32 792
  tail call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull @gSaveGroup01Block1CC20, ptr noundef %9, i32 noundef 8) #2
  %10 = getelementptr i8, ptr %0, i32 824
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi ptr [ %10, %2 ], [ %16, %11 ]
  %13 = phi i32 [ 0, %2 ], [ %17, %11 ]
  %14 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %12, i32 1
  store i8 %15, ptr %12, align 1
  %17 = add nuw nsw i32 %13, 1
  %18 = icmp eq i32 %17, 86
  br i1 %18, label %19, label %11

19:                                               ; preds = %11
  %20 = load i8, ptr @gScriptCallDepth, align 1
  %21 = getelementptr i8, ptr %12, i32 2
  store i8 %20, ptr %16, align 1
  %22 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %23 = getelementptr i8, ptr %12, i32 3
  store i8 %22, ptr %21, align 1
  %24 = load i8, ptr @gMapDescriptorBank, align 1
  %25 = getelementptr i8, ptr %12, i32 4
  store i8 %24, ptr %23, align 1
  %26 = load i8, ptr @gMapDescriptorIndex, align 1
  %27 = getelementptr i8, ptr %12, i32 5
  store i8 %26, ptr %25, align 1
  %28 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %29 = getelementptr i8, ptr %12, i32 6
  store i8 %28, ptr %27, align 1
  %30 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  store i8 %30, ptr %29, align 1
  %31 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %32 = getelementptr i8, ptr %12, i32 7
  store i8 %31, ptr %32, align 1
  ret i32 917
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
