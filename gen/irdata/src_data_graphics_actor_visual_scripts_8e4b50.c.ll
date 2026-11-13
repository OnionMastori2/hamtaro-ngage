; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8E4B50 = type { [29 x i8], [28 x i8], %struct.AnimationScriptCallbackCommand, [5 x i8], [17 x i8], [8 x i8], [6 x i8], [61 x i8], [8 x i8], [8 x i8], [8 x i8], [45 x i8], [45 x i8], %struct.AnimationCallbackCommand, [3 x i8], [3 x i8], %struct.AnimationCallbackCommand, [3 x i8], [3 x i8], [26 x i8], [16 x i8], [16 x i8] }
%struct.AnimationScriptCallbackCommand = type <{ i8, ptr }>
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8E4B50 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8E4B50 { [29 x i8] c"\01\DC\DAX\08\9C\AE\DC\01\02\FF\FF\8C\AE\DC\01\02\00\00PK\8E\08\01\DC\DAX\08\80", [28 x i8] c"\01\DC\DAX\08\9C\AE\DC\01\02\FF\FF\8C\AE\DC\01\02\00\00mK\8E\08\01\DC\DAX\08", %struct.AnimationScriptCallbackCommand <{ i8 -115, ptr @ScriptCallbackTransferLeaderRenderModes }>, [5 x i8] c"\81\ACK\8E\08", [17 x i8] c"\A6\10\00\00\A7\10\00\00\A8\10\00\00\81\A4K\8E\08", [8 x i8] c"\7F\DC\DAX\08\83\00\00", [6 x i8] c"\01\DC\DAX\08\80", [61 x i8] c"\01\DC\DAX\08\B0\00@\00\00\AD\00\00\FA\FF1\12R\88\08\D0\0E\00\AD\00\80\FE\FF\0D\12R\88\08\D0\0E\00\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\B0\00\00\00\00\81fD\8E\08", [8 x i8] c"\7F\D0l\89\08\83\00\00", [8 x i8] c"\7F\DEl\89\08\83\00\00", [8 x i8] c"\7F\1Am\89\08\83\00\00", [45 x i8] c"\04\DEl\89\08\04\F8l\89\08\04\0Cm\89\08\04\F8l\89\08\04\DEl\89\08\04\F8l\89\08\04\0Cm\89\08\04\F8l\89\08\81\F7K\8E\08", [45 x i8] c"\04\1Am\89\08\06(m\89\08\046m\89\08\06(m\89\08\04\1Am\89\08\06(m\89\08\046m\89\08\06(m\89\08\81\FFK\8E\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackCheckMapBank6RectContainment }>, [3 x i8] c"\83\00\00", [3 x i8] c"\83\00\00", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackCheckMapBank6RectOverlap }>, [3 x i8] c"\83\00\00", [3 x i8] c"\83\00\00", [26 x i8] c"\88\00\00\C9\01\02\10\BAB\08\84\03\00\F0\01\81\01\00\01\F0\01\10\BAB\08\80", [16 x i8] c"\90\02\88\02\00\81\02\00\88\FE\FF\81\02\00\91\80", [16 x i8] c"\90\02\88\FE\FF\81\02\00\88\02\00\81\02\00\91\80" }, align 1

declare dso_local arm_apcscc i32 @ScriptCallbackTransferLeaderRenderModes(ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackCheckMapBank6RectContainment(ptr noundef, ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackCheckMapBank6RectOverlap(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
