; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EAD10 = type { [23 x i8], [23 x i8], [23 x i8], [18 x i8], [13 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [23 x i8], %struct.AnimationCallbackCommand, [3 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8EAD10 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EAD10 { [23 x i8] c"\88\00`\C8\01\02\F8\1D3\08\84\03\00\A0\00\01\A0\00\F8\1D3\08\80", [23 x i8] c"\88\00\E0\C7\01\02\88\1B7\08\84\03\00`\01\01`\01\88\1B7\08\80", [23 x i8] c"\88\00\E0\C8\01\02\98\1B7\08\84\03\00\E0\01\01\E0\01\98\1B7\08\80", [18 x i8] c"\87\02\08\10\E2\88\08\086\E2\88\08\88\81t\AD\8E\08", [13 x i8] c"\08\10\E2\88\08\086\E2\88\08\83\00\00", [8 x i8] c"\7F\10\E2\88\08\83\00\00", [8 x i8] c"\7F\\\E2\88\08\83\00\00", [8 x i8] c"\7F\9A\E2\88\08\83\00\00", [8 x i8] c"\7F\C0\E2\88\08\83\00\00", [23 x i8] c"\04\A4n\88\08\02\B8n\88\08\02\C6n\88\08\04\B8n\88\08\83\00\00", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackTickMapBank3SqrtMotion }>, [3 x i8] c"\83\00\00" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackTickMapBank3SqrtMotion(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
