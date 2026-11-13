; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioSongCallbacks = type { [3 x ptr] }
%struct.AudioPlayerCallbacks = type { [2 x ptr] }
%struct.AudioAllCallbacks = type { [2 x ptr] }

@gBootScriptHandlers = dso_local local_unnamed_addr constant [97 x ptr] [ptr @AdvanceScript, ptr @EndScriptFrame, ptr @ScriptWaitFrames, ptr @ScriptWaitInput, ptr @ResumeScriptHandler, ptr @StopScriptHandler, ptr @MainScriptDecompressStaged, ptr @MainScriptDecompressPointer, ptr @MainScriptCopyDma, ptr @MainScriptCopyDmaQueued, ptr @MainScriptStartSong, ptr @MainScriptStopSong, ptr @MainScriptSetCursor, ptr @MainScriptChangeMapIndexAndSave, ptr @MainScriptChangeMapBank, ptr @MainScriptConfigureRenderSlot, ptr @MainScriptSetRenderAnimation, ptr @MainScriptSetRenderField60AndAnimation, ptr @MainScriptSetBackgroundScript, ptr @MainScriptSetGraphicsScript, ptr @MainScriptConfigureVideoBackground, ptr @MainScriptSetVideoBackgroundOffset, ptr @MainScriptEnableDisplayLayers, ptr @MainScriptDisableDisplayLayers, ptr @MainScriptFillMemory, ptr @MainScriptSetTaskContextEnabled, ptr @MainScriptConfigureTaskContextAndScript, ptr @MainScriptSetTaskContextScript, ptr @MainScriptInvokeCallback, ptr @MainScriptJumpByHalf1FBC, ptr @MainScriptCall, ptr @MainScriptReturn, ptr @MainScriptConfigure065D8, ptr @MainScriptWaitForByte1FA8, ptr @MainScriptConditionalCursor084C0, ptr @MainScriptInvoke086AC, ptr @MainScriptAwaitWordChoice, ptr @MainScriptStoreIndirectCallback1FC0, ptr @MainScriptSetActorContext, ptr @MainScriptStopAndYield, ptr @MainScriptReadPointerByte, ptr @MainScriptReadControlByte, ptr @MainScriptReadClassHalfword, ptr @MainScriptSetResultHalfword, ptr @MainScriptSetBackgroundBounds, ptr @MainScriptWriteControlByte, ptr @MainScriptWriteClassHalfword, ptr @MainScriptCopyValuesByWidth, ptr @MainScriptJumpValuesEqual, ptr @MainScriptJumpValuesAtLeast, ptr @MainScriptJumpValuesBelow, ptr @MainScriptJumpGameFlag, ptr @MainScriptDecompressRows, ptr @MainScriptDecompressRowsCpu, ptr @MainScriptAllocateHeapVariable, ptr @MainScriptFreeHeapVariable, ptr @MainScriptSetTaskResourceIndex, ptr @MainScriptSetRenderPriorityBits, ptr @MainScriptSetRenderPosition, ptr @MainScriptSetRenderField60, ptr @MainScriptJumpRenderAnimationBase, ptr @MainScriptRebuildFollowerRoute, ptr @MainScriptSetRenderField62, ptr @MainScriptFadePhaseToCenter, ptr @MainScriptFadePhaseByStep, ptr @MainScriptCopyPointerBytes, ptr @MainScriptCopyPointerHalfwords, ptr @MainScriptLoadSaveDataGroup, ptr @MainScriptSetRenderVector24, ptr @MainScriptConfigureWordChoice, ptr @MainScriptSetGameFlag, ptr @MainScriptConfigureSquareMosaic, ptr @MainScriptConfigureSharedMosaic, ptr @MainScriptSetSaveGroup01Bytes, ptr @MainScriptRepositionRenderOrder, ptr @MainScriptSetRenderModeBits, ptr @MainScriptSetVideoMode, ptr @MainScriptStoreDestinationWord21F0, ptr @MainScriptSetIrqUserCallback, ptr @MainScriptSetRenderBit5, ptr @MainScriptStoreRandomRange, ptr @MainScriptDispatchArgumentWord, ptr @MainScriptSetForcedBlankAndYield, ptr @MainScriptWriteVariableWord, ptr @MainScriptSetTaskField5, ptr @MainScriptSetBootGateAndByte1FB8, ptr @MainScriptChangeAudioPlayer, ptr @MainScriptSelectAudioPlayers, ptr @MainScriptWriteSaveRecord, ptr @MainScriptSetRenderClasses, ptr @MainScriptResetCoreState, ptr @MainScriptSetWordChoiceOptionFlags, ptr @MainScriptSetAudioParameters, ptr @MainScriptChangeSaveByte21E0Bits, ptr @MainScriptWaitForSong, ptr @MainScriptWriteSaveDataGroups, ptr @MainScriptLoadSaveDataGroups], align 4
@gAudioSongCallbacksE758 = dso_local local_unnamed_addr constant %struct.AudioSongCallbacks { [3 x ptr] [ptr @StartSong, ptr @StartSongOrChange, ptr @StartSongOrContinue] }, align 4
@gAudioPlayerCallbacksE764 = dso_local local_unnamed_addr constant %struct.AudioPlayerCallbacks { [2 x ptr] [ptr @ContinueAudioPlayer, ptr @StopAudioPlayer] }, align 4
@gAudioAllCallbacksE76C = dso_local local_unnamed_addr constant %struct.AudioAllCallbacks { [2 x ptr] [ptr @ContinueAllSongs, ptr @StopAllSongs] }, align 4

