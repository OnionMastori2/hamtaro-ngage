; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gGameRecordAllocationKey1138 = external dso_local local_unnamed_addr global i16, align 2
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gGameCounterAnimationCountdown1130 = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationDelta1128 = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationSteps37EC = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationDelay112C = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterRenderAnimationF6BE = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAllocateGameRecord(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  store i8 %2, ptr @gGameRecordAllocationKey1138, align 2
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr getelementptr (i8, ptr @gGameRecordAllocationKey1138, i32 1), align 1
  %5 = tail call arm_apcscc zeroext i8 @CountOccupiedGameRecords() #2
  %6 = zext i8 %5 to i16
  store i16 %6, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  store i32 0, ptr @gGameCounterAnimationCountdown1130, align 4
  %7 = load i16, ptr @gGameRecordAllocationKey1138, align 2
  %8 = tail call arm_apcscc i32 @AllocateGameRecord(i16 noundef zeroext %7) #2
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 19, i32 noundef 0) #2
  br label %12

11:                                               ; preds = %1
  store i16 1, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 19, i32 noundef 1) #2
  store i32 1, ptr @gGameCounterAnimationDelta1128, align 4
  store i32 1, ptr @gGameCounterAnimationSteps37EC, align 4
  store i32 1, ptr @gGameCounterAnimationDelay112C, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  %14 = zext i16 %13 to i32
  tail call arm_apcscc void @RenderGameCounterBank1(i32 noundef %14) #2
  %15 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %16 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  %17 = add i16 %16, %15
  store i16 %17, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  store i16 %17, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 176, i32 noundef -16, i32 noundef 0, ptr noundef nonnull @gGameCounterRenderAnimationF6BE) #2
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 2, i8 noundef zeroext 0) #2
  ret i32 2
}

declare dso_local arm_apcscc zeroext i8 @CountOccupiedGameRecords() local_unnamed_addr #1

declare dso_local arm_apcscc i32 @AllocateGameRecord(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RenderGameCounterBank1(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
