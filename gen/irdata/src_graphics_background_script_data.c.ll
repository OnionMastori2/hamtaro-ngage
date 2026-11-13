; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gInitialBackgroundCommandHandlers = dso_local local_unnamed_addr constant [61 x ptr] [ptr @BackgroundCommandReturn, ptr @BackgroundCommandWaitMotion, ptr @BackgroundCommandJump, ptr @BackgroundCommandSetField38, ptr @BackgroundCommandSetAccelerationY, ptr @BackgroundCommandSetAccelerationX, ptr @BackgroundCommandSetStepY, ptr @BackgroundCommandSetStepX, ptr @BackgroundCommandAddOffsetY, ptr @BackgroundCommandAddOffsetX, ptr @BackgroundCommandSetPositionY, ptr @BackgroundCommandSetPositionX, ptr @BackgroundCommandReserved8C, ptr @BackgroundCommandReserved8D, ptr @BackgroundCommandReserved8E, ptr @BackgroundCommandReserved8F, ptr @BackgroundCommandBeginRepeat, ptr @BackgroundCommandEndRepeat, ptr @BackgroundCommandSetDelay, ptr @BackgroundCommandWriteByte, ptr @BackgroundCommandWriteHalfword, ptr @BackgroundCommandDecompress, ptr @BackgroundCommandReserved96, ptr @BackgroundCommandDmaCopyRows64, ptr @BackgroundCommandStop98, ptr @BackgroundCommandBiosCopy, ptr @BackgroundCommandBiosCopyOffset, ptr @BackgroundCommandStop9B, ptr @BackgroundCommandQueueByteWrite, ptr @BackgroundCommandQueueHalfwordWrite, ptr @BackgroundCommandQueueCpuCopy, ptr @BackgroundCommandQueueCpuCopyOffset, ptr @BackgroundCommandCall, ptr @BackgroundCommandDmaCopyTilemapRectangle, ptr @BackgroundCommandSetRotation, ptr @BackgroundCommandSetField3E, ptr @BackgroundCommandSetField3F, ptr @BackgroundCommandAddRotation, ptr @BackgroundCommandSetScaleY, ptr @BackgroundCommandSetScaleX, ptr @BackgroundCommandSetField44, ptr @BackgroundCommandSetField40, ptr @BackgroundCommandSetField46, ptr @BackgroundCommandSetField42, ptr @BackgroundCommandAddScaleY, ptr @BackgroundCommandAddScaleX, ptr @BackgroundCommandSetAnchorX, ptr @BackgroundCommandSetAnchorY, ptr @BackgroundCommandJumpIfByteEqual, ptr @BackgroundCommandJumpIfByteLess, ptr @BackgroundCommandJumpIfByteGreater, ptr @BackgroundCommandSkipWord, ptr @BackgroundCommandSkipFiveBytes, ptr @BackgroundCommandSkipByteB5, ptr @BackgroundCommandSkipByteB6, ptr @BackgroundCommandSkipByteB7, ptr @BackgroundCommandSkipHalfword, ptr @BackgroundCommandSetField48, ptr @BackgroundCommandSetField4A, ptr @BackgroundCommandSetField4C, ptr @BackgroundCommandSetField4E], align 4

declare dso_local arm_apcscc i32 @BackgroundCommandReturn(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandWaitMotion(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandJump(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField38(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetAccelerationY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetAccelerationX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetStepY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetStepX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandAddOffsetY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandAddOffsetX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetPositionY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetPositionX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandReserved8C(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandReserved8D(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandReserved8E(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandReserved8F(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandBeginRepeat(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandEndRepeat(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetDelay(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandWriteByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandWriteHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandDecompress(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandReserved96(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandDmaCopyRows64(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandStop98(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandBiosCopy(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandBiosCopyOffset(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandStop9B(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandQueueByteWrite(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandQueueHalfwordWrite(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandQueueCpuCopy(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandQueueCpuCopyOffset(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandCall(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandDmaCopyTilemapRectangle(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetRotation(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField3E(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField3F(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandAddRotation(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetScaleY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetScaleX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField44(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField40(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField46(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField42(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandAddScaleY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandAddScaleX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetAnchorX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetAnchorY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandJumpIfByteEqual(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandJumpIfByteLess(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandJumpIfByteGreater(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSkipWord(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSkipFiveBytes(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSkipByteB5(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSkipByteB6(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSkipByteB7(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSkipHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField48(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField4A(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField4C(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @BackgroundCommandSetField4E(ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
