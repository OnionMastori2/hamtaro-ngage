; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptCallbackHalf3E38 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3670 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3564 = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdjustHalves1202C(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  switch i8 %2, label %33 [
    i8 1, label %3
    i8 2, label %13
    i8 3, label %25
    i8 4, label %28
  ]

3:                                                ; preds = %1
  %4 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %5 = icmp eq i16 %4, 0
  %6 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = add i16 %6, -1
  store i16 %10, ptr @gScriptCallbackHalf3670, align 2
  store i16 7, ptr @gScriptCallbackHalf3E38, align 2
  br label %33

11:                                               ; preds = %3
  %12 = tail call i16 @llvm.usub.sat.i16(i16 %4, i16 1)
  store i16 %12, ptr @gScriptCallbackHalf3E38, align 2
  br label %33

13:                                               ; preds = %1
  %14 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %15 = icmp eq i16 %14, 15
  %16 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %17 = icmp ult i16 %16, 10
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = add nuw nsw i16 %16, 1
  store i16 %20, ptr @gScriptCallbackHalf3670, align 2
  store i16 8, ptr @gScriptCallbackHalf3E38, align 2
  br label %33

21:                                               ; preds = %13
  %22 = icmp ult i16 %14, 15
  %23 = zext i1 %22 to i16
  %24 = add nuw nsw i16 %14, %23
  store i16 %24, ptr @gScriptCallbackHalf3E38, align 2
  br label %33

25:                                               ; preds = %1
  %26 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %27 = tail call i16 @llvm.usub.sat.i16(i16 %26, i16 1)
  store i16 %27, ptr @gScriptCallbackHalf3564, align 2
  br label %33

28:                                               ; preds = %1
  %29 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %30 = icmp ult i16 %29, 7
  %31 = zext i1 %30 to i16
  %32 = add nuw nsw i16 %29, %31
  store i16 %32, ptr @gScriptCallbackHalf3564, align 2
  br label %33

33:                                               ; preds = %19, %21, %9, %11, %1, %28, %25
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackToggleHalfFlag120D0(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %3 = shl i16 %2, 6
  %4 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %5 = shl i16 %4, 3
  %6 = add i16 %5, %3
  %7 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %8 = add i16 %6, %7
  %9 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %8) #5
  %10 = xor i32 %9, 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %8, i32 noundef %10) #5
  ret i32 0
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_12110(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