declare dso_local arm_apcscc void @AdvanceScript(ptr noundef) #0

declare dso_local arm_apcscc void @EndScriptFrame(ptr noundef) #0

declare dso_local arm_apcscc void @ScriptWaitFrames(ptr noundef) #0

declare dso_local arm_apcscc void @ScriptWaitInput(ptr noundef) #0

declare dso_local arm_apcscc void @ResumeScriptHandler(ptr noundef) #0

declare dso_local arm_apcscc void @StopScriptHandler(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptDecompressStaged(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptDecompressPointer(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptCopyDma(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptCopyDmaQueued(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptStartSong(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptStopSong(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetCursor(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptChangeMapIndexAndSave(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptChangeMapBank(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConfigureRenderSlot(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderAnimation(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderField60AndAnimation(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetBackgroundScript(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetGraphicsScript(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConfigureVideoBackground(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetVideoBackgroundOffset(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptEnableDisplayLayers(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptDisableDisplayLayers(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptFillMemory(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetTaskContextEnabled(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConfigureTaskContextAndScript(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetTaskContextScript(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptInvokeCallback(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptJumpByHalf1FBC(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptCall(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptReturn(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConfigure065D8(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptWaitForByte1FA8(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConditionalCursor084C0(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptInvoke086AC(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptAwaitWordChoice(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptStoreIndirectCallback1FC0(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetActorContext(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptStopAndYield(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptReadPointerByte(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptReadControlByte(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptReadClassHalfword(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetResultHalfword(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetBackgroundBounds(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptWriteControlByte(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptWriteClassHalfword(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptCopyValuesByWidth(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptJumpValuesEqual(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptJumpValuesAtLeast(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptJumpValuesBelow(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptJumpGameFlag(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptDecompressRows(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptDecompressRowsCpu(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptAllocateHeapVariable(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptFreeHeapVariable(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetTaskResourceIndex(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderPriorityBits(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderPosition(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderField60(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptJumpRenderAnimationBase(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptRebuildFollowerRoute(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderField62(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptFadePhaseToCenter(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptFadePhaseByStep(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptCopyPointerBytes(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptCopyPointerHalfwords(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptLoadSaveDataGroup(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderVector24(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConfigureWordChoice(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetGameFlag(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConfigureSquareMosaic(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptConfigureSharedMosaic(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetSaveGroup01Bytes(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptRepositionRenderOrder(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderModeBits(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetVideoMode(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptStoreDestinationWord21F0(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetIrqUserCallback(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderBit5(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptStoreRandomRange(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptDispatchArgumentWord(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetForcedBlankAndYield(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptWriteVariableWord(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetTaskField5(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetBootGateAndByte1FB8(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptChangeAudioPlayer(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSelectAudioPlayers(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptWriteSaveRecord(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetRenderClasses(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptResetCoreState(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetWordChoiceOptionFlags(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptSetAudioParameters(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptChangeSaveByte21E0Bits(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptWaitForSong(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptWriteSaveDataGroups(ptr noundef) #0

declare dso_local arm_apcscc void @MainScriptLoadSaveDataGroups(ptr noundef) #0

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) #0

declare dso_local arm_apcscc void @StartSongOrChange(i16 noundef zeroext) #0

declare dso_local arm_apcscc void @StartSongOrContinue(i16 noundef zeroext) #0

declare dso_local arm_apcscc void @ContinueAudioPlayer(ptr noundef) #0

declare dso_local arm_apcscc void @StopAudioPlayer(ptr noundef) #0

declare dso_local arm_apcscc void @ContinueAllSongs() #0

declare dso_local arm_apcscc void @StopAllSongs() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
