; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8F4396 = type { %struct.AnimationSteppedPathCommand, [3 x i8] }
%struct.AnimationSteppedPathCommand = type <{ i8, ptr, i8, i16, i16, i16, i32, i8, i16, i16 }>

@gActorVisualScripts8F4396 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8F4396 { %struct.AnimationSteppedPathCommand <{ i8 -115, ptr @AnimationCallbackFollowMapBank4SteppedPath, i8 16, i16 435, i16 228, i16 699, i32 143606660, i8 0, i16 237, i16 128 }>, [3 x i8] c"\83\00\00" }, align 2

declare dso_local arm_apcscc i32 @AnimationCallbackFollowMapBank4SteppedPath(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
