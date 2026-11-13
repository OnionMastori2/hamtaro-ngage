; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptCommandInitialized = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1
@gBootGate2170 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1FB8 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptSetRenderClasses(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gRenderClassSlots0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr @gRenderClassSlots1, align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr @gRenderClassSlots2, align 1
  %8 = load i8, ptr %6, align 1
  store i8 %8, ptr @gRenderClassSlots3, align 1
  store i32 4, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptWaitForByte1FA8(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr @gScriptCommandInitialized, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  tail call arm_apcscc void @ResetCoreMotionFlags() #4
  %5 = load i8, ptr @gScriptCommandInitialized, align 1
  %6 = add i8 %5, 1
  store i8 %6, ptr @gScriptCommandInitialized, align 1
  br label %7

7:                                                ; preds = %4, %1
  tail call arm_apcscc void @AdvanceCoreRenderMotion() #4
  %8 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %9 = icmp eq i8 %8, 16
  %10 = and i8 %8, 3
  %11 = icmp eq i8 %10, 2
  %12 = or i1 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 18), align 1
  br label %15

14:                                               ; preds = %7
  store i8 1, ptr @gScriptYielded, align 1
  br label %15

15:                                               ; preds = %13, %14
  ret void
}

declare dso_local arm_apcscc void @ResetCoreMotionFlags() local_unnamed_addr #2

declare dso_local arm_apcscc void @AdvanceCoreRenderMotion() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptRebuildFollowerRoute(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @RebuildFollowerRenderXZRoute() #4
  store i32 0, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @RebuildFollowerRenderXZRoute() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptSetBootGateAndByte1FB8(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  store i8 1, ptr @gBootGate2170, align 1
  %2 = load i8, ptr %0, align 1
  store i8 %2, ptr @gCoreScriptByte1FB8, align 1
  store i32 1, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptChangeSaveByte21E0Bits(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %8 = or i8 %7, %2
  br label %13

9:                                                ; preds = %1
  %10 = xor i8 %2, -1
  %11 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %12 = and i8 %11, %10
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i8 [ %12, %9 ], [ %8, %6 ]
  store i8 %14, ptr @gSaveGroup01Byte21E0, align 1
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
