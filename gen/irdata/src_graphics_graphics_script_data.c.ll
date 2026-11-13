; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.InitialGraphicsPointerState = type { ptr, ptr }

@gInitialGraphicsScriptHandlers = dso_local local_unnamed_addr constant [48 x ptr] [ptr @GraphicsReturn, ptr @GraphicsWait, ptr @GraphicsJump, ptr @GraphicsWriteBytes, ptr @GraphicsPaletteAll, ptr @GraphicsPaletteStep, ptr @GraphicsPaletteFrom, ptr @GraphicsCopyHalfwords, ptr @GraphicsDecompressWram, ptr @GraphicsPaletteRange, ptr @GraphicsBeginRepeat, ptr @GraphicsEndRepeat, ptr @GraphicsWriteHalfwords, ptr @GraphicsWriteMirrorRows, ptr @GraphicsSetBlendParameters, ptr @GraphicsBeginBlendFade, ptr @GraphicsBeginBlendFade, ptr @GraphicsBlendFadeStep, ptr @GraphicsBranchByte, ptr @GraphicsBranchByte, ptr @GraphicsBranchByte, ptr @GraphicsDisableBlend, ptr @GraphicsBeginBlendAlpha, ptr @GraphicsBlendAlphaStep, ptr @GraphicsResetMosaic, ptr @GraphicsSetMosaicRegisters, ptr @GraphicsSetMosaicSizes, ptr @GraphicsEnableMosaic, ptr @GraphicsSetMosaicFlags, ptr @GraphicsEnableObjectMosaicRange, ptr @GraphicsBeginMosaicTransition, ptr @GraphicsMosaicStep, ptr @GraphicsMosaicStep, ptr @GraphicsConfigureRasterWindow, ptr @GraphicsBeginRasterEffect, ptr @GraphicsSetRasterPositionFromSource, ptr @GraphicsSetRasterBytes5To8, ptr @GraphicsSetRasterBytes9To11, ptr @GraphicsReleaseRasterEffect, ptr @GraphicsAllocateRasterEffect, ptr @GraphicsSetRasterPosition, ptr @GraphicsSetRasterPositionAndByte5, ptr @GraphicsSetWindowsEnabled, ptr @GraphicsSetWindowMasks, ptr @GraphicsSetWindowBounds, ptr @GraphicsSetRasterPositionAD, ptr @GraphicsUpdateRasterSweep, ptr @GraphicsCall], align 4
@gInitialGraphicsPointerState = dso_local local_unnamed_addr constant %struct.InitialGraphicsPointerState { ptr inttoptr (i32 83886080 to ptr), ptr null }, align 4

declare dso_local arm_apcscc i32 @GraphicsReturn(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsWait(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsJump(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsWriteBytes(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsPaletteAll(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsPaletteStep(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsPaletteFrom(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsCopyHalfwords(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsDecompressWram(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsPaletteRange(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBeginRepeat(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsEndRepeat(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsWriteHalfwords(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsWriteMirrorRows(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetBlendParameters(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBeginBlendFade(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBlendFadeStep(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBranchByte(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsDisableBlend(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBeginBlendAlpha(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBlendAlphaStep(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsResetMosaic(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetMosaicRegisters(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetMosaicSizes(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsEnableMosaic(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetMosaicFlags(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsEnableObjectMosaicRange(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBeginMosaicTransition(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsMosaicStep(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsConfigureRasterWindow(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsBeginRasterEffect(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetRasterPositionFromSource(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetRasterBytes5To8(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetRasterBytes9To11(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsReleaseRasterEffect(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsAllocateRasterEffect(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetRasterPosition(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetRasterPositionAndByte5(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetWindowsEnabled(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetWindowMasks(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetWindowBounds(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsSetRasterPositionAD(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsUpdateRasterSweep(ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @GraphicsCall(ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
