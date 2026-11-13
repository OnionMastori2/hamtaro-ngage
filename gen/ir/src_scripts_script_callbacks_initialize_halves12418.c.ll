; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptCallbackHalf3AF8 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3CD0 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3E38 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3564 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3670 = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeHalves12418(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  store i16 0, ptr @gScriptCallbackHalf3E38, align 2
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClampAndTouchDerivedLowAddress12454(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %3 = icmp ugt i16 %2, 8
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp ugt i16 %2, 6
  br i1 %5, label %6, label %8

6:                                                ; preds = %4, %1
  %7 = phi i16 [ 0, %1 ], [ 6, %4 ]
  store i16 %7, ptr @gScriptCallbackHalf3670, align 2
  br label %8

8:                                                ; preds = %6, %4
  %9 = load i16, ptr @gScriptCallbackHalf3AF8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %13 = zext i16 %12 to i32
  %14 = sub nsw i32 4, %13
  %15 = inttoptr i32 %14 to ptr
  %16 = load i16, ptr %15, align 2
  %17 = or i16 %16, 4096
  store i16 %17, ptr %15, align 2
  br label %18

18:                                               ; preds = %11, %8
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
