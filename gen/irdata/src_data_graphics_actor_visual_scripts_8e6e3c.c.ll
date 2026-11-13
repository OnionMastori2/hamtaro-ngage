; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E6E3C = type { [23 x i8], [23 x i8], [23 x i8], [117 x i8], [9 x i8], %struct.AnimationCallbackCommand, [3 x i8], [8 x i8], [8 x i8], [9 x i8], [8 x i8], [54 x i8], [8 x i8], [49 x i8], [14 x i8], [37 x i8], [10 x i8], [16 x i8], [23 x i8], [36 x i8], [58 x i8], [36 x i8], [33 x i8], [10 x i8], [8 x i8], [10 x i8], [8 x i8], %struct.AnimationRegionAudioCommand, [3 x i8], [46 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>
%struct.AnimationRegionAudioCommand = type <{ i8, ptr, i8, i16, i16, i16, i16, i8, i8, i16 }>

@gActorVisualScripts8E6E3C = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E6E3C { [23 x i8] c"\88\00\C0\C8\01\02\FC\1A+\08\84\03\00\D0\00\01\D0\00\FC\1A+\08\80", [23 x i8] c"\88\00\E0\C8\01\02h\1B+\08\84\03\00\E0\01\01\E0\01h\1B+\08\80", [23 x i8] c"\88\00\00\C8\01\02\C8\1B+\08\84\03\00p\01\01p\01\C8\1B+\08\80", [117 x i8] c"\00\E2\00`\1B+\08\00\E3\00H\1B+\08\00\E4\00P\1B+\08\0A\E5\00X\1B+\08\00\E2\00X\1B+\08\00\E3\00`\1B+\08\00\E4\00H\1B+\08\0A\E5\00P\1B+\08\00\E2\00P\1B+\08\00\E3\00X\1B+\08\00\E4\00`\1B+\08\0A\E5\00H\1B+\08\00\E2\00H\1B+\08\00\E3\00P\1B+\08\00\E4\00X\1B+\08\0A\E5\00`\1B+\08\82\81n\8E\08", [9 x i8] c"\8E\01\01\02\04\07\0E\FF\80", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackUpdateMapChoiceClassHeights }>, [3 x i8] c"\83\00\00", [8 x i8] c"\7F(\89\88\08\83\00\00", [8 x i8] c"\7F<\89\88\08\83\00\00", [9 x i8] c"\C3\19\00\897@\8E\08\80", [8 x i8] c"\7Fb\89\88\08\83\00\00", [54 x i8] c"\84JE\00\02\00^o\8E\08\D0\10\00\87\03\04|\89\88\08\06\96\89\88\08\88\08|\89\88\08\04|\89\88\08\06\96\89\88\08 |\89\88\08(\DC\DAX\08\83\00\00", [8 x i8] c"\01\DC\DAX\08\83\00\00", [49 x i8] c"\87\03\D0\10\00\87\03\02|\89\88\08\03\96\89\88\08\88\04|\89\88\08\02|\89\88\08\03\96\89\88\08\10|\89\88\08\88<|\89\88\08\81(o\8E\08", [14 x i8] c"\A9\FA\FF\AA\EB\FF\7F\B0\89\88\08\83\06\00", [37 x i8] c"\A9\E8\FF\AA\F6\FF\BC\00\00\02\B8\89\88\08\AC\00\00\FD\FF\AD\00\80\FE\FF\BDr\FC\D0\0E\00@\B8\89\88\08\B2\80", [10 x i8] c"\1F\DC\DAX\08\81\D4o\8E\08", [16 x i8] c"\A6\10\00\00\A8\10\00\00\7FV\8B\88\08\83\08\00", [23 x i8] c"\AC\00\80\FF\FF\AF\00\01\00\00@\16\8B\88\08\B9\00\80\81\FBo\8E\08", [36 x i8] c"\87\02\AC\00\80\FF\FF\AE\00\00\00\00\AF\00\01\00\00\B1\00\00\00\00@\16\8B\88\08\B9\00\80\88\81\1Fp\8E\08", [58 x i8] c"\AC\00\00\00\00\AE\00\00\00\00\AF\00\00\00\00\B1\00\00\00\00\01\16\8B\88\08\AC\00\00\00\00\AE\00\80\FF\FF\AF\00\00\00\00\B1\00\01\00\00@\E4\8A\88\08\BB\00\80\81Yp\8E\08", [36 x i8] c"\87\02\AC\00\80\00\00\AE\00\00\00\00\AF\00\FF\FF\FF\B1\00\00\00\00@6\8B\88\08\B9\00\80\88\81}p\8E\08", [33 x i8] c"\AC\00\00\00\00\AE\00\80\00\00\AF\00\00\00\00\B1\00\FF\FF\FF@\B2\8A\88\08\BB\00\80\81\FBo\8E\08", [10 x i8] c"\04\16\8B\88\08\81\A8p\8E\08", [8 x i8] c"\7F\16\8B\88\08\83\00\00", [10 x i8] c"\04\B2\8A\88\08\81\9Ep\8E\08", [8 x i8] c"\7F\DC\DAX\08\83\00\00", %struct.AnimationRegionAudioCommand <{ i8 -115, ptr @AnimationCallbackRegionAudio, i8 -127, i16 0, i16 0, i16 288, i16 80, i8 0, i8 0, i16 42 }>, [3 x i8] c"\83\00\00", [46 x i8] c"\90\04\88\FA\FF\81\02\00\88\06\00\81\02\00\91\90\04\88\FC\FF\81\02\00\88\04\00\81\02\00\91\90\02\88\FE\FF\81\01\00\88\02\00\81\01\00\91\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackUpdateMapChoiceClassHeights(ptr noundef, ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackRegionAudio(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
