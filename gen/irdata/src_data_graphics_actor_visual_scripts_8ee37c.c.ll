; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EE37C = type { [49 x i8], [69 x i8], [48 x i8], [48 x i8], [39 x i8], %struct.AnimationCallbackCommand, [70 x i8], %struct.AnimationCallbackCommand, [34 x i8], [34 x i8], [133 x i8], [17 x i8], %struct.AnimationCallbackCommand, [22 x i8], [12 x i8], %struct.AnimationCallbackCommand, [11 x i8], %struct.AnimationCallbackCommand, [1 x i8], [23 x i8], [23 x i8], [47 x i8], [19 x i8], [9 x i8] }
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8EE37C = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EE37C { [49 x i8] c"\A3\00\01\A5\00\00\AC\00\80\FF\FF\7F\\&\89\08\7F\\&\89\08\7F\\&\89\08\7F\\&\89\08\7F\\&\89\08\7F\\&\89\08\10\\&\89\08\83\00\00", [69 x i8] c"\A3\08\01\A5\1A\00\AC\00\C0\FF\FF\7F|&\89\08\7F|&\89\08\7F|&\89\08\7F|&\89\08\7F|&\89\08\7F|&\89\08\7F|&\89\08\7F|&\89\08\7F|&\89\08\7F|&\89\08\10|&\89\08\83\00\00", [48 x i8] c"\11\90&\89\08\11\AA&\89\08\11\C4&\89\08\11\DE&\89\08\11\C4&\89\08\11\DE&\89\08\11\C4&\89\08\11\DE&\89\08\11\C4&\89\08\83\00\00", [48 x i8] c"\11\14'\89\08\11\22'\89\08\11\14'\89\08\11\22'\89\08\11\14'\89\08\11\F8&\89\08\11\06'\89\08\11\14'\89\08\11\22'\89\08\83\00\00", [39 x i8] c"\87\04\89\EB\E4\8E\08\88\AC\00\C0\00\00\AE\00\00\01\00\B1\00\F8\FF\FF\BD\80\00\080'\89\08\BD\00\00\180'\89\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackRestoreMapBank4Song38 }>, [70 x i8] c"\180'\89\08\BD\80\FF\090'\89\08\AC\00\00\00\00\AE\00\00\00\00\B1\00\00\00\00\BD\00\00\87\04\89\EB\E4\8E\08\88\AC\00@\FF\FF\AE\00\00\01\00\B1\00\F8\FF\FF\BD\80\FF\080'\89\08\BD\00\00\180'\89\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackRestoreMapBank4Song38 }>, [34 x i8] c"\180'\89\08\BD\80\00\090'\89\08\AC\00\00\00\00\AE\00\00\00\00\B1\00\00\00\00\BD\00\00\83\00\00", [34 x i8] c"\C1\00\10\C2\00\10\BC\00\00\BD\18\00\180'\89\08\BD\E8\FF00'\89\08\BD\18\00\180'\89\08\80", [133 x i8] c"\87\03\89\92\E5\8E\08\88\AC\00\80\FF\FF\AE\00\80\00\00\B1\00\FC\FF\FF\BD\80\00\088'\89\08\BD\00\0008'\89\08\BD\80\FF\098'\89\08\AC\00\00\00\00\AE\00\00\00\00\B1\00\00\00\00\BD\00\00\87\03\89\92\E5\8E\08\88\AC\00\80\00\00\AE\00\80\00\00\B1\00\FC\FF\FF\BD\80\FF\088'\89\08\BD\00\0008'\89\08\BD\80\00\098'\89\08\AC\00\00\00\00\AE\00\00\00\00\B1\00\00\00\00\BD\00\00\83\00\00", [17 x i8] c"\C1\00\10\C2\00\10\BC\00\00\BD\10\00@8'\89\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackRestoreMapBank4Song39 }>, [22 x i8] c"\BD\F0\FF\7F8'\89\08\018'\89\08\BD\10\00@8'\89\08\80", [12 x i8] c"`\DC\DAX\08`\DC\DAX\08\87`", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackSetMapBank4MusicFlag }>, [11 x i8] c"\88\7F\DC\DAX\08\7F\DC\DAX\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackClearMapBank4MusicFlag }>, [1 x i8] c"\80", [23 x i8] c"\88\00\80\C8\01\02\CC\CD<\08\84\03\00\B0\00\01\B0\00\CC\CD<\08\80", [23 x i8] c"\88\00\E0\C8\01\020\D9<\08\84\03\00\E0\01\01\E0\010\D9<\08\80", [47 x i8] c"\0C\B1\00@\CE<\08\0C\B1\00X\CE<\08\0C\B1\00p\CE<\08\0C\B1\00\88\CE<\08\0C\B1\00\A0\CE<\08\0C\B1\00\B8\CE<\08\82\0E\E6\8E\08", [19 x i8] c"\04\C5\00\D0\CE<\08\04\C5\00\EC\CE<\08\82=\E6\8E\08", [9 x i8] c"\8E\01\01\04\13\09\0B\FF\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackRestoreMapBank4Song38(ptr noundef, ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackRestoreMapBank4Song39(ptr noundef, ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackSetMapBank4MusicFlag(ptr noundef, ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackClearMapBank4MusicFlag(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
