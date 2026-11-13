; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EE850 = type { [23 x i8], [23 x i8], %struct.AnimationLinearPathCommand, [3 x i8], [8 x i8] }
%struct.AnimationLinearPathCommand = type <{ i8, ptr, i8, i16, i16, i16, i32 }>

@gMapBank5RandomPath = external dso_local constant [0 x i16], align 2
@gActorVisualScripts8EE850 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EE850 { [23 x i8] c"\88\00\80\C8\01\024d=\08\84\03\00\B0\00\01\B0\004d=\08\80", [23 x i8] c"\88\00\E0\C8\01\024g=\08\84\03\00\E0\01\01\E0\014g=\08\80", %struct.AnimationLinearPathCommand <{ i8 -115, ptr @AnimationCallbackFollowMapBank4Path, i8 16, i16 452, i16 224, i16 678, i32 ptrtoint (ptr @gMapBank5RandomPath to i32) }>, [3 x i8] c"\83\00\00", [8 x i8] c"\7F\DC\DAX\08\83\00\00" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackFollowMapBank4Path(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
