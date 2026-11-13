; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gInitialEwramData = external dso_local constant [0 x i8], align 1
@gInitialEwramDataEnd = external dso_local constant [0 x i8], align 1
@gFrameProcessing = external dso_local global i32, align 4
@gCommunicationFlag2E30 = external dso_local local_unnamed_addr global i8, align 1
@gSoftResetRequested = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noreturn nounwind
define dso_local arm_apcscc void @game_main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  store ptr @irq_dispatch, ptr inttoptr (i32 50364412 to ptr), align 4
  store i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33554432 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063532032, ptr inttoptr (i32 67109084 to ptr), align 4
  %2 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50331648 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063589504, ptr inttoptr (i32 67109084 to ptr), align 4
  %3 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile ptr @gInitialEwramData, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33554432 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  %4 = sdiv i32 sub (i32 ptrtoint (ptr @gInitialEwramDataEnd to i32), i32 ptrtoint (ptr @gInitialEwramData to i32)), 4
  %5 = or i32 %4, -2080374784
  store volatile i32 %5, ptr inttoptr (i32 67109084 to ptr), align 4
  %6 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  call arm_apcscc void @InitializeHardware() #4
  call arm_apcscc void @InitializeAudioDriver() #4
  store volatile i16 1, ptr inttoptr (i32 67109384 to ptr), align 8
  call arm_apcscc void @ResetTransferBuffers() #4
  call arm_apcscc void @InitializeKeys() #4
  call arm_apcscc void @InitializeHeap(i32 noundef 120828) #4
  call arm_apcscc void @InitializeSram() #4
  call arm_apcscc void @InitializeMosaic() #4
  call arm_apcscc void @InitializeTaskContexts() #4
  call arm_apcscc void @InitializeCoreState() #4
  br label %7

7:                                                ; preds = %17, %0
  call arm_apcscc void @BiosVBlankIntrWait() #4
  store volatile i32 0, ptr @gFrameProcessing, align 4
  call arm_apcscc void @ReadKeys() #4
  %8 = load i8, ptr @gCommunicationFlag2E30, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call arm_apcscc i32 @UpdateCommunicationFrame() #4
  br label %12

12:                                               ; preds = %10, %7
  call arm_apcscc void @UpdateCoreState() #4
  call arm_apcscc void @UpdateBackgroundStates() #4
  call arm_apcscc void @UpdateRenderSlots() #4
  call arm_apcscc void @UpdateGraphicsScripts() #4
  call arm_apcscc void @UpdateMosaic() #4
  %13 = call arm_apcscc i32 @NextRandom() #4
  store volatile i32 1, ptr @gFrameProcessing, align 4
  %14 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 4) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 1, ptr @gSoftResetRequested, align 4
  br label %17

17:                                               ; preds = %16, %12
  br label %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @irq_dispatch() #2

declare dso_local arm_apcscc void @InitializeHardware() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeAudioDriver() local_unnamed_addr #2

declare dso_local arm_apcscc void @ResetTransferBuffers() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeKeys() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeHeap(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeSram() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeMosaic() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeTaskContexts() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeCoreState() local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosVBlankIntrWait() local_unnamed_addr #2

declare dso_local arm_apcscc void @ReadKeys() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @UpdateCommunicationFrame() local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateCoreState() local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateBackgroundStates() local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateRenderSlots() local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateGraphicsScripts() local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateMosaic() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @NextRandom() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

attributes #0 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
