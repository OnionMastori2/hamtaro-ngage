; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EFB6C = type { [8 x i8], [8 x i8], [86 x i8], %struct.AnimationApproachCommand, [20 x i8], %struct.AnimationApproachCommand, [56 x i8] }
%struct.AnimationApproachCommand = type <{ i8, ptr, i8 }>

@gActorVisualScripts8EFB6C = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EFB6C { [8 x i8] c"\7F\125\89\08\83\00\00", [8 x i8] c"\7F 5\89\08\83\00\00", [86 x i8] c"\AC\00\80\00\00\AD\00\00\FE\FF\B0\00@\00\00\11\F8Q\88\08\AD\00\80\02\00\B0\00\00\00\00 \F8Q\88\08\AD\00\00\00\00\D0\0E\00\ACxx\00\00\AD\00\00\FE\FF\B0\00@\00\00\11\F8Q\88\08\AC\00\00\00\00\AD\00\00\00\00\B0\00\00\00\00\D0\0E\00\81\B5C\8E\08", %struct.AnimationApproachCommand <{ i8 -115, ptr @AnimationCallbackApproachMapBank5ClassPosition, i8 16 }>, [20 x i8] c"\10\DC\DAX\08\AC\00\00\00\00\AE\00\00\00\00\81 \F6\89\08", %struct.AnimationApproachCommand <{ i8 -115, ptr @AnimationCallbackApproachMapBank5ClassPosition, i8 16 }>, [56 x i8] c"\D0\0E\00\AD\00\00\FC\FF\B0\00\80\00\00\CB`\FA\19\08\CC\CD\10\00\AC\00\00\00\00\AE\00\00\00\00\CB`\FA\19\08\CC\CD\01\00\AD\00\00\00\00\B0\00\00\00\00\81\9Fj\8B\08" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackApproachMapBank5ClassPosition(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
