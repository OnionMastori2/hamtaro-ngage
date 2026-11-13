; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapBank6KeyStep = type { i16, i16 }
%struct.MapBank6TargetRange = type { i16, i16, i8, [3 x i8] }
%struct.MapBank6TargetSet = type { ptr, ptr, i16, i16, i16, i16 }

@gMapBank6OrbitSteps = dso_local local_unnamed_addr constant [6 x i16] [i16 6, i16 5, i16 4, i16 -6, i16 -5, i16 -4], align 2
@gMapBank6OscillatorSteps = dso_local local_unnamed_addr constant [2 x i16] [i16 64, i16 128], align 2
@gMapBank6FirstSteppedPath = dso_local local_unnamed_addr constant [9 x i16] [i16 -32768, i16 112, i16 208, i16 -32768, i16 64, i16 208, i16 -1, i16 -1, i16 -1], align 2
@gMapBank6SecondSteppedPath = dso_local local_unnamed_addr constant [15 x i16] [i16 -32768, i16 240, i16 120, i16 -32768, i16 192, i16 120, i16 -32768, i16 192, i16 152, i16 -32768, i16 240, i16 152, i16 -1, i16 -1, i16 -1], align 2
@gMapBank6Entry13InitialWords = dso_local local_unnamed_addr constant [22 x i32] [i32 21, i32 0, i32 ptrtoint (ptr @ConfigureMapBank6PresetA20C4 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA20D4 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA20F8 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2108 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2118 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18A88 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2128 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationAndIndicator18AD0 to i32), i32 ptrtoint (ptr @SetExtendedAnimationPreset14EF4 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset181E0 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18314 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2168 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA217C to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2190 to i32), i32 ptrtoint (ptr @SetActorClassAnimationPreset137F0 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset13208 to i32), i32 ptrtoint (ptr @SetActorClassAnimationPreset136A0 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset12F40 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset12EC8 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA21B4 to i32)], align 4
@gMapBank6KeySteps = dso_local local_unnamed_addr constant [16 x %struct.MapBank6KeyStep] [%struct.MapBank6KeyStep zeroinitializer, %struct.MapBank6KeyStep { i16 2, i16 0 }, %struct.MapBank6KeyStep { i16 -2, i16 0 }, %struct.MapBank6KeyStep zeroinitializer, %struct.MapBank6KeyStep { i16 0, i16 -2 }, %struct.MapBank6KeyStep { i16 2, i16 -2 }, %struct.MapBank6KeyStep { i16 -2, i16 -2 }, %struct.MapBank6KeyStep { i16 0, i16 -2 }, %struct.MapBank6KeyStep { i16 0, i16 2 }, %struct.MapBank6KeyStep { i16 2, i16 2 }, %struct.MapBank6KeyStep { i16 -2, i16 2 }, %struct.MapBank6KeyStep { i16 0, i16 2 }, %struct.MapBank6KeyStep zeroinitializer, %struct.MapBank6KeyStep { i16 2, i16 0 }, %struct.MapBank6KeyStep { i16 -2, i16 0 }, %struct.MapBank6KeyStep zeroinitializer], align 2
@sMapBank6TargetPositions6BF7B4 = internal constant [7 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 104, i16 152], [2 x i16] [i16 136, i16 184], [2 x i16] [i16 176, i16 160], [2 x i16] [i16 208, i16 176], [2 x i16] [i16 232, i16 144], [2 x i16] [i16 248, i16 192]], align 2
@sMapBank6TargetRanges6BF7D0 = internal constant [2 x %struct.MapBank6TargetRange] [%struct.MapBank6TargetRange { i16 1, i16 3, i8 31, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 4, i16 6, i8 28, [3 x i8] zeroinitializer }], align 2
@sMapBank6TargetPositions6BF7E0 = internal constant [10 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 64, i16 184], [2 x i16] [i16 56, i16 160], [2 x i16] [i16 24, i16 184], [2 x i16] [i16 48, i16 232], [2 x i16] [i16 232, i16 96], [2 x i16] [i16 256, i16 128], [2 x i16] [i16 256, i16 192], [2 x i16] [i16 216, i16 240], [2 x i16] [i16 264, i16 200]], align 2
@sMapBank6TargetRanges6BF808 = internal constant [2 x %struct.MapBank6TargetRange] [%struct.MapBank6TargetRange { i16 1, i16 4, i8 30, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 5, i16 8, i8 29, [3 x i8] zeroinitializer }], align 2
@sMapBank6TargetPositions6BF818 = internal constant [12 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 48, i16 208], [2 x i16] [i16 56, i16 176], [2 x i16] [i16 88, i16 104], [2 x i16] [i16 136, i16 168], [2 x i16] [i16 152, i16 168], [2 x i16] [i16 176, i16 224], [2 x i16] [i16 192, i16 176], [2 x i16] [i16 168, i16 112], [2 x i16] [i16 192, i16 144], [2 x i16] [i16 216, i16 144], [2 x i16] [i16 248, i16 112]], align 2
@sMapBank6TargetRanges6BF848 = internal constant [2 x %struct.MapBank6TargetRange] [%struct.MapBank6TargetRange { i16 1, i16 7, i8 30, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 7, i16 11, i8 31, [3 x i8] zeroinitializer }], align 2
@sMapBank6TargetPositions6BF858 = internal constant [19 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 48, i16 168], [2 x i16] [i16 64, i16 176], [2 x i16] [i16 144, i16 232], [2 x i16] [i16 104, i16 192], [2 x i16] [i16 88, i16 168], [2 x i16] [i16 128, i16 208], [2 x i16] [i16 192, i16 240], [2 x i16] [i16 200, i16 216], [2 x i16] [i16 216, i16 176], [2 x i16] [i16 256, i16 176], [2 x i16] [i16 224, i16 144], [2 x i16] [i16 272, i16 136], [2 x i16] [i16 256, i16 96], [2 x i16] [i16 184, i16 64], [2 x i16] [i16 192, i16 56], [2 x i16] [i16 160, i16 104], [2 x i16] [i16 88, i16 136], [2 x i16] [i16 32, i16 48]], align 2
@sMapBank6TargetRanges6BF8A4 = internal constant [4 x %struct.MapBank6TargetRange] [%struct.MapBank6TargetRange { i16 1, i16 6, i8 29, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 7, i16 12, i8 28, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 11, i16 15, i8 30, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 15, i16 18, i8 20, [3 x i8] zeroinitializer }], align 2
@sMapBank6TargetPositions6BF8C4 = internal constant [5 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 64, i16 176], [2 x i16] [i16 120, i16 192], [2 x i16] [i16 152, i16 200], [2 x i16] [i16 152, i16 232]], align 2
@sMapBank6TargetRanges6BF8D8 = internal constant [1 x %struct.MapBank6TargetRange] [%struct.MapBank6TargetRange { i16 1, i16 4, i8 31, [3 x i8] zeroinitializer }], align 2
@sMapBank6TargetPositions6BF8E0 = internal constant [5 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 32, i16 176], [2 x i16] [i16 72, i16 176], [2 x i16] [i16 112, i16 224], [2 x i16] [i16 160, i16 224]], align 2
@sMapBank6TargetRanges6BF8F4 = internal constant [1 x %struct.MapBank6TargetRange] [%struct.MapBank6TargetRange { i16 1, i16 4, i8 31, [3 x i8] zeroinitializer }], align 2
@sMapBank6TargetPositions6BF8FC = internal constant [14 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 120, i16 184], [2 x i16] [i16 40, i16 168], [2 x i16] [i16 64, i16 184], [2 x i16] [i16 56, i16 152], [2 x i16] [i16 56, i16 128], [2 x i16] [i16 120, i16 112], [2 x i16] [i16 152, i16 80], [2 x i16] [i16 184, i16 56], [2 x i16] [i16 216, i16 96], [2 x i16] [i16 240, i16 144], [2 x i16] [i16 232, i16 176], [2 x i16] [i16 192, i16 168], [2 x i16] [i16 120, i16 184]], align 2
@sMapBank6TargetRanges6BF934 = internal constant [3 x %struct.MapBank6TargetRange] [%struct.MapBank6TargetRange { i16 1, i16 5, i8 28, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 4, i16 9, i8 29, [3 x i8] zeroinitializer }, %struct.MapBank6TargetRange { i16 9, i16 13, i8 30, [3 x i8] zeroinitializer }], align 2
@gMapBank6TargetSets = dso_local local_unnamed_addr constant [7 x %struct.MapBank6TargetSet] [%struct.MapBank6TargetSet { ptr @sMapBank6TargetPositions6BF7B4, ptr @sMapBank6TargetRanges6BF7D0, i16 11, i16 2, i16 183, i16 184 }, %struct.MapBank6TargetSet { ptr @sMapBank6TargetPositions6BF7E0, ptr @sMapBank6TargetRanges6BF808, i16 12, i16 2, i16 185, i16 186 }, %struct.MapBank6TargetSet { ptr @sMapBank6TargetPositions6BF818, ptr @sMapBank6TargetRanges6BF848, i16 13, i16 2, i16 187, i16 188 }, %struct.MapBank6TargetSet { ptr @sMapBank6TargetPositions6BF858, ptr @sMapBank6TargetRanges6BF8A4, i16 15, i16 4, i16 189, i16 190 }, %struct.MapBank6TargetSet { ptr @sMapBank6TargetPositions6BF8C4, ptr @sMapBank6TargetRanges6BF8D8, i16 16, i16 1, i16 191, i16 192 }, %struct.MapBank6TargetSet { ptr @sMapBank6TargetPositions6BF8E0, ptr @sMapBank6TargetRanges6BF8F4, i16 17, i16 1, i16 193, i16 194 }, %struct.MapBank6TargetSet { ptr @sMapBank6TargetPositions6BF8FC, ptr @sMapBank6TargetRanges6BF934, i16 19, i16 3, i16 195, i16 196 }], align 4
@gMapBank6Entry15InitialWords = dso_local local_unnamed_addr constant [14 x i32] [i32 13, i32 0, i32 ptrtoint (ptr @ConfigureMapBank6PresetA2B2C to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2B5C to i32), i32 ptrtoint (ptr @SetGraphicsAnimationAndIndicator15048 to i32), i32 ptrtoint (ptr @SetExtendedAnimationPreset14F3C to i32), i32 ptrtoint (ptr @SetExtendedAnimationPreset14F6C to i32), i32 ptrtoint (ptr @ConfigureExtendedAuxiliaryNeighbors14F9C to i32), i32 ptrtoint (ptr @SetActorAnimationPreset12E38 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset13474 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2B8C to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2BA4 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18078 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA2BB4 to i32)], align 4
@gMapBank6WrappedChainSlots = dso_local local_unnamed_addr constant [4 x i32] [i32 18, i32 20, i32 9, i32 11], align 4
@gMapBank6Entry17InitialWords = dso_local local_unnamed_addr constant [39 x i32] [i32 38, i32 ptrtoint (ptr @ApplyActorAnimationPairA3908 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset180A8 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3918 to i32), i32 ptrtoint (ptr @SelectActorAnimationForXZDirection187F8 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset184A0 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset184B8 to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset17F0C to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3928 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset183A4 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset184D0 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18138 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset1850C to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset182FC to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18524 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18048 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset1829C to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18210 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset18150 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3938 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset150D8 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset150F0 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15108 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15120 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15180 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15138 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3948 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset1333C to i32), i32 ptrtoint (ptr @SetActorAnimationPreset1342C to i32), i32 ptrtoint (ptr @SetActorAnimationPreset13474 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset17D74 to i32), i32 ptrtoint (ptr @SetActorClassAnimationPreset136A0 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset133CC to i32), i32 ptrtoint (ptr @SetActorAnimationPreset13324 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3958 to i32), i32 ptrtoint (ptr @SetActorClassAnimationPreset13700 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3968 to i32), i32 ptrtoint (ptr @SetActorClassAnimationPreset13718 to i32), i32 ptrtoint (ptr @SetActorClassAnimationPreset137A8 to i32)], align 4
@gMapBank6Entry19InitialWords = dso_local local_unnamed_addr constant [22 x i32] [i32 21, i32 0, i32 ptrtoint (ptr @ConfigureMapBank6PresetA3BDC to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3BFC to i32), i32 ptrtoint (ptr @SetGraphicsAnimationAndIndicator15270 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15150 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15168 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15180 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15198 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset151B0 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset151C8 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3C20 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3C50 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationAndIndicator15294 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3C8C to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15228 to i32), i32 ptrtoint (ptr @ConfigureMapBank6PresetA3C9C to i32), i32 ptrtoint (ptr @SetActorAnimationPreset132F4 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset13474 to i32), i32 ptrtoint (ptr @SetActorAnimationPreset134A4 to i32), i32 ptrtoint (ptr @SetGraphicsAnimationPreset15138 to i32), i32 ptrtoint (ptr @SetRenderSetupAnimationPreset17B8C to i32)], align 4

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA20C4() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA20D4() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA20F8() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2108() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2118() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18A88() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2128() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationAndIndicator18AD0() #0

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14EF4() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset181E0() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18314() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2168() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA217C() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2190() #0

