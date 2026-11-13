; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.WordChoiceRecord = type { i32, i32, ptr }

@gWordChoiceState = external dso_local local_unnamed_addr global i16, align 2
@gWordChoiceResetBackgroundScript = external dso_local constant [0 x i8], align 1
@gWordChoiceRecords = external dso_local local_unnamed_addr global [0 x %struct.WordChoiceRecord], align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetWordChoiceDisplay(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr @gWordChoiceState, align 2
  %3 = and i16 %2, -5
  %4 = icmp eq i16 %3, 2
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 0, i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 1, i32 noundef 0) #2
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 136, ptr noundef nonnull @gWordChoiceResetBackgroundScript) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 8), align 4
  %6 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 8, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %6) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 7), align 4
  %7 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 7, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %7) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 6), align 4
  %8 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 6, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %8) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 5), align 4
  %9 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 5, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %9) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 4), align 4
  %10 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 4, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %10) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 3), align 4
  %11 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 3, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %11) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 2), align 4
  %12 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 2, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %12) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 1), align 4
  %13 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 1, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %13) #2
  store i32 0, ptr @gWordChoiceRecords, align 4
  %14 = load ptr, ptr getelementptr inbounds ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 0, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %14) #2
  store i16 0, ptr @gWordChoiceState, align 2
  br label %17

15:                                               ; preds = %1
  %16 = icmp eq i16 %2, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %15, %5
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi i8 [ 1, %17 ], [ 0, %15 ]
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
