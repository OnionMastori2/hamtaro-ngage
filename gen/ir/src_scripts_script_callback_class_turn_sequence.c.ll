; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gClassTurnCallbackArguments086E = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStepClassTurnSequence(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  switch i8 %2, label %64 [
    i8 0, label %3
    i8 1, label %9
    i8 2, label %40
    i8 3, label %45
  ]

3:                                                ; preds = %1
  %4 = tail call arm_apcscc i32 @ScriptCallbackUpdateActorTurnControl(ptr noundef nonnull @gClassTurnCallbackArguments086E) #2
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %6 = add i8 %5, -1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %8 = add i8 %7, 1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  br label %64

9:                                                ; preds = %1
  %10 = tail call arm_apcscc i32 @ScriptCallbackStepActorTurnAnimation(ptr noundef nonnull @gClassTurnCallbackArguments086E) #2
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %12 = add i8 %11, -1
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 102), align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %9
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %17 = add i8 %16, 1
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  store i8 5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  %19 = tail call arm_apcscc i32 @ScriptCallbackDecrementTurnDirection(ptr noundef nonnull @gClassTurnCallbackArguments086E) #2
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  %23 = zext i8 %22 to i32
  %24 = sub nsw i32 %21, %23
  %25 = lshr i32 %24, 29
  %26 = and i32 %25, 4
  %27 = add nsw i32 %26, %24
  %28 = shl nsw i32 %27, 2
  %29 = add nsw i32 %28, 253
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, 253
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = trunc i32 %29 to i8
  %36 = sub i8 %30, %35
  store i8 %36, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  br label %64

37:                                               ; preds = %15
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %39 = add i8 %38, 1
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  br label %64

40:                                               ; preds = %1
  %41 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %42 = add i8 %41, -1
  store i8 %42, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  store i8 3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  br label %64

45:                                               ; preds = %1
  %46 = tail call arm_apcscc i32 @ScriptCallbackStepActorTurnAnimation(ptr noundef nonnull @gClassTurnCallbackArguments086E) #2
  %47 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 102), align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %51 = add i8 %50, 1
  store i8 %51, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %52 = load ptr, ptr @gRenderSlots, align 4
  %53 = load i8, ptr @gRenderClassSlots1, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr %struct.RenderSlot, ptr %52, i32 %54, i32 23
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, -16
  store i8 %57, ptr %55, align 4
  %58 = load ptr, ptr @gRenderSlots, align 4
  %59 = load i8, ptr @gRenderClassSlots1, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr %struct.RenderSlot, ptr %58, i32 %60, i32 23
  %62 = load i8, ptr %61, align 4
  %63 = or i8 %62, 2
  store i8 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %34, %37, %45, %49, %40, %44, %9, %1, %3
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackUpdateActorTurnControl(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ScriptCallbackStepActorTurnAnimation(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ScriptCallbackDecrementTurnDirection(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
