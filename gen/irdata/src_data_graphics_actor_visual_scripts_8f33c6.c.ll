; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8F33C6 = type { [5 x i8], %struct.AnimationSteppedPathCommand, [3 x i8], [5 x i8], %struct.AnimationCallbackCommand, [3 x i8], [8 x i8], [13 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8] }
%struct.AnimationSteppedPathCommand = type <{ i8, ptr, i8, i16, i16, i16, i32, i8, i16, i16 }>
%struct.AnimationCallbackCommand = type <{ i8, ptr }>

@gActorVisualScripts8F33C6 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8F33C6 { [5 x i8] c"\01\DC\DAX\08", %struct.AnimationSteppedPathCommand <{ i8 -115, ptr @AnimationCallbackFollowMapBank4SteppedPath, i8 16, i16 433, i16 235, i16 697, i32 143602612, i8 0, i16 238, i16 128 }>, [3 x i8] c"\83\05\00", [5 x i8] c"\01\DC\DAX\08", %struct.AnimationCallbackCommand <{ i8 -115, ptr @AnimationCallbackCheckMapBank6Slot10Depth }>, [3 x i8] c"\83\05\00", [8 x i8] c"\7F\F8h\89\08\83\00\00", [13 x i8] c"\06\F8h\89\08\06\1Ei\89\08\83\00\00", [80 x i8] c"\A3\08\00\A5\08\00\AC\00\C0\FF\FF\AD\00\84\FF\FF\AE\00\80\01\00\A4\00\00\B0\00\08\00\00 Di\89\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\A4\00\00\B0\00\00\00\00\B9\00\80\BA\00\80\BB\00\80\87\04\04\DC\DAX\08\04Di\89\08\88\80", [80 x i8] c"\A3\10\00\A5\10\00\AC\00\00\00\00\AD\00\84\FF\FF\AE\00\80\00\00\A4\00\00\B0\00\08\00\00 Li\89\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\A4\00\00\B0\00\00\00\00\B9\00\80\BA\00\80\BB\00\80\87\04\04\DC\DAX\08\04Li\89\08\88\80", [80 x i8] c"\A3\10\00\A5\00\00\AC33\00\00\AD\00d\FF\FF\AE\00\00\01\00\A4\00\00\B0\00\08\00\00(Ti\89\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\A4\00\00\B0\00\00\00\00\B9\00\80\BA\00\80\BB\00\80\87\04\04\DC\DAX\08\04Ti\89\08\88\80", [80 x i8] c"\A3\00\00\A5\00\00\AC\00@\FF\FF\AD\00\84\FF\FF\AE\00\C0\00\00\A4\00\00\B0\00\08\00\00 \\i\89\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\A4\00\00\B0\00\00\00\00\B9\00\80\BA\00\80\BB\00\80\87\04\04\DC\DAX\08\04\\i\89\08\88\80", [80 x i8] c"\A3\18\00\A5\00\00\AC\00\80\00\00\AD\00\84\FF\FF\AE\00@\01\00\A4\00\00\B0\00\08\00\00 di\89\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\A4\00\00\B0\00\00\00\00\B9\00\80\BA\00\80\BB\00\80\87\04\04\DC\DAX\08\04di\89\08\88\80", [80 x i8] c"\A3\00\00\A5\10\00\AC\00\C0\FF\FF\AD\00\84\FF\FF\AE\00\80\00\00\A4\00\00\B0\00\08\00\00 li\89\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\A4\00\00\B0\00\00\00\00\B9\00\80\BA\00\80\BB\00\80\87\04\04\DC\DAX\08\04li\89\08\88\80", [80 x i8] c"\A3\18\00\A5\10\00\AC\00\80\00\00\AD\00\84\FF\FF\AE\00@\00\00\A4\00\00\B0\00\08\00\00 ti\89\08\AC\00\00\00\00\AD\00\00\00\00\AE\00\00\00\00\A4\00\00\B0\00\00\00\00\B9\00\80\BA\00\80\BB\00\80\87\04\04\DC\DAX\08\04ti\89\08\88\80" }, align 2

declare dso_local arm_apcscc i32 @AnimationCallbackFollowMapBank4SteppedPath(ptr noundef, ptr noundef, ptr noundef) #0

declare dso_local arm_apcscc i32 @AnimationCallbackCheckMapBank6Slot10Depth(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
