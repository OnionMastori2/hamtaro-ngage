; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8FC97C = type { [23 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [2 x i8], %struct.AnimationCallbackCommand, [3 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [20 x i8], [28 x i8], [15 x i8], [8 x i8], [28 x i8], [35 x i8], [8 x i8], [15 x i8], [8 x i8], [15 x i8], [8 x i8], [13 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8FC97C = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8FC97C { [23 x i8] c"\88\00\00\C8\01\02DvW\08\84\02\00p\00\01p\00DvW\08\80", [23 x i8] c"\88\00`\C8\01\02,wW\08\84\02\00\A0\01\01\A0\01,wW\08\80", [23 x i8] c"\88\00\80\C8\01\02,\03W\08\84\02\00\B0\00\01\B0\00,\03W\08\80", [23 x i8] c"\88\00\E0\C7\01\02\D4\03W\08\84\02\00`\01\01`\01\D4\03W\08\80", [23 x i8] c"\88\00\E0\C8\01\02,\04W\08\84\02\00\E0\01\01\E0\01,\04W\08\80", [2 x i8] c"\95\80", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackMirrorActorZAndAnimation }>, [3 x i8] c"\83\00\00", [8 x i8] c"\7FxI\88\08\83\00\00", [8 x i8] c"\7F\98K\88\08\83\00\00", [8 x i8] c"\7F\EE\EA\89\08\83\00\00", [8 x i8] c"\7F\C2\EB\89\08\83\00\00", [8 x i8] c"\7F\98\EB\89\08\83\00\00", [8 x i8] c"\7F\C4\EA\89\08\83\00\00", [20 x i8] c"\06\D2\EA\89\08(\E0\EA\89\08\06\D2\EA\89\08\81!\CA\8F\08", [28 x i8] c"\1E\10\EC\89\08\06*\EC\89\08\06\10\EC\89\08\06*\EC\89\08\06\10\EC\89\08\83\00\00", [15 x i8] c"\0A\F6\EB\89\08\1ED\EC\89\08\81h\CA\8F\08", [8 x i8] c"\7FD\EC\89\08\83\00\00", [28 x i8] c"\1E^\EC\89\08\06l\EC\89\08\06^\EC\89\08\06l\EC\89\08\06^\EC\89\08\83\00\00", [35 x i8] c"\1E\F6\EB\89\08\06\86\EC\89\08\0A\A0\EC\89\08\06\BA\EC\89\08\08\E0\EC\89\08\06\DC\EB\89\08\81\AF\CA\8F\08", [8 x i8] c"\7F\DC\EB\89\08\83\00\00", [15 x i8] c"\1E\06\ED\89\08\06\14\ED\89\08\81\C6\CA\8F\08", [8 x i8] c"\7F\14\ED\89\08\83\00\00", [15 x i8] c"\06\22\ED\89\08\1E0\ED\89\08\81\DD\CA\8F\08", [8 x i8] c"\7F0\ED\89\08\83\00\00", [13 x i8] c"\1E\B2\EB\89\08\7F\BA\EB\89\08\83\05\00", [8 x i8] c"\7F>\ED\89\08\83\00\00", [8 x i8] c"\7FF\ED\89\08\83\00\00", [8 x i8] c"\7FN\ED\89\08\83\00\00", [8 x i8] c"\7FV\ED\89\08\83\00\00", [8 x i8] c"\7F^\ED\89\08\83\00\00", [8 x i8] c"\7Ff\ED\89\08\83\00\00", [8 x i8] c"\7Fn\ED\89\08\83\00\00", [8 x i8] c"\7Fv\ED\89\08\83\00\00", [8 x i8] c"\7F~\ED\89\08\83\00\00", [8 x i8] c"\7F\86\ED\89\08\83\00\00", [8 x i8] c"\7F\8E\ED\89\08\83\00\00", [8 x i8] c"\7F\A6\ED\89\08\83\00\00", [8 x i8] c"\7F,\EE\89\08\83\00\00", [8 x i8] c"\7F\96\ED\89\08\83\00\00", [8 x i8] c"\7FH\EE\89\08\83\00\00", [8 x i8] c"\7FP\EE\89\08\83\00\00", [8 x i8] c"\7FX\EE\89\08\83\00\00", [8 x i8] c"\7F`\EE\89\08\83\00\00", [8 x i8] c"\7Fh\EE\89\08\83\00\00" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackMirrorActorZAndAnimation(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
