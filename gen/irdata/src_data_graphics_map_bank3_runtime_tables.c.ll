; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMapBank3RandomPath = dso_local local_unnamed_addr constant [6 x i16] [i16 16394, i16 120, i16 29193, i16 60, i16 -1, i16 -1], align 2
@gMapBank3Entry16InitialWords = dso_local local_unnamed_addr constant [14 x i32] [i32 13, i32 0, i32 ptrtoint (ptr @SetGraphicsAnimationPreset16150 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset16180 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset161F8 to i32), i32 ptrtoint (ptr @ApplyMapBank3RenderPreset50CEC to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset16168 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset16000 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset161B0 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15354 to i32), i32 ptrtoint (ptr @ConfigureMapBank3SqrtMotion to i32), i32 ptrtoint (ptr @SetMapBank3Animation50DDC to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset194DC to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset18FC4 to i32)], align 4
@gUnusedMapBank3RenderSetupCallback1188 = dso_local local_unnamed_addr constant ptr @ConfigureRenderSetupPreset190C0, align 4

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16150() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16180() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset161F8() #0

declare dso_local arm_apcscc void @ApplyMapBank3RenderPreset50CEC() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16168() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16000() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset161B0() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15354() #0

declare dso_local arm_apcscc void @ConfigureMapBank3SqrtMotion() #0

declare dso_local arm_apcscc void @SetMapBank3Animation50DDC() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset194DC() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset18FC4() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset190C0() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
