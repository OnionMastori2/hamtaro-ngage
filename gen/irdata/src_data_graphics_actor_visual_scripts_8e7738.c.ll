; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E7738 = type { [23 x i8], [23 x i8], [23 x i8], [9 x i8], [117 x i8], [117 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [11 x i8], %struct.AnimationCallbackCommand, [3 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8E7738 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E7738 { [23 x i8] c"\88\00@\C8\01\02\9C\A5,\08\84\03\00\90\00\01\90\00\9C\A5,\08\80", [23 x i8] c"\88\00\00\C8\01\02X\A6,\08\84\03\00p\01\01p\01X\A6,\08\80", [23 x i8] c"\88\00\E0\C8\01\02\90\A6,\08\84\03\00\E0\01\01\E0\01\90\A6,\08\80", [9 x i8] c"\8E\01\01\04\12\0E\07\FF\80", [117 x i8] c"\00r\01\F4\A6,\08\00s\01\DC\A6,\08\00t\01\E4\A6,\08\0Bu\01\EC\A6,\08\00r\01\EC\A6,\08\00s\01\F4\A6,\08\00t\01\DC\A6,\08\0Bu\01\E4\A6,\08\00r\01\E4\A6,\08\00s\01\EC\A6,\08\00t\01\F4\A6,\08\0Bu\01\DC\A6,\08\00r\01\DC\A6,\08\00s\01\E4\A6,\08\00t\01\EC\A6,\08\0Bu\01\F4\A6,\08\82\86w\8E\08", [117 x i8] c"\00r\01\F4\A6,\08\00s\01\DC\A6,\08\00t\01\E4\A6,\08\06u\01\EC\A6,\08\00r\01\EC\A6,\08\00s\01\F4\A6,\08\00t\01\DC\A6,\08\06u\01\E4\A6,\08\00r\01\E4\A6,\08\00s\01\EC\A6,\08\00t\01\F4\A6,\08\06u\01\DC\A6,\08\00r\01\DC\A6,\08\00s\01\E4\A6,\08\00t\01\EC\A6,\08\06u\01\F4\A6,\08\82\FBw\8E\08", [8 x i8] c"\7F\E6\97\88\08\83\00\00", [8 x i8] c"\7F\FA\97\88\08\83\00\00", [8 x i8] c"\7F\CC\97\88\08\83\00\00", [8 x i8] c"\7F\1C\98\88\08\83\00\00", [8 x i8] c"\7F\0E\98\88\08\83\00\00", [8 x i8] c"\7F6\98\88\08\83\00\00", [8 x i8] c"\7FV\98\88\08\83\00\00", [8 x i8] c"\7Fd\98\88\08\83\00\00", [8 x i8] c"\7F\8C\98\88\08\83\00\00", [8 x i8] c"\7Fx\98\88\08\83\00\00", [8 x i8] c"\7F\B4\98\88\08\83\00\00", [11 x i8] c"\92|E\00\02\00\81\D3x\8E\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackUpdateMapChoiceFollowerPhase }>, [3 x i8] c"\83\00\00" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackUpdateMapChoiceFollowerPhase(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
