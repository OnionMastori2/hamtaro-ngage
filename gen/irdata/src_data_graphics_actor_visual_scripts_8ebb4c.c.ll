; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EBB4C = type { [8 x i8], [107 x i8], [12 x i8], [10 x i8], [14 x i8], %struct.AnimationRegionAudioCommand, [3 x i8], [9 x i8], [9 x i8], [10 x i8], [23 x i8], [23 x i8], [117 x i8], [75 x i8], [47 x i8], [47 x i8], [13 x i8] }
%struct.AnimationRegionAudioCommand = type <{ i8, ptr, i8, i16, i16, i16, i16, i8, i8, i16 }>

@gActorVisualScripts8EBB4C = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EBB4C { [8 x i8] c"\7F\AE\F5\88\08\83\00\00", [107 x i8] c"\A3x\00\A4\EF\FF\A5y\00\AD\00\00\FC\FF\B0\00 \00\00A\AE\F5\88\08\84\C4F\00\02\00T\BB\8E\08\08\AE\F5\88\08\D0\0E\00\AD\00\00\FD\FF\B0\000\00\00#\AE\F5\88\08\D0\0E\00\AD\00\00\FE\FF\B0\00@\00\00\11\AE\F5\88\08\D0\0E\00\AD\00\00\00\00\B0\00\00\00\00\10\AE\F5\88\08\87\05\03\AE\F5\88\08\03\DC\DAX\08\88\80", [12 x i8] c"\A6\1E\00\00\A7\1E\08\00\A8\1E\00\00", [10 x i8] c"\7F\B6\F5\88\08\81\CB\BB\8E\08", [14 x i8] c"\A3\14\00\A4\F3\FF\A5\01\00\81\B1H\8E\08", %struct.AnimationRegionAudioCommand <{ i8 -115, ptr @AnimationCallbackRegionAudio, i8 2, i16 0, i16 -32, i16 320, i16 240, i8 2, i8 2, i16 42 }>, [3 x i8] c"\83\00\00", [9 x i8] c"\86\00\00\01\00\818\00\80", [9 x i8] c"\86\00\00\FF\FF\818\00\80", [10 x i8] c"\8B\DC\FF\8A\E8\FF\81\01\00\80", [23 x i8] c"\88\00@\C8\01\02\80\159\08\84\03\00\90\00\01\90\00\80\159\08\80", [23 x i8] c"\88\00\E0\C7\01\02\D4\189\08\84\03\00`\01\01`\01\D4\189\08\80", [117 x i8] c"\08\E7\00(\169\08\08\E7\008\169\08\08\E7\00L\169\08\08\E7\00`\169\08\08\E7\00x\169\08\08\E7\00\94\169\08\08\E7\00\AC\169\08\08\E7\00\C0\169\08\08\E7\00\D4\169\08\08\E7\00\E4\169\08\08\E7\00\F8\169\08\08\E7\00\10\179\08\08\E7\00,\179\08\08\E7\00@\179\08\08\E7\00T\179\08\08\E7\00d\179\08\82B\BC\8E\08", [75 x i8] c"\08\D7\00t\179\08\08\D7\00\84\179\08\08\D7\00\94\179\08\08\D7\00\A4\179\08\08\D7\00\B8\179\08\08\D7\00\CC\179\08\08\D7\00\E0\179\08\08\D7\00\F4\179\08\08\D7\00\08\189\088\D7\00\18\189\08\82\B7\BC\8E\08", [47 x i8] c"\08\8B\00$\189\08\08\8B\004\189\08\08\8B\00D\189\08\08\8B\00T\189\08\08\8B\00`\189\08\08\8B\00p\189\08\82\02\BD\8E\08", [47 x i8] c"\08\98\00\80\189\08\08\98\00\8C\189\08\08\98\00\98\189\08\08\98\00\A8\189\08\08\98\00\B8\189\08\08\98\00\C8\189\08\821\BD\8E\08", [13 x i8] c"\8C\00\02\98\02\00\05\C0}\81\08\00\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackRegionAudio(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
