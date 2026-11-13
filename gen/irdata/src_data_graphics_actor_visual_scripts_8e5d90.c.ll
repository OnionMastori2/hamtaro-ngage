; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E5D90 = type { %struct.AnimationRegionAudioCommand, [3 x i8], [8 x i8], [58 x i8], [8 x i8], %struct.AnimationRegionAudioCommand, [3 x i8], [13 x i8], [68 x i8], [31 x i8], [26 x i8], [31 x i8], [8 x i8], [8 x i8], [8 x i8], [138 x i8], [138 x i8], [23 x i8], [23 x i8], [23 x i8] }
%struct.AnimationRegionAudioCommand = type <{ i8, ptr, i8, i16, i16, i16, i16, i8, i8, i16 }>

@gActorVisualScripts8E5D90 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E5D90 { %struct.AnimationRegionAudioCommand <{ i8 -115, ptr @AnimationCallbackRegionAudio, i8 -127, i16 144, i16 0, i16 240, i16 128, i8 0, i8 0, i16 42 }>, [3 x i8] c"\83\00\00", [8 x i8] c"\7FLt\88\08\83\00\00", [58 x i8] c"\84JE\00\02\00\E7]\8E\08\D0\10\00\04ft\88\08\04\80t\88\08\04ft\88\08\04Lt\88\08\04ft\88\08\04\80t\88\08\04ft\88\08\04Lt\88\08(Lt\88\08", [8 x i8] c"\01Lt\88\08\83\00\00", %struct.AnimationRegionAudioCommand <{ i8 -115, ptr @AnimationCallbackRegionAudio, i8 -127, i16 64, i16 0, i16 152, i16 128, i8 0, i8 0, i16 43 }>, [3 x i8] c"\83\00\00", [13 x i8] c"\84KE\00\02\00\11^\8E\08\D0\10\00", [68 x i8] c"\05ft\88\08\05\80t\88\08\05ft\88\08\05Lt\88\08\05ft\88\08\05\80t\88\08\05ft\88\08\05Lt\88\08\05ft\88\08\05\80t\88\08\05ft\88\08\05Lt\88\08<Lt\88\08\83\00\00", [31 x i8] c"\87\06\D0\10\00\02ft\88\08\03\80t\88\08\02ft\88\08\03Lt\88\08\88\81\04^\8E\08", [26 x i8] c"\D0\10\00\02ft\88\08\03\80t\88\08\02ft\88\08\03Lt\88\08\83\00\00", [31 x i8] c"\87\0C\D0\10\00\02ft\88\08\02\80t\88\08\02ft\88\08\02Lt\88\08\88\81\AD]\8E\08", [8 x i8] c"\7F\F0t\88\08\83\00\00", [8 x i8] c"\7F\22u\88\08\83\00\00", [8 x i8] c"\7FNu\88\08\83\00\00", [138 x i8] c"\1E\A8r\88\08\02\C2r\88\08\87\02\D0\18\00\AD\00\00\FD\FF\B0\00`\00\00\AC\00p\FE\FF\AE\00\90\01\00\11\D6r\88\08\AD\00\00\00\00\B0\00\00\00\00\AC\00\00\00\00\AE\00\00\00\00\01\D6r\88\08\01\C2r\88\08\08\A8r\88\08\88\1E\A8r\88\08\87\03\D0\18\00\AD\00\00\FD\FF\B0\00`\00\00\AC\00\00\FD\FF\14\D6r\88\08\AD\00\00\00\00\B0\00\00\00\00\AC\00\00\00\00\01\D6r\88\08\01\C2r\88\08\08\A8r\88\08\88\80", [138 x i8] c"\1E\EAr\88\08\02\04s\88\08\87\02\D0\18\00\AD\00\00\FD\FF\B0\00`\00\00\AC\00\90\01\00\AE\00\90\01\00\11\18s\88\08\AD\00\00\00\00\B0\00\00\00\00\AC\00\00\00\00\AE\00\00\00\00\01\18s\88\08\01\04s\88\08\08\EAr\88\08\88\1E\EAr\88\08\87\03\D0\18\00\AD\00\00\FD\FF\B0\00`\00\00\AC\00\00\03\00\14\18s\88\08\AD\00\00\00\00\B0\00\00\00\00\AC\00\00\00\00\01\18s\88\08\01\04s\88\08\08\EAr\88\08\88\80", [23 x i8] c"\95\00\00\00\00\80;)\08`\00\02\02\A1`\00\02\02\0D\04\11\08\80", [23 x i8] c"\88\00\E0\C8\01\02\F0\E6(\08\84\03\00\E0\01\01\E0\01\F0\E6(\08\80", [23 x i8] c"\88\00 \C8\01\02L\E6(\08\84\03\00\80\00\01\80\00L\E6(\08\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackRegionAudio(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
