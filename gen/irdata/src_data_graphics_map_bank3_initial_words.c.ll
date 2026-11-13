; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMapBank3Entry1InitialWords = dso_local local_unnamed_addr constant [32 x i32] [i32 31, i32 0, i32 ptrtoint (ptr @SetDirectionalAnimationPreset16C38 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16C68 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16CB0 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16D10 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationAndIndicator16D28 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16D7C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16D94 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationAndIndicator16DD0 to i32), i32 ptrtoint (ptr @ConfigureDirectionalAnimationSlots16E0C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16B00 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16B18 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationAndIndicator16F50 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationAndIndicator152B8 to i32), i32 ptrtoint (ptr @ConfigureMapBank3Auxiliary4B508 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset16018 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset162D0 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationAndIndicator156CC to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset153FC to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset158F4 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15A9C to i32), i32 ptrtoint (ptr @ConfigureMapBank3Auxiliary4B540 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15AFC to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15B2C to i32), i32 ptrtoint (ptr @ConfigureMapBank3Auxiliary4B588 to i32), i32 ptrtoint (ptr @ConfigureMapBank3Auxiliary4B5C0 to i32), i32 ptrtoint (ptr @SetMapBank3Class2Indicator to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15E74 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15E8C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16B48 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16C68 to i32)], align 4
@gMapBank3RandomFlagOrder = dso_local local_unnamed_addr constant [5 x i8] c"\00\01\02\03\04", align 1
@gMapBank3SourceAnimations = dso_local local_unnamed_addr constant [4 x ptr] [ptr inttoptr (i32 143557852 to ptr), ptr inttoptr (i32 143557926 to ptr), ptr inttoptr (i32 143558000 to ptr), ptr inttoptr (i32 143558074 to ptr)], align 4
@gMapBank3ReleaseAnimations = dso_local local_unnamed_addr constant [4 x ptr] [ptr inttoptr (i32 143557860 to ptr), ptr inttoptr (i32 143557934 to ptr), ptr inttoptr (i32 143558008 to ptr), ptr inttoptr (i32 143557860 to ptr)], align 4
@gMapBank3FeedbackAnimations = dso_local local_unnamed_addr constant [4 x ptr] [ptr inttoptr (i32 143557914 to ptr), ptr inttoptr (i32 143557988 to ptr), ptr inttoptr (i32 143558062 to ptr), ptr inttoptr (i32 143259168 to ptr)], align 4
@gMapBank3SpawnAnimations = dso_local local_unnamed_addr constant [6 x ptr] [ptr inttoptr (i32 143557868 to ptr), ptr inttoptr (i32 143557891 to ptr), ptr inttoptr (i32 143557942 to ptr), ptr inttoptr (i32 143557965 to ptr), ptr inttoptr (i32 143558016 to ptr), ptr inttoptr (i32 143558039 to ptr)], align 4
@gMapBank3StageThresholds = dso_local local_unnamed_addr constant [8 x i8] c"\04\08\02\07\05\07\04\08", align 1
@gMapBank3KindThresholds = dso_local local_unnamed_addr constant [9 x i8] c"\01\06\10\03\08\0F\03\08\0E", align 1
@gMapBank3VariationThresholds = dso_local local_unnamed_addr constant [12 x i8] c"\01\02\06\01\02\05\04\06\07\03\06\07", align 1
@gMapBank3VerticalThresholds = dso_local local_unnamed_addr constant [3 x i8] c"\06\04\02", align 1
@gMapBank3PairBoardCoordinates = dso_local local_unnamed_addr constant [9 x [2 x i16]] [[2 x i16] [i16 40, i16 24], [2 x i16] [i16 96, i16 24], [2 x i16] [i16 152, i16 24], [2 x i16] [i16 40, i16 64], [2 x i16] [i16 96, i16 64], [2 x i16] [i16 152, i16 64], [2 x i16] [i16 40, i16 104], [2 x i16] [i16 96, i16 104], [2 x i16] [i16 152, i16 104]], align 2
@gMapBank3ChoiceBytePairs = dso_local local_unnamed_addr constant [16 x i8] c"\00\00\03\03\03\02\03\01\01\0A\01\14\02\01\02\02", align 1
@gMapBank3ChainSpeeds = dso_local local_unnamed_addr constant [3 x i16] [i16 128, i16 192, i16 256], align 2
@gMapBank3ChainRates = dso_local local_unnamed_addr constant [3 x i8] c"\02\03\04", align 1
@gMapBank3ChainKindThresholds = dso_local local_unnamed_addr constant [21 x i8] c"\08\0C\0C\0E\0E\0F\10\08\0A\0A\0C\0D\0E\10\06\08\09\0B\0D\0E\0F", align 1
@gMapBank3ChainPhaseDurations = dso_local local_unnamed_addr constant [24 x i8] c"\04\04\04\04\04\04\04\04\03\03\03\02\03\02\03\02\02\02\02\02\02\02\02\02", align 1
@gMapBank3ChainTableAlignment = dso_local local_unnamed_addr constant [2 x i8] zeroinitializer, align 1
@gMapBank3ChainKindAnimations = dso_local local_unnamed_addr constant [18 x ptr] [ptr inttoptr (i32 143259168 to ptr), ptr inttoptr (i32 143558848 to ptr), ptr inttoptr (i32 143558861 to ptr), ptr inttoptr (i32 143558874 to ptr), ptr inttoptr (i32 143558887 to ptr), ptr inttoptr (i32 143558900 to ptr), ptr inttoptr (i32 143558913 to ptr), ptr inttoptr (i32 143558926 to ptr), ptr inttoptr (i32 143558939 to ptr), ptr inttoptr (i32 143558952 to ptr), ptr null, ptr inttoptr (i32 143559532 to ptr), ptr inttoptr (i32 143559612 to ptr), ptr inttoptr (i32 143559651 to ptr), ptr inttoptr (i32 143559638 to ptr), ptr inttoptr (i32 143559599 to ptr), ptr inttoptr (i32 143559586 to ptr), ptr inttoptr (i32 143559625 to ptr)], align 4
@gMapBank3ChainCapturedAnimations = dso_local local_unnamed_addr constant [18 x ptr] [ptr inttoptr (i32 143259168 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559679 to ptr), ptr inttoptr (i32 143559694 to ptr), ptr inttoptr (i32 143560081 to ptr), ptr inttoptr (i32 143560111 to ptr), ptr inttoptr (i32 143560096 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr), ptr inttoptr (i32 143559664 to ptr)], align 4
@gMapBank3ChainFlagAnimations = dso_local local_unnamed_addr constant [9 x ptr] [ptr inttoptr (i32 143559694 to ptr), ptr inttoptr (i32 143559737 to ptr), ptr inttoptr (i32 143559780 to ptr), ptr inttoptr (i32 143559823 to ptr), ptr inttoptr (i32 143559866 to ptr), ptr inttoptr (i32 143559909 to ptr), ptr inttoptr (i32 143559952 to ptr), ptr inttoptr (i32 143559995 to ptr), ptr inttoptr (i32 143560038 to ptr)], align 4
@gMapBank3ChainVariantAnimations = dso_local local_unnamed_addr constant [36 x ptr] [ptr inttoptr (i32 143558965 to ptr), ptr inttoptr (i32 143558978 to ptr), ptr inttoptr (i32 143558991 to ptr), ptr inttoptr (i32 143559004 to ptr), ptr inttoptr (i32 143559017 to ptr), ptr inttoptr (i32 143559030 to ptr), ptr inttoptr (i32 143559043 to ptr), ptr inttoptr (i32 143559056 to ptr), ptr inttoptr (i32 143559069 to ptr), ptr inttoptr (i32 143559082 to ptr), ptr inttoptr (i32 143559095 to ptr), ptr inttoptr (i32 143559108 to ptr), ptr inttoptr (i32 143559121 to ptr), ptr inttoptr (i32 143559134 to ptr), ptr inttoptr (i32 143559147 to ptr), ptr inttoptr (i32 143559160 to ptr), ptr inttoptr (i32 143559173 to ptr), ptr inttoptr (i32 143559186 to ptr), ptr inttoptr (i32 143559199 to ptr), ptr inttoptr (i32 143559212 to ptr), ptr inttoptr (i32 143559225 to ptr), ptr inttoptr (i32 143559238 to ptr), ptr inttoptr (i32 143559251 to ptr), ptr inttoptr (i32 143559264 to ptr), ptr inttoptr (i32 143559277 to ptr), ptr inttoptr (i32 143559290 to ptr), ptr inttoptr (i32 143559303 to ptr), ptr inttoptr (i32 143559316 to ptr), ptr inttoptr (i32 143559329 to ptr), ptr inttoptr (i32 143559342 to ptr), ptr inttoptr (i32 143559355 to ptr), ptr inttoptr (i32 143559368 to ptr), ptr inttoptr (i32 143559381 to ptr), ptr inttoptr (i32 143559394 to ptr), ptr inttoptr (i32 143559407 to ptr), ptr inttoptr (i32 143559420 to ptr)], align 4
@gMapBank3ChainBackgroundScripts = dso_local local_unnamed_addr constant [8 x ptr] [ptr inttoptr (i32 143560547 to ptr), ptr inttoptr (i32 143560570 to ptr), ptr inttoptr (i32 143560593 to ptr), ptr inttoptr (i32 143560616 to ptr), ptr inttoptr (i32 143560639 to ptr), ptr inttoptr (i32 143560662 to ptr), ptr inttoptr (i32 143560685 to ptr), ptr inttoptr (i32 143560708 to ptr)], align 4
@gMapBank3ChainCountAnimations = dso_local local_unnamed_addr constant [10 x ptr] [ptr inttoptr (i32 143560192 to ptr), ptr inttoptr (i32 143560200 to ptr), ptr inttoptr (i32 143560208 to ptr), ptr inttoptr (i32 143560216 to ptr), ptr inttoptr (i32 143560224 to ptr), ptr inttoptr (i32 143560224 to ptr), ptr inttoptr (i32 143560224 to ptr), ptr inttoptr (i32 143560224 to ptr), ptr inttoptr (i32 143560224 to ptr), ptr inttoptr (i32 143560224 to ptr)], align 4
@gMapBank3ChainLinesAnimations = dso_local local_unnamed_addr constant [9 x ptr] [ptr inttoptr (i32 143560241 to ptr), ptr inttoptr (i32 143560249 to ptr), ptr inttoptr (i32 143560257 to ptr), ptr inttoptr (i32 143560265 to ptr), ptr inttoptr (i32 143560273 to ptr), ptr inttoptr (i32 143560281 to ptr), ptr inttoptr (i32 143560289 to ptr), ptr inttoptr (i32 143560297 to ptr), ptr inttoptr (i32 143560305 to ptr)], align 4
@gMapBank3ChainGridAnimations = dso_local local_unnamed_addr constant [9 x ptr] [ptr inttoptr (i32 143560313 to ptr), ptr inttoptr (i32 143560321 to ptr), ptr inttoptr (i32 143560329 to ptr), ptr inttoptr (i32 143560337 to ptr), ptr inttoptr (i32 143560345 to ptr), ptr inttoptr (i32 143560353 to ptr), ptr inttoptr (i32 143560361 to ptr), ptr inttoptr (i32 143560369 to ptr), ptr inttoptr (i32 143560377 to ptr)], align 4
@gMapBank3ChainFlagGraphics = dso_local local_unnamed_addr constant [9 x ptr] [ptr inttoptr (i32 143560800 to ptr), ptr inttoptr (i32 143560810 to ptr), ptr inttoptr (i32 143560820 to ptr), ptr inttoptr (i32 143560830 to ptr), ptr inttoptr (i32 143560840 to ptr), ptr inttoptr (i32 143560850 to ptr), ptr inttoptr (i32 143560860 to ptr), ptr inttoptr (i32 143560870 to ptr), ptr inttoptr (i32 143560880 to ptr)], align 4
@gMapBank3ChainOverlayGraphics = dso_local local_unnamed_addr constant [9 x ptr] [ptr inttoptr (i32 143560890 to ptr), ptr inttoptr (i32 143560900 to ptr), ptr inttoptr (i32 143560910 to ptr), ptr inttoptr (i32 143560920 to ptr), ptr inttoptr (i32 143560930 to ptr), ptr inttoptr (i32 143560940 to ptr), ptr inttoptr (i32 143560950 to ptr), ptr inttoptr (i32 143560960 to ptr), ptr inttoptr (i32 143560970 to ptr)], align 4
@gMapBank3ChainLineGraphics = dso_local local_unnamed_addr constant [8 x ptr] [ptr inttoptr (i32 143560980 to ptr), ptr inttoptr (i32 143561026 to ptr), ptr inttoptr (i32 143561072 to ptr), ptr inttoptr (i32 143561118 to ptr), ptr inttoptr (i32 143561164 to ptr), ptr inttoptr (i32 143561210 to ptr), ptr inttoptr (i32 143561256 to ptr), ptr inttoptr (i32 143561320 to ptr)], align 4
@gMapBank3ChainInitialKindOrder = dso_local local_unnamed_addr constant [9 x i8] c"\00\01\02\03\04\05\06\07\08", align 1
@gMapBank3ChainSeedAlignment = dso_local local_unnamed_addr constant [3 x i8] zeroinitializer, align 1
@gMapBank3Entry8InitialWords = dso_local local_unnamed_addr constant [28 x i32] [i32 27, i32 0, i32 ptrtoint (ptr @SetGraphicsAnimationAndIndicator1599C to i32), i32 ptrtoint (ptr @SetMapBank3Class3ControlDirection to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15774 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15474 to i32), i32 ptrtoint (ptr @SetMapBank3Class2ControlDirection to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset157D4 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15564 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset158AC to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset1548C to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset16108 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset158F4 to i32), i32 ptrtoint (ptr @ConfigureMapBank3RenderPreset4F6EC to i32), i32 ptrtoint (ptr @ConfigureGraphicsAnimationSlots15A10 to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset18FC4 to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset19728 to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset19338 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset162D0 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset157EC to i32), i32 ptrtoint (ptr @MapBank3NoOp4F708 to i32), i32 ptrtoint (ptr @ConfigureMapBank3RenderPreset4F70C to i32), i32 ptrtoint (ptr @ConfigureMapBank3AuxiliaryByAnimation to i32), i32 ptrtoint (ptr @SetActorAnimationPreset12DC4 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset13250 to i32), i32 ptrtoint (ptr @ConfigureActorPreviousSlot12DDC to i32), i32 ptrtoint (ptr @ConfigureFollowerPreviousSlot13280 to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset1938C to i32)], align 4

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16C38() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16C68() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16CB0() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16D10() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationAndIndicator16D28() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16D7C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16D94() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationAndIndicator16DD0() #0

