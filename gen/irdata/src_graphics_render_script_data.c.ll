; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRenderAnimationHandlerInitializers = dso_local local_unnamed_addr constant [82 x ptr] [ptr @AnimationReturn, ptr @AnimationSetScript, ptr @AnimationJump, ptr @AnimationSetOffset, ptr @AnimationBranchEqualByte, ptr @AnimationBranchLessByte, ptr @AnimationBranchGreaterByte, ptr @AnimationBeginRepeat, ptr @AnimationEndRepeat, ptr @AnimationCall, ptr @AnimationBranchEqualHalfword, ptr @AnimationBranchLessHalfword, ptr @AnimationBranchGreaterHalfword, ptr @AnimationInvokeCallback, ptr @AnimationBranchClassLess, ptr @AnimationBranchClassGreater, ptr @AnimationAdvance, ptr @AnimationReserved, ptr @AnimationWriteByte, ptr @AnimationWriteHalfword, ptr @AnimationWriteWord, ptr @AnimationIncrementByte, ptr @AnimationIncrementHalfword, ptr @AnimationIncrementWord, ptr @AnimationDecrementByte, ptr @AnimationDecrementHalfword, ptr @AnimationDecrementWord, ptr @AnimationAddByte, ptr @AnimationAddHalfword, ptr @AnimationAddWord, ptr @AnimationAddClassValue, ptr @AnimationReserved, ptr @AnimationSetFlags1, ptr @AnimationSetActive, ptr @AnimationSetFlags2, ptr @AnimationSetX, ptr @AnimationSetY, ptr @AnimationSetZ, ptr @AnimationSetRelativeX, ptr @AnimationSetRelativeY, ptr @AnimationSetRelativeZ, ptr @AnimationAddX, ptr @AnimationAddY, ptr @AnimationAddZ, ptr @AnimationSetVelocityX, ptr @AnimationSetVelocityY, ptr @AnimationSetVelocityZ, ptr @AnimationSetAccelerationX, ptr @AnimationSetAccelerationY, ptr @AnimationSetAccelerationZ, ptr @AnimationDisableAffine, ptr @AnimationSetScaleVelocityX, ptr @AnimationSetScaleVelocityY, ptr @AnimationSetScaleX, ptr @AnimationSetScaleY, ptr @AnimationOverrideFlags2, ptr @AnimationRestoreFlags2, ptr @AnimationSetXFraction, ptr @AnimationSetYFraction, ptr @AnimationSetZFraction, ptr @AnimationSetRotation, ptr @AnimationSetRotationVelocity, ptr @AnimationSetAffineField5E, ptr @AnimationSetAffineField5F, ptr @AnimationSetStateField38, ptr @AnimationSetAttr52, ptr @AnimationSetAttr54, ptr @AnimationSetOtherActive, ptr @AnimationEnableBit6, ptr @AnimationDisableBit6, ptr @AnimationSetFrame, ptr @AnimationSetDelay, ptr @AnimationQueueDma, ptr @AnimationQueueTileRows, ptr @AnimationDecompressWram, ptr @AnimationDecompressTileSet, ptr @AnimationQueueTileSet, ptr @AnimationSetTileSetFrame, ptr @AnimationReserved, ptr @AnimationReserved, ptr @AnimationStartSong, ptr @AnimationStopSong], align 4

declare dso_local arm_apcscc i32 @AnimationReturn(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetScript(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationJump(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetOffset(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchEqualByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchLessByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchGreaterByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBeginRepeat(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationEndRepeat(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCall(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchEqualHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchLessHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchGreaterHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationInvokeCallback(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchClassLess(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationBranchClassGreater(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAdvance(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationReserved(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationWriteByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationWriteHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationWriteWord(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationIncrementByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationIncrementHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationIncrementWord(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationDecrementByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationDecrementHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationDecrementWord(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAddByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAddHalfword(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAddWord(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAddClassValue(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetFlags1(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetActive(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetFlags2(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetZ(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetRelativeX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetRelativeY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetRelativeZ(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAddX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAddY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationAddZ(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetVelocityX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetVelocityY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetVelocityZ(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetAccelerationX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetAccelerationY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetAccelerationZ(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationDisableAffine(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetScaleVelocityX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetScaleVelocityY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetScaleX(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetScaleY(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationOverrideFlags2(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationRestoreFlags2(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetXFraction(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetYFraction(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetZFraction(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetRotation(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetRotationVelocity(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetAffineField5E(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetAffineField5F(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetStateField38(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetAttr52(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetAttr54(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetOtherActive(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationEnableBit6(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationDisableBit6(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetFrame(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetDelay(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationQueueDma(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationQueueTileRows(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationDecompressWram(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationDecompressTileSet(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationQueueTileSet(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationSetTileSetFrame(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationStartSong(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationStopSong(ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