declare dso_local arm_apcscc void @SetActorClassAnimationPreset137F0() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset13208() #0

declare dso_local arm_apcscc void @SetActorClassAnimationPreset136A0() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset12F40() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset12EC8() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA21B4() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2B2C() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2B5C() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator15048() #0

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14F3C() #0

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14F6C() #0

declare dso_local arm_apcscc void @ConfigureExtendedAuxiliaryNeighbors14F9C() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset12E38() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset13474() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2B8C() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2BA4() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18078() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA2BB4() #0

declare dso_local arm_apcscc void @ApplyActorAnimationPairA3908() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset180A8() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3918() #0

declare dso_local arm_apcscc void @SelectActorAnimationForXZDirection187F8() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset184A0() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset184B8() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset17F0C() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3928() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset183A4() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset184D0() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18138() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset1850C() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset182FC() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18524() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18048() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset1829C() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18210() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18150() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3938() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset150D8() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset150F0() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15108() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15120() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15180() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15138() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3948() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset1333C() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset1342C() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17D74() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset133CC() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset13324() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3958() #0

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13700() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3968() #0

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13718() #0

declare dso_local arm_apcscc void @SetActorClassAnimationPreset137A8() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3BDC() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3BFC() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator15270() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15150() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15168() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15198() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset151B0() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset151C8() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3C20() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3C50() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator15294() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3C8C() #0

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15228() #0

declare dso_local arm_apcscc void @ConfigureMapBank6PresetA3C9C() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset132F4() #0

declare dso_local arm_apcscc void @SetActorAnimationPreset134A4() #0

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17B8C() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
