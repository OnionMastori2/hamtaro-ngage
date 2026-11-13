; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRandomSeed0 = external dso_local local_unnamed_addr global i32, align 4
@gRandomSeed1 = external dso_local local_unnamed_addr global i32, align 4
@gRandomSeed2 = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @NextRandom() local_unnamed_addr #0 {
  %1 = load i32, ptr @gRandomSeed0, align 4
  %2 = mul i32 %1, 171
  %3 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %2, i32 noundef 30269) #2
  store i32 %3, ptr @gRandomSeed0, align 4
  %4 = load i32, ptr @gRandomSeed1, align 4
  %5 = mul i32 %4, 172
  %6 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %5, i32 noundef 30307) #2
  store i32 %6, ptr @gRandomSeed1, align 4
  %7 = load i32, ptr @gRandomSeed2, align 4
  %8 = mul i32 %7, 176
  %9 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %8, i32 noundef 30323) #2
  store i32 %9, ptr @gRandomSeed2, align 4
  %10 = load i32, ptr @gRandomSeed0, align 4
  %11 = mul i32 %10, 70946
  %12 = load i32, ptr @gRandomSeed1, align 4
  %13 = mul i32 %12, 70857
  %14 = mul i32 %9, 70820
  %15 = add i32 %11, %14
  %16 = add i32 %15, %13
  ret i32 %16
}

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
