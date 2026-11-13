; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1F8C = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2C50 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2174 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte0785 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @ResetCoreMotionFlags() local_unnamed_addr #0 {
  store i16 0, ptr @gScriptResult, align 2
  %1 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %2 = and i8 %1, -5
  store i8 %2, ptr @gSaveGroup01Byte21E0, align 1
  store i8 0, ptr @gCoreScriptByte1FA8, align 1
  store i8 0, ptr @gCoreScriptByte1F8C, align 1
  store i8 0, ptr @gCoreScriptByte2C50, align 1
  store i8 0, ptr @gCoreScriptByte2174, align 1
  store i8 0, ptr @gCoreScriptByte0785, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
