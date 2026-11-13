; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E4CB4 = type { [23 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [23 x i8], [8 x i8], [23 x i8], [8 x i8], %struct.AnimationCallbackCommand, [3 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8E4CB4 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E4CB4 { [23 x i8] c"\88\00@\C8\01\02\C0\CB$\08\84\03\00\90\00\01\90\00\C0\CB$\08\80", [23 x i8] c"\88\00\E0\C8\01\02\88\CC$\08\84\03\00\E0\01\01\E0\01\88\CC$\08\80", [23 x i8] c"\88\00\E0\C7\01\02\F8'\18\08\84\03\00`\01\01`\01\F8'\18\08\80", [23 x i8] c"\88\00\00\C8\01\02\B8\CE\0F\08\84\03\00p\01\01p\01\B8\CE\0F\08\80", [23 x i8] c"\88\00 \C8\01\02\A0[\1D\08\84\03\00\80\01\01\80\01\A0[\1D\08\80", [8 x i8] c"\7F\C4d\88\08\83\00\00", [8 x i8] c"\7F\D8d\88\08\83\00\00", [8 x i8] c"\7F\E6d\88\08\83\00\00", [8 x i8] c"\7F\0Ce\88\08\83\00\00", [8 x i8] c"\7F@e\88\08\83\00\00", [8 x i8] c"\7F2e\88\08\83\00\00", [23 x i8] c"\0E\B8e\88\08\16Pe\88\08\0E\B8e\88\08\16 f\88\08\83\00\00", [8 x i8] c"\7F\88f\88\08\83\00\00", [23 x i8] c"\0A\96f\88\08\14\CEf\88\08\0A\96f\88\08\14\06g\88\08\83\00\00", [8 x i8] c"\7F>g\88\08\83\00\00", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackMoveActorPairAlongRegion }>, [3 x i8] c"\83\00\00", [12 x i8] c"\97>/\01\02\E4\E1\00\06\05\05\80", [12 x i8] c"\97 1\01\02\E4\E1\00\06\05\05\80", [12 x i8] c"\972/\01\02\D2\E1\00\06\05\05\80", [12 x i8] c"\97\B20\01\02\D2\E1\00\06\05\05\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackMoveActorPairAlongRegion(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
