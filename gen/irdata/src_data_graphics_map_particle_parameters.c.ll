; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SceneSlotMotionParameters = type { [32 x [2 x i32]], [8 x [2 x i32]], [13 x i8], [13 x i8] }
%struct.MapParticleParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.MapBank2Entry8InitialWords = type { i32, [2 x i32] }

@gSceneSlotMotionParameters = dso_local local_unnamed_addr constant %struct.SceneSlotMotionParameters { [32 x [2 x i32]] [[2 x i32] [i32 32768, i32 -1024], [2 x i32] [i32 32768, i32 -512], [2 x i32] [i32 32768, i32 -256], [2 x i32] [i32 32768, i32 -2048], [2 x i32] [i32 65536, i32 -2048], [2 x i32] [i32 65536, i32 -1024], [2 x i32] [i32 65536, i32 -512], [2 x i32] [i32 65536, i32 -256], [2 x i32] [i32 98304, i32 -4096], [2 x i32] [i32 98304, i32 -2048], [2 x i32] [i32 98304, i32 -1024], [2 x i32] [i32 98304, i32 -512], [2 x i32] [i32 131072, i32 -6144], [2 x i32] [i32 131072, i32 -8192], [2 x i32] [i32 131072, i32 -4096], [2 x i32] [i32 131072, i32 -2048], [2 x i32] [i32 -32768, i32 1024], [2 x i32] [i32 -32768, i32 512], [2 x i32] [i32 -32768, i32 256], [2 x i32] [i32 -32768, i32 128], [2 x i32] [i32 -65536, i32 2048], [2 x i32] [i32 -65536, i32 1024], [2 x i32] [i32 -65536, i32 512], [2 x i32] [i32 -65536, i32 256], [2 x i32] [i32 -98304, i32 4096], [2 x i32] [i32 -98304, i32 2048], [2 x i32] [i32 -98304, i32 1024], [2 x i32] [i32 -98304, i32 512], [2 x i32] [i32 -131072, i32 6144], [2 x i32] [i32 -131072, i32 8192], [2 x i32] [i32 -131072, i32 4096], [2 x i32] [i32 -131072, i32 2048]], [8 x [2 x i32]] [[2 x i32] [i32 -4096, i32 512], [2 x i32] [i32 -8192, i32 1024], [2 x i32] [i32 -16384, i32 1536], [2 x i32] [i32 -32768, i32 2048], [2 x i32] [i32 -32768, i32 1024], [2 x i32] [i32 -32768, i32 1536], [2 x i32] [i32 -65536, i32 2048], [2 x i32] [i32 -65536, i32 3072]], [13 x i8] c"\0F\0F\0F\0F\1F\0F\1F\1F\1F\1F\0F\0F\0F", [13 x i8] c"\00\00\10\10\00\00\00\00\00\00\00\10\10" }, align 4
@gMapParticleParameters = dso_local local_unnamed_addr constant [14 x %struct.MapParticleParameters] [%struct.MapParticleParameters { i32 40, i32 24, i32 0, i32 262144, i32 -3640, i32 0, i32 32 }, %struct.MapParticleParameters { i32 74, i32 24, i32 0, i32 147456, i32 -682, i32 0, i32 32 }, %struct.MapParticleParameters { i32 136, i32 24, i32 0, i32 262144, i32 3640, i32 0, i32 32 }, %struct.MapParticleParameters { i32 170, i32 24, i32 0, i32 49152, i32 768, i32 -110, i32 32 }, %struct.MapParticleParameters { i32 72, i32 48, i32 0, i32 131072, i32 -5460, i32 -254, i32 32 }, %struct.MapParticleParameters { i32 80, i32 48, i32 0, i32 131072, i32 -5460, i32 -1024, i32 32 }, %struct.MapParticleParameters { i32 102, i32 48, i32 12288, i32 36864, i32 1536, i32 0, i32 0 }, %struct.MapParticleParameters { i32 112, i32 48, i32 131072, i32 262144, i32 2560, i32 0, i32 32 }, %struct.MapParticleParameters { i32 172, i32 96, i32 -196608, i32 98304, i32 0, i32 -1024, i32 32 }, %struct.MapParticleParameters { i32 172, i32 96, i32 -131072, i32 196608, i32 -512, i32 0, i32 32 }, %struct.MapParticleParameters { i32 172, i32 96, i32 -16384, i32 49152, i32 -256, i32 0, i32 0 }, %struct.MapParticleParameters { i32 172, i32 96, i32 49152, i32 147456, i32 4096, i32 -1024, i32 32 }, %struct.MapParticleParameters { i32 172, i32 96, i32 49152, i32 49152, i32 2048, i32 0, i32 0 }, %struct.MapParticleParameters { i32 172, i32 96, i32 49152, i32 16384, i32 0, i32 -1024, i32 0 }], align 4
@gMapBank2Entry8InitialWords = dso_local local_unnamed_addr constant %struct.MapBank2Entry8InitialWords { i32 2, [2 x i32] [i32 0, i32 ptrtoint (ptr @SelectMapChoiceSlot13DirectionalAnimation to i32)] }, align 4
@gMapParticleAlternateParameters = dso_local local_unnamed_addr constant [14 x %struct.MapParticleParameters] [%struct.MapParticleParameters { i32 40, i32 -8, i32 0, i32 262144, i32 -3640, i32 0, i32 32 }, %struct.MapParticleParameters { i32 74, i32 -8, i32 0, i32 147456, i32 -682, i32 0, i32 32 }, %struct.MapParticleParameters { i32 136, i32 -8, i32 0, i32 262144, i32 3640, i32 0, i32 32 }, %struct.MapParticleParameters { i32 170, i32 -8, i32 0, i32 49152, i32 768, i32 -110, i32 32 }, %struct.MapParticleParameters { i32 116, i32 24, i32 0, i32 131072, i32 -5460, i32 -254, i32 32 }, %struct.MapParticleParameters { i32 80, i32 -8, i32 0, i32 131072, i32 -5460, i32 -1024, i32 32 }, %struct.MapParticleParameters { i32 102, i32 -8, i32 12288, i32 36864, i32 1536, i32 0, i32 0 }, %struct.MapParticleParameters { i32 116, i32 24, i32 131072, i32 262144, i32 2560, i32 0, i32 32 }, %struct.MapParticleParameters { i32 116, i32 24, i32 -196608, i32 98304, i32 0, i32 -1024, i32 32 }, %struct.MapParticleParameters { i32 116, i32 24, i32 -131072, i32 196608, i32 -512, i32 0, i32 32 }, %struct.MapParticleParameters { i32 116, i32 24, i32 -16384, i32 49152, i32 -256, i32 0, i32 0 }, %struct.MapParticleParameters { i32 116, i32 24, i32 49152, i32 147456, i32 4096, i32 -1024, i32 32 }, %struct.MapParticleParameters { i32 116, i32 24, i32 49152, i32 49152, i32 2048, i32 0, i32 0 }, %struct.MapParticleParameters { i32 116, i32 24, i32 49152, i32 16384, i32 0, i32 -1024, i32 0 }], align 4
@gMapBank2Entry14InitialWords = dso_local local_unnamed_addr constant [32 x i32] [i32 31, i32 0, i32 ptrtoint (ptr @SetMapChoiceSlot16Animation307EC to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30800 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30814 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30828 to i32), i32 ptrtoint (ptr @ConfigureMapChoiceLinkedSlot15AfterAnimation3083C to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30878 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation3088C to i32), i32 0, i32 ptrtoint (ptr @SetMapChoiceSlot16Animation308A0 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation308B4 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation308C8 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation308DC to i32), i32 ptrtoint (ptr @ConfigureMapChoiceLinkedSlot15Priority0 to i32), i32 ptrtoint (ptr @ClearMapChoiceSlot15AndSet16Animation30934 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30950 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30964 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot19Animation30978 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot19Indicator3098C to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation309AC to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation309C0 to i32), i32 ptrtoint (ptr @ConfigureMapChoiceLinkedSlot15Indicator309D4 to i32), i32 ptrtoint (ptr @ConfigureMapChoiceLinkedSlot15Indicator30A1C to i32), i32 ptrtoint (ptr @ConfigureMapChoiceLinkedSlot15AfterAnimation30A64 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30AA0 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30AB4 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30AC8 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30ADC to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Animation30AF0 to i32), i32 ptrtoint (ptr @SetMapChoiceSlot16Indicator30B04 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset134A4 to i32)], align 4
@gMapBank2Entry15InitialWords = dso_local local_unnamed_addr constant [4 x i32] [i32 3, i32 0, i32 ptrtoint (ptr @SetMapChoicePairAnimations30B24 to i32), i32 ptrtoint (ptr @ConfigureMapChoiceLinkedRenderGroup30B44 to i32)], align 4
@gMapBank2Entry23InitialWords = dso_local local_unnamed_addr constant [25 x i32] [i32 24, i32 ptrtoint (ptr @ConfigureFixedSlots10And13WithNeighbors2242C to i32), i32 ptrtoint (ptr @ConfigureDirectionalAnimationSlots1799C to i32), i32 ptrtoint (ptr @ConfigureDirectionalAnimationSlots17A2C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17828 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17754 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset1776C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17784 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset1761C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17870 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset1758C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset177F8 to i32), i32 ptrtoint (ptr @ApplyMapChoicePresets32D4C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17724 to i32), i32 ptrtoint (ptr @ApplyMapChoicePresets32D3C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset178B8 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17634 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17858 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationAndIndicator1793C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17810 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset176DC to i32), i32 ptrtoint (ptr @ApplyMapChoicePresets32D5C to i32), i32 ptrtoint (ptr @ApplyMapChoicePresets32D6C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset1770C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationAndIndicator17918 to i32)], align 4

