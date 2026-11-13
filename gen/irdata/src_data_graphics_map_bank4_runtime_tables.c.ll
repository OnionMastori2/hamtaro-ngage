; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapBank4JumpPosition = type { i32, i32 }

@gMapBank4JumpPositions = dso_local local_unnamed_addr constant [6 x %struct.MapBank4JumpPosition] [%struct.MapBank4JumpPosition { i32 2097152, i32 3670016 }, %struct.MapBank4JumpPosition { i32 9437184, i32 7340032 }, %struct.MapBank4JumpPosition { i32 6291456, i32 7340032 }, %struct.MapBank4JumpPosition { i32 4718592, i32 5242880 }, %struct.MapBank4JumpPosition { i32 7864320, i32 4194304 }, %struct.MapBank4JumpPosition { i32 11010048, i32 5242880 }], align 4
@gMapBank4Entry3InitialWords = dso_local local_unnamed_addr constant [17 x i32] [i32 16, i32 ptrtoint (ptr @ConfigureMapBank4Preset69E98 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset69EC4 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16FBC to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset69EEC to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset69F28 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset1701C to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset69F44 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset69F80 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset1704C to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16FD4 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset69F94 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17064 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset69FC8 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset16FA4 to i32), i32 ptrtoint (ptr @SetDirectionalAnimationPreset17034 to i32), i32 ptrtoint (ptr @ClearRenderSetupNeighborFields6018E48 to i32)], align 4
@gMapBank4CounterKinds = dso_local local_unnamed_addr constant [10 x i8] c"\02\00\02\01\03\03\01\02\04\00", align 1
@gMapBank4CounterX = dso_local local_unnamed_addr constant [50 x i8] c"(8HXhx\88\98\A8\B8(8HXhx\88\98\A8\C0(8HXhx\88\98\A8\B8(8HXhx\88\98\A8\C0(8HXhx\88\98\A8\C0", align 1
@gMapBank4CounterInitialAnimations = dso_local local_unnamed_addr constant [5 x ptr] [ptr inttoptr (i32 143573857 to ptr), ptr inttoptr (i32 143573924 to ptr), ptr inttoptr (i32 143573991 to ptr), ptr inttoptr (i32 143574058 to ptr), ptr inttoptr (i32 143574125 to ptr)], align 4
@gMapBank4CounterSelectedAnimations = dso_local local_unnamed_addr constant [6 x ptr] [ptr inttoptr (i32 143573865 to ptr), ptr inttoptr (i32 143573932 to ptr), ptr inttoptr (i32 143573999 to ptr), ptr inttoptr (i32 143574066 to ptr), ptr inttoptr (i32 143574133 to ptr), ptr inttoptr (i32 143259168 to ptr)], align 4
@gMapBank4CounterCompletedAnimations = dso_local local_unnamed_addr constant [5 x ptr] [ptr inttoptr (i32 143573908 to ptr), ptr inttoptr (i32 143573975 to ptr), ptr inttoptr (i32 143574042 to ptr), ptr inttoptr (i32 143574109 to ptr), ptr inttoptr (i32 143574176 to ptr)], align 4
@gMapBank4Entry12InitialWords = dso_local local_unnamed_addr constant [27 x i32] [i32 26, i32 ptrtoint (ptr @ConfigureMapBank4Preset6C68C to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C714 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C768 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C794 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C824 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C850 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C88C to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C8DC to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C92C to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6C9D8 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6CA20 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6CA70 to i32), i32 ptrtoint (ptr @SetSecondaryAnimationPreset13C2C to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset1906C to i32), i32 ptrtoint (ptr @SetSecondaryAnimationPreset13E50 to i32), i32 ptrtoint (ptr @ConfigureRenderSetupPreset1B254 to i32), i32 ptrtoint (ptr @ConfigureSecondaryNextSlotOnly13EAC to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6CA88 to i32), i32 ptrtoint (ptr @SetSecondaryAnimationPreset13F68 to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6CAA0 to i32), i32 ptrtoint (ptr @SetSecondaryAnimationPreset13AD0 to i32), i32 ptrtoint (ptr @SetSecondaryAnimationPreset13B54 to i32), i32 ptrtoint (ptr @SetSecondaryAnimationPreset13B6C to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6CB5C to i32), i32 ptrtoint (ptr @SetFollowerAnimationTowardActor13A5C to i32), i32 ptrtoint (ptr @ConfigureMapBank4Preset6CB70 to i32)], align 4
@gMapBank4SteppedPath = dso_local local_unnamed_addr constant [36 x i16] [i16 -32767, i16 264, i16 192, i16 -32767, i16 160, i16 192, i16 -32767, i16 160, i16 232, i16 -32767, i16 48, i16 232, i16 -32767, i16 48, i16 216, i16 16388, i16 240, i16 0, i16 -32767, i16 48, i16 216, i16 -32767, i16 48, i16 232, i16 -32767, i16 144, i16 232, i16 -32767, i16 144, i16 176, i16 -32767, i16 264, i16 176, i16 -1, i16 -1, i16 -1], align 2
@gMapBank4DirectionalPathAnimations = dso_local local_unnamed_addr constant [24 x i8] c"\0B\0C\0D\0E\00\01\02\03\13\13\14\15\1A\1B\13\13\1E\1F !\1E\1F&'", align 1
@gMapBank4BlockedPathAnimations = dso_local local_unnamed_addr constant [24 x i8] c"\0F\10\11\12\00\01\02\03\16\17\18\19\1C\1D\13\13\22#$%\1E\1F()", align 1

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69E98() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69EC4() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16FBC() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69EEC() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69F28() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1701C() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69F44() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69F80() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1704C() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16FD4() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69F94() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17064() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset69FC8() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16FA4() #0

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17034() #0

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E48() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C68C() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C714() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C768() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C794() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C824() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C850() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C88C() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C8DC() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C92C() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6C9D8() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6CA20() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6CA70() #0

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13C2C() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1906C() #0

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13E50() #0

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B254() #0

declare dso_local arm_apcscc void @ConfigureSecondaryNextSlotOnly13EAC() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6CA88() #0

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13F68() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6CAA0() #0

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13AD0() #0

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13B54() #0

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13B6C() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6CB5C() #0

declare dso_local arm_apcscc void @SetFollowerAnimationTowardActor13A5C() #0

declare dso_local arm_apcscc void @ConfigureMapBank4Preset6CB70() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
