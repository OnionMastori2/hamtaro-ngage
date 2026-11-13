; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EF9B4 = type { [25 x i8], [8 x i8], [5 x i8], %struct.AnimationCallbackCommand, [3 x i8], [13 x i8], [18 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8EF9B4 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EF9B4 { [25 x i8] c"\8A \03`\01|\B8=\08\03`\01\A4\B8=\08\8B\01`\01|\B8=\08\80", [8 x i8] c"\7F</\89\08\83\00\00", [5 x i8] c"\01</\89\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackOscillateMapBank5GridY }>, [3 x i8] c"\83\05\00", [13 x i8] c"\03\D0/\89\08\03\0E0\89\08\83\00\00", [18 x i8] c"\87\02\04L0\89\08\04l0\89\08\88\81\D5\F9\8E\08" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackOscillateMapBank5GridY(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
