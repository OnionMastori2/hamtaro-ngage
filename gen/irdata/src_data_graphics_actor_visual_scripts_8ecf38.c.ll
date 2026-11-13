; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8ECF38 = type { [8 x i8], [8 x i8], [99 x i8], [76 x i8], [13 x i8], [13 x i8], [8 x i8], [8 x i8], [23 x i8], [8 x i8], [46 x i8], [20 x i8], [23 x i8], [23 x i8], [8 x i8], [8 x i8], [23 x i8], [8 x i8], [8 x i8], [43 x i8], [32 x i8], [23 x i8], [23 x i8], [8 x i8], %struct.AnimationDistanceSongCommand, [3 x i8], [6 x i8] }
%struct.AnimationDistanceSongCommand = type <{ i8, ptr, i8, i8, i16, i16, i16, i16, i16 }>

@gActorVisualScripts8ECF38 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8ECF38 { [8 x i8] c"\7Fh\0D\89\08\83\00\00", [8 x i8] c"\7F\8E\0D\89\08\83\00\00", [99 x i8] c"\AC\00=\FF\FF\AE\00\00\FE\FF\B1\00@\00\00\11`R\88\08\AE\00\00\02\00\B1\00\00\00\00(`R\88\08\D0\0E\00\AE\00\00\FF\FF\B1q\1C\00\00\13`R\88\08\D0\0E\00\AE\00\00\FF\FF\B1q\1C\00\00\13`R\88\08\D0\0E\00\AC\00\00\00\00\AE\00\00\00\00\B1\00\00\00\00\08`R\88\08\81yF\8E\08", [76 x i8] c"\AE\00\00\02\00 zR\88\08\AE\00\00\00\00\D0\0E\00\AC\00\00\FE\FF\AE\00\00\FE\FF\B1\00@\00\00\0FzR\88\08\AC\00\00\00\00\AE\00\00\00\00\B1\00\00\00\00\A9\FE\FF\AE\00\00\02\00\08zR\88\08\AE\00\00\00\00\81OG\8E\08", [13 x i8] c"\14\A8\0D\89\08\14\C8\0D\89\08\83\00\00", [13 x i8] c"\D0e\00Pt\0E\89\08\81\11\D0\8E\08", [8 x i8] c"\7Ft\0E\89\08\83\00\00", [8 x i8] c"\7F\94\0E\89\08\83\00\00", [23 x i8] c"\06\F4\0D\89\08\0A\14\0E\89\08\06\F4\0D\89\08\0A4\0E\89\08\83\00\00", [8 x i8] c"\7FT\0E\89\08\83\00\00", [46 x i8] c"\D0\99\00\87\04\04\F0\0E\89\08\04\10\0F\89\08\88\02\BA\0E\89\08\14\D4\0E\89\08\02\E2\0E\89\08(\E2\0E\89\08\08\BA\0E\89\08\81\F7\CF\8E\08", [20 x i8] c"\AA\E6\FF\87\02\D0K\01\03\12T\88\08\03\DC\DAX\08\88\80", [23 x i8] c"\88\00 \C8\01\02\D0\E5:\08\84\03\00\80\00\01\80\00\D0\E5:\08\80", [23 x i8] c"\88\00\E0\C8\01\02(\ED:\08\84\03\00\E0\01\01\E0\01(\ED:\08\80", [8 x i8] c"\7F\88\0F\89\08\83\00\00", [8 x i8] c"\7F\A2\0F\89\08\83\00\00", [23 x i8] c"\08<\0F\89\08\08D\0F\89\08\08L\0F\89\08\08D\0F\89\08\83\00\00", [8 x i8] c"\7FT\0F\89\08\83\00\00", [8 x i8] c"\7Fn\0F\89\08\83\00\00", [43 x i8] c"\8B\80\00\8A\00\00\87\00\00\FF\FF\86\00\FE\FD\FF\84\00\04\00\00\81\80\00\86\00\00\00\00\84\00\00\00\00\81 \00\87\00\00\00\00\80", [32 x i8] c"\87\00\00\FF\FF\81 \00\84\00\04\00\00\81\81\00\86\00\00\00\00\84\00\00\00\00\87\00\00\00\00\80", [23 x i8] c"\88\00 \C8\01\02\94\00;\08\84\03\00\80\00\01\80\00\94\00;\08\80", [23 x i8] c"\88\00\E0\C8\01\02P\01;\08\84\03\00\E0\01\01\E0\01P\01;\08\80", [8 x i8] c"\7F\DC\DAX\08\83\00\00", %struct.AnimationDistanceSongCommand <{ i8 -115, ptr @AnimationCallbackScaleMapBank4SongByX, i8 10, i8 5, i16 44, i16 200, i16 208, i16 192, i16 128 }>, [3 x i8] c"\83\00\00", [6 x i8] c"\7F\DC\DAX\08\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackScaleMapBank4SongByX(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
