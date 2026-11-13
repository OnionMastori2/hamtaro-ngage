; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gInitialHblankHandlers = dso_local local_unnamed_addr constant [19 x ptr] [ptr @HblankNoop, ptr @UpdateScanlineWaveBlend, ptr @HblankSecondaryNoop, ptr @HblankNoop, ptr @UpdateScanlineWaveScroll, ptr @UpdateScanlineAlternatingWindow, ptr @UpdateScanlineScrolledWindow, ptr @UpdateScanlineWindowBands, ptr @UpdateScanlineScrolledBands, ptr @UpdateScanlineWindowSteps, ptr @UpdateScanlineScrolledSteps, ptr @UpdateScanlineCircleWindow, ptr @UpdateRasterWindowBands, ptr @UpdateRasterScrolledBands, ptr @UpdateRasterSteppedBands, ptr @UpdateRasterScrolledSteps, ptr @UpdateRasterCircleWindow, ptr @UpdateRasterAlternatingBands, ptr @UpdateRasterSteppedEdge], align 4

declare dso_local arm_apcscc void @HblankNoop() #0

declare dso_local arm_apcscc void @UpdateScanlineWaveBlend() #0

declare dso_local arm_apcscc void @HblankSecondaryNoop() #0

declare dso_local arm_apcscc void @UpdateScanlineWaveScroll() #0

declare dso_local arm_apcscc void @UpdateScanlineAlternatingWindow() #0

declare dso_local arm_apcscc void @UpdateScanlineScrolledWindow() #0

declare dso_local arm_apcscc void @UpdateScanlineWindowBands() #0

declare dso_local arm_apcscc void @UpdateScanlineScrolledBands() #0

declare dso_local arm_apcscc void @UpdateScanlineWindowSteps() #0

declare dso_local arm_apcscc void @UpdateScanlineScrolledSteps() #0

declare dso_local arm_apcscc void @UpdateScanlineCircleWindow() #0

declare dso_local arm_apcscc void @UpdateRasterWindowBands() #0

declare dso_local arm_apcscc void @UpdateRasterScrolledBands() #0

declare dso_local arm_apcscc void @UpdateRasterSteppedBands() #0

declare dso_local arm_apcscc void @UpdateRasterScrolledSteps() #0

declare dso_local arm_apcscc void @UpdateRasterCircleWindow() #0

declare dso_local arm_apcscc void @UpdateRasterAlternatingBands() #0

declare dso_local arm_apcscc void @UpdateRasterSteppedEdge() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
