; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E7934 = type { [23 x i8], [23 x i8], [23 x i8], [180 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [13 x i8], [8 x i8], [8 x i8], [8 x i8], [18 x i8], [1 x i8], [23 x i8], [8 x i8], [13 x i8], %struct.AnimationRegionAudioCommand, [3 x i8] }
%struct.AnimationRegionAudioCommand = type <{ i8, ptr, i8, i16, i16, i16, i16, i8, i8, i16 }>

@gActorVisualScripts8E7934 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E7934 { [23 x i8] c"\88\00@\C8\01\02\188-\08\84\03\00\90\00\01\90\00\188-\08\80", [23 x i8] c"\88\00\E0\C7\01\02\D48-\08\84\03\00`\01\01`\01\D48-\08\80", [23 x i8] c"\88\00\E0\C8\01\0209-\08\84\03\00\E0\01\01\E0\0109-\08\80", [180 x i8] c"\00\CB\00\CC8-\08\00\CC\00\AC8-\08\00\CD\00\B48-\08\00\CE\00\BC8-\08\08\CF\00\C48-\08\00\CB\00\C48-\08\00\CC\00\CC8-\08\00\CD\00\AC8-\08\00\CE\00\B48-\08\08\CF\00\BC8-\08\00\CB\00\BC8-\08\00\CC\00\C48-\08\00\CD\00\CC8-\08\00\CE\00\AC8-\08\08\CF\00\B48-\08\00\CB\00\B48-\08\00\CC\00\BC8-\08\00\CD\00\C48-\08\00\CE\00\CC8-\08\08\CF\00\AC8-\08\00\CB\00\AC8-\08\00\CC\00\B48-\08\00\CD\00\BC8-\08\00\CE\00\C48-\08\08\CF\00\CC8-\08\82yy\8E\08", [8 x i8] c"\7F\FE\98\88\08\83\00\00", [8 x i8] c"\7F \99\88\08\83\00\00", [8 x i8] c"\7F\A2\9A\88\08\83\00\00", [8 x i8] c"\7F@\99\88\08\83\00\00", [13 x i8] c"\08Z\99\88\08\08\80\99\88\08\83\00\00", [8 x i8] c"\7F\A6\99\88\08\83\00\00", [8 x i8] c"\7F\C4\9A\88\08\83\00\00", [8 x i8] c"\7F&\9A\88\08\83\00\00", [18 x i8] c"\87\03\04F\9A\88\08\04\DC\DAX\08\88\81\84z\8E\08", [1 x i8] c"\80", [23 x i8] c"\87\03\04`\9A\88\08\04\DC\DAX\08\88\01z\9A\88\08\81\9Cz\8E\08", [8 x i8] c"\7Fz\9A\88\08\83\00\00", [13 x i8] c"\18\DC\DAX\08\7F\8E\9A\88\08\83\05\00", %struct.AnimationRegionAudioCommand <{ i8 -115, ptr @AnimationCallbackRegionAudio, i8 0, i16 72, i16 0, i16 288, i16 264, i8 1, i8 3, i16 42 }>, [3 x i8] c"\83\00\00" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackRegionAudio(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
