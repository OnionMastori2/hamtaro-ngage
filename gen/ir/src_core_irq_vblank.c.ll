; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gSoftResetDisabled = external dso_local local_unnamed_addr global i32, align 4
@gSoftResetRequested = external dso_local local_unnamed_addr global i32, align 4
@gFrameProcessing = external dso_local global i32, align 4
@gIrqUserCallback = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @HandleVblankIrq() local_unnamed_addr #0 {
  tail call arm_apcscc void @SyncAudioDmaAtVblankAsm() #2
  %1 = load i32, ptr @gSoftResetDisabled, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i32, ptr @gSoftResetRequested, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load volatile i16, ptr inttoptr (i32 67109168 to ptr), align 16
  %8 = and i16 %7, 15
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %3
  tail call arm_apcscc void @PauseAudioDma() #2
  tail call arm_apcscc void @BiosSoftReset(i32 noundef 252) #2
  br label %11

11:                                               ; preds = %11, %10
  br label %11

12:                                               ; preds = %6, %0
  %13 = load volatile i32, ptr @gFrameProcessing, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  store volatile ptr inttoptr (i32 50344064 to ptr), ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 117440512 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2080374528, ptr inttoptr (i32 67109084 to ptr), align 4
  %16 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  tail call arm_apcscc void @CommitVideoRegisters() #2
  %17 = load ptr, ptr @gIrqUserCallback, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call arm_apcscc void %17() #2
  br label %20

20:                                               ; preds = %19, %15
  tail call arm_apcscc void @FlushCpuTransfers() #2
  tail call arm_apcscc void @FlushDmaTransfers() #2
  br label %21

21:                                               ; preds = %20, %12
  tail call arm_apcscc void @ServiceAudioDriver() #2
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  %22 = load volatile i16, ptr inttoptr (i32 50364408 to ptr), align 8
  %23 = or i16 %22, 1
  store volatile i16 %23, ptr inttoptr (i32 50364408 to ptr), align 8
  store volatile i16 1, ptr inttoptr (i32 67109384 to ptr), align 8
  ret void
}

declare dso_local arm_apcscc void @SyncAudioDmaAtVblankAsm() local_unnamed_addr #1

declare dso_local arm_apcscc void @PauseAudioDma() local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosSoftReset(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @CommitVideoRegisters() local_unnamed_addr #1

declare dso_local arm_apcscc void @FlushCpuTransfers() local_unnamed_addr #1

declare dso_local arm_apcscc void @FlushDmaTransfers() local_unnamed_addr #1

declare dso_local arm_apcscc void @ServiceAudioDriver() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
