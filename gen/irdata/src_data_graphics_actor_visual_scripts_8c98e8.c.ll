; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8C98E8 = type { [23 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [62 x i8], [57 x i8], [57 x i8], [21 x i8], [21 x i8], [14 x i8], [12 x i8], [12 x i8], [14 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [24 x i8], [23 x i8], [39 x i8], %struct.AnimationTurnCommand, %struct.AnimationCallbackCommand, [11 x i8] }
%struct.AnimationTurnCommand = type <{ i8, ptr, i8, i8, i8 }>
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8C98E8 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8C98E8 { [23 x i8] c"\88\00\A0\C7\01\02H\91\1D\08\84\03\00@\01\01@\01H\91\1D\08\80", [12 x i8] c"\CBh\91\1D\08\CC\CD\7F\00\83\00\00", [12 x i8] c"\CB\A4\A8\1D\08\CC\CD\7F\00\83\00\00", [12 x i8] c"\CBH\93\1D\08\CC\CD\7F\00\83\00\00", [12 x i8] c"\CBH\93\1D\08\CC\CD\7F\01\83\00\00", [62 x i8] c"\AC\00\00\02\00\CBl\9C\1D\08\CC\CD\03\01\CB \9E\1D\08\CC\CD\05\01\CBl\9C\1D\08\CC\CD\03\01\CB\E0\9F\1D\08\CC\CD\03\01\CB\90\A1\1D\08\CC\CD\05\01\CB\E0\9F\1D\08\CC\CD\03\01\83\00\00", [57 x i8] c"\CBl\9C\1D\08\CC\CD\03\00\CB \9E\1D\08\CC\CD\05\00\CBl\9C\1D\08\CC\CD\03\00\CB\E0\9F\1D\08\CC\CD\03\00\CB\90\A1\1D\08\CC\CD\05\00\CB\E0\9F\1D\08\CC\CD\03\00\83\00\00", [57 x i8] c"\CBl\9C\1D\08\CC\CD\03\01\CB \9E\1D\08\CC\CD\05\01\CBl\9C\1D\08\CC\CD\03\01\CB\E0\9F\1D\08\CC\CD\03\01\CB\90\A1\1D\08\CC\CD\05\01\CB\E0\9F\1D\08\CC\CD\03\01\83\00\00", [21 x i8] c"\CB\18\A7\1D\08\CC\CD\06\00\CB\A4\A8\1D\08\CC\CD\06\00\83\00\00", [21 x i8] c"\CBH\A3\1D\08\CC\CD\06\00\CB4\A5\1D\08\CC\CD\06\00\83\00\00", [14 x i8] c"\CB\D4\98\1D\08\CC\CD\1E\00\81\17\9A\8C\08", [12 x i8] c"\CB\D4\98\1D\08\CC\CD\7F\00\83\00\00", [12 x i8] c"\A3\15\00\A4\F9\FF\04\88S\88\08\80", [14 x i8] c"\CB\A8\9A\1D\08\CC\CD\1E\00\81=\9A\8C\08", [12 x i8] c"\CB\A8\9A\1D\08\CC\CD\7F\00\83\00\00", [12 x i8] c"\A3\ED\FF\A4\F1\FF\04\90S\88\08\80", [12 x i8] c"\CB0\AC\1D\08\CC\CD\7F\00\83\00\00", [12 x i8] c"\A3\01\00\A4\E2\FF\042T\88\08\80", [24 x i8] c"\D0\14\00\CB$\AA\1D\08\CC\CD\04\00\CB$\AA\1D\08\CC\CD\04\08\83\03\00", [23 x i8] c"\A3\E9\FF\A4\F8\FF\04\C8R\88\08\A3\EA\FF\A4\F8\FF\04\C8R\88\08\80", [39 x i8] c"\CB\F0\96\1D\08\CC\CD\06\00\CB\F4\94\1D\08\CC\CD\05\00\CB\F0\96\1D\08\CC\CD\05\01\CB\F4\94\1D\08\CC\CD\06\00\83\00\00", %struct.AnimationTurnCommand <{ i8 -115, ptr @AnimationCallbackInitializeRenderTurn, i8 16, i8 10, i8 15 }>, %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackUpdateRenderTurn }>, [11 x i8] c"\85wE\00\02\02\CB\9A\8C\08\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackInitializeRenderTurn(ptr noundef, ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackUpdateRenderTurn(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
