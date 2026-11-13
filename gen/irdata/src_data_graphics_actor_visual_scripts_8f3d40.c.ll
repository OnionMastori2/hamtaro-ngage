; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8F3D40 = type { [23 x i8], [23 x i8], [8 x i8], [6 x i8], %struct.AnimationCallbackCommand, [16 x i8], [2 x i8], %struct.AnimationCallbackCommand, [8 x i8], %struct.AnimationCallbackCommand, [31 x i8], [23 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8F3D40 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8F3D40 { [23 x i8] c"\88\00@\C8\01\02@fC\08\84\03\00\90\00\01\90\00@fC\08\80", [23 x i8] c"\88\00\E0\C8\01\02\C4fC\08\84\03\00\E0\01\01\E0\01\C4fC\08\80", [8 x i8] c"\7F\F0i\89\08\83\00\00", [6 x i8] c"\C1 \00\C2 \00", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackScaleMapBank6Auxiliary }>, [16 x i8] c"\01\04j\89\08\8C\AE\DC\01\02\14\00|=\8F\08", [2 x i8] c"\87\02", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackScaleMapBank6Auxiliary }>, [8 x i8] c"\01\04j\89\08\88\87\02", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackScaleMapBank6Auxiliary }>, [31 x i8] c"\01\DC\DAX\08\88\8C\AE\DC\01\02\00\00\91=\8F\08\87\03\01\04j\89\08\01\DC\DAX\08\88\80", [23 x i8] c"\88\00\C0\C8\01\02\18\B3C\08\84\03\00\D0\00\01\D0\00\18\B3C\08\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackScaleMapBank6Auxiliary(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