declare dso_local arm_apcscc i32 @SelectMapChoiceSlot13DirectionalAnimation() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation307EC() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30800() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30814() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30828() #0

declare dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15AfterAnimation3083C() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30878() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation3088C() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation308A0() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation308B4() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation308C8() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation308DC() #0

declare dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15Priority0() #0

declare dso_local arm_apcscc void @ClearMapChoiceSlot15AndSet16Animation30934() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30950() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30964() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot19Animation30978() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot19Indicator3098C() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation309AC() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation309C0() #0

declare dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15Indicator309D4() #0

declare dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15Indicator30A1C() #0

declare dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15AfterAnimation30A64() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AA0() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AB4() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AC8() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30ADC() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AF0() #0

declare dso_local arm_apcscc void @SetMapChoiceSlot16Indicator30B04() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset134A4() #0

declare dso_local arm_apcscc void @SetMapChoicePairAnimations30B24() #0

declare dso_local arm_apcscc void @ConfigureMapChoiceLinkedRenderGroup30B44() #0

declare dso_local arm_apcscc void @ConfigureFixedSlots10And13WithNeighbors2242C() #0

declare dso_local arm_apcscc void @ConfigureDirectionalAnimationSlots1799C() #0

declare dso_local arm_apcscc void @ConfigureDirectionalAnimationSlots17A2C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17828() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17754() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1776C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17784() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1761C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17870() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1758C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset177F8() #0

declare dso_local arm_apcscc void @ApplyMapChoicePresets32D4C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17724() #0

declare dso_local arm_apcscc void @ApplyMapChoicePresets32D3C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset178B8() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17634() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17858() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationAndIndicator1793C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17810() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset176DC() #0

declare dso_local arm_apcscc void @ApplyMapChoicePresets32D5C() #0

declare dso_local arm_apcscc void @ApplyMapChoicePresets32D6C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1770C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationAndIndicator17918() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