declare dso_local arm_apcscc void @ConfigureDirectionalAnimationSlots16E0C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16B00() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16B18() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationAndIndicator16F50() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator152B8() #0

declare dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B508() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16018() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset162D0() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator156CC() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset153FC() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset158F4() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15A9C() #0

declare dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B540() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15AFC() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15B2C() #0

declare dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B588() #0

declare dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B5C0() #0

declare dso_local arm_apcscc void @SetMapBank3Class2Indicator() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15E74() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15E8C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16B48() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator1599C() #0

declare dso_local arm_apcscc void @SetMapBank3Class3ControlDirection() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15774() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15474() #0

declare dso_local arm_apcscc void @SetMapBank3Class2ControlDirection() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset157D4() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15564() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset158AC() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset1548C() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16108() #0

declare dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F6EC() #0

declare dso_local arm_apcscc void @ConfigureGraphicsAnimationSlots15A10() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset18FC4() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19728() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19338() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset157EC() #0

declare dso_local arm_apcscc void @MapBank3NoOp4F708() #0

declare dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F70C() #0

declare dso_local arm_apcscc void @ConfigureMapBank3AuxiliaryByAnimation() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset12DC4() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset13250() #0

declare dso_local arm_apcscc void @ConfigureActorPreviousSlot12DDC() #0

declare dso_local arm_apcscc void @ConfigureFollowerPreviousSlot13280() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1938C() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
