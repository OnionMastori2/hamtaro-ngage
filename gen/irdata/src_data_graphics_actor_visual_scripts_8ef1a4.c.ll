; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8EF1A4 = type { [8 x i8], [20 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [13 x i8], [20 x i8], [12 x i8], %struct.AnimationApproachCommand, [20 x i8], [16 x i8], [16 x i8], [31 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [95 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8] }
%struct.AnimationApproachCommand = type <{ i8, ptr, i8 }>

@gActorVisualScripts8EF1A4 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8EF1A4 { [8 x i8] c"\7F\8C3\89\08\83\00\00", [20 x i8] c"\AE\00\00\01\00 \8C3\89\08\AE\00\00\00\00\81\A4\F1\8E\08", [8 x i8] c"\7F\A03\89\08\83\00\00", [8 x i8] c"\7F\A83\89\08\83\00\00", [8 x i8] c"\7F\B03\89\08\83\00\00", [8 x i8] c"\7F\BE3\89\08\83\00\00", [8 x i8] c"\7F\D83\89\08\83\00\00", [8 x i8] c"\7F\E63\89\08\83\00\00", [8 x i8] c"\7F\004\89\08\83\00\00", [8 x i8] c"\7F\1A4\89\08\83\00\00", [8 x i8] c"\7Fl5\89\08\83\00\00", [8 x i8] c"\7F\865\89\08\83\00\00", [13 x i8] c"\0F\AC5\89\08\0C\C65\89\08\83\00\00", [20 x i8] c"\AE\00\00\02\00\14\C65\89\08\AE\00\00\00\00\81\10\F2\8E\08", [12 x i8] c"\A6\0D\00\00\A7\0D\00\00\A8\0D\00\00", %struct.AnimationApproachCommand <{ i8 -115, ptr @AnimationCallbackApproachMapBank5ClassPosition, i8 96 }>, [20 x i8] c"`\DC\DAX\08\AC\00\00\00\00\AE\00\00\00\00\81 \F6\89\08", [16 x i8] c"\AC\00\00\FF\FF(\DC\DAX\08\AC\00\00\00\00\80", [16 x i8] c"\AE\00\00\01\00\10\DC\DAX\08\AE\00\00\00\00\80", [31 x i8] c"\AC\00\00\01\00(\DC\DAX\08\AC\00\00\00\00\AE\00\00\01\00H\DC\DAX\08\AE\00\00\00\00\80", [16 x i8] c"\AE\00\00\01\00P\DC\DAX\08\AE\00\00\00\00\80", [16 x i8] c"\AE\00\00\FF\FFP\DC\DAX\08\AE\00\00\00\00\80", [16 x i8] c"\AE\00\00\01\00\18\DC\DAX\08\AE\00\00\00\00\80", [16 x i8] c"\AE\00\00\FF\FF\18\DC\DAX\08\AE\00\00\00\00\80", [95 x i8] c"\81\10\00\95\00\00\00\00dN>\08`\00\02\02\A1`\00\02\02\00\00\1F\0B\95\00\00\00\00\14O>\08`\00\02\02\A1`\00\02\02 \00'\0B\81\10\00\95\00\00\00\00\\O>\08`\00\02\02\A1`\00\02\02\00\00\1F\0B\95\00\00\00\00\F4O>\08`\00\02\02\A1`\00\02\02 \00'\0B\80", [23 x i8] c"\88\00 \C8\01\02\D8<>\08\84\03\00\80\00\01\80\00\D8<>\08\80", [23 x i8] c"\88\00\00\C9\01\02\F0@>\08\84\03\00\F0\01\01\F0\01\F0@>\08\80", [23 x i8] c"\88\00\E0\C8\01\02lG>\08\84\03\00\E0\01\01\E0\01lG>\08\80", [23 x i8] c"\88\00\E0\C7\01\02XL>\08\84\03\00`\01\01`\01XL>\08\80" }, align 1

declare dso_local arm_apcscc i32 @AnimationCallbackApproachMapBank5ClassPosition(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
