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
define dso_local arm_apcscc noundef i32 @ScriptCallbackAllocateGameRecordBatch(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  store i8 %2, ptr @gGameRecordAllocationKey1138, align 2
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr getelementptr (i8, ptr @gGameRecordAllocationKey1138, i32 1), align 1
  %5 = tail call arm_apcscc zeroext i8 @CountOccupiedGameRecords() #2
  %6 = zext i8 %5 to i16
  store i16 %6, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  store i32 0, ptr @gGameCounterAnimationCountdown1130, align 4
  %8 = zext i8 %5 to i32
  %9 = icmp ugt i8 %5, 63
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = sub nuw nsw i32 64, %8
  %12 = zext i16 %7 to i32
  %13 = icmp ult i32 %11, %12
  %14 = trunc i32 %11 to i16
  %15 = select i1 %13, i16 %14, i16 %7
  %16 = zext i16 %15 to i32
  %17 = icmp eq i16 %15, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %10, %18
  %19 = phi i32 [ %26, %18 ], [ 0, %10 ]
  %20 = load i16, ptr @gGameRecordAllocationKey1138, align 2
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %19, %21
  %23 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %22
  %24 = load i16, ptr %23, align 2
  %25 = tail call arm_apcscc i32 @AllocateGameRecord(i16 noundef zeroext %24) #2
  %26 = add nuw nsw i32 %19, 1
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %28, label %18

28:                                               ; preds = %18, %10, %1
  %29 = phi i32 [ 0, %1 ], [ 1, %10 ], [ 1, %18 ]
  %30 = phi i16 [ 0, %1 ], [ %15, %10 ], [ %15, %18 ]
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 19, i32 noundef %29) #2
  tail call arm_apcscc void @RenderGameCounterBank1(i32 noundef %8) #2
  %31 = zext i16 %30 to i32
  %32 = add i16 %30, -1
  %33 = icmp ult i16 %32, 31
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  store i32 1, ptr @gGameCounterAnimationDelta1128, align 4
  store i32 %31, ptr @gGameCounterAnimationSteps37EC, align 4
  %35 = tail call arm_apcscc i32 @BiosDiv(i32 noundef 32, i32 noundef %31) #2
  br label %38

36:                                               ; preds = %28
  %37 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %31, i32 noundef 32) #2
  store i32 %37, ptr @gGameCounterAnimationDelta1128, align 4
  store i32 32, ptr @gGameCounterAnimationSteps37EC, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ 1, %36 ], [ %35, %34 ]
  store i32 %39, ptr @gGameCounterAnimationDelay112C, align 4
  store i16 %30, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %40 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  %41 = add i16 %40, %30
  store i16 %41, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  store i16 %41, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 176, i32 noundef -16, i32 noundef 0, ptr noundef nonnull @gGameCounterRenderAnimationF6BE) #2
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 2, i8 noundef zeroext 0) #2
  ret i32 2
}

declare dso_local arm_apcscc zeroext i8 @CountOccupiedGameRecords() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @AllocateGameRecord(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @RenderGameCounterBank1(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

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
