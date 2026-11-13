; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptCallbackHalf3724 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3AF4 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3564 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3E38 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3670 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3CD0 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3AF8 = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeHalves11F0C(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i16 0, ptr @gScriptCallbackHalf3724, align 2
  store i16 1, ptr @gScriptCallbackHalf3AF4, align 2
  tail call arm_apcscc void @ConfigureKeyRepeat(i16 noundef zeroext 30, i16 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureKeyRepeat(i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetHalves11F34(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  %2 = load i16, ptr @gScriptCallbackHalf3AF4, align 2
  %3 = shl i16 %2, 1
  %4 = or disjoint i16 %3, 1
  store i16 %4, ptr @gScriptCallbackHalf3E38, align 2
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
