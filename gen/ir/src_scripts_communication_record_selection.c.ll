; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.IndexedCommunicationResource = type { ptr, ptr, ptr, i32, i16, i16, i16, i8, [5 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1
@gCommunicationSelectionScales = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gCommunicationSelectionXOffsets = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gCommunicationHiddenSlotIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gCommunicationLayoutSlotIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gIndexedCommunicationResources = external dso_local local_unnamed_addr constant [0 x %struct.IndexedCommunicationResource], align 4
@gCommunicationReceivedRecord = external dso_local global [0 x i8], align 1
@gCommunicationContextPointer = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureCommunicationRenderSlot26(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 23, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #6
  store i8 %7, ptr %3, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %8
  store i8 1, ptr %9, align 1
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 396), align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = getelementptr [0 x i16], ptr @gCommunicationSelectionScales, i32 0, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 8
  store i16 %15, ptr %16, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 19
  store i16 -16, ptr %17, align 2
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindUnusedAffineMatrix() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPositionCommunicationRenderSlot26(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 396), align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 7
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 395), align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr @gCommunicationSelectionXOffsets, i32 %5
  %9 = getelementptr i8, ptr %8, i32 -7
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = add nuw nsw i32 %13, 10256384
  %15 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 3
  store i32 %14, ptr %15, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetCommunicationRenderSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 641) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 489) #6
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 4, i32 8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 2, %4 ], [ 6, %1 ]
  %10 = phi i32 [ %7, %4 ], [ 12, %1 ]
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i32 [ 0, %8 ], [ %24, %11 ]
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = getelementptr [0 x i8], ptr @gCommunicationHiddenSlotIndices, i32 0, i32 %12
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %13, i32 %16, i32 23
  store i8 0, ptr %17, align 4
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %18, i32 18, i32 23
  store i8 0, ptr %19, align 4
  %20 = load ptr, ptr @gRenderSlots, align 4
  %21 = getelementptr %struct.RenderSlot, ptr %20, i32 20, i32 23
  store i8 0, ptr %21, align 4
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %22, i32 21, i32 23
  store i8 0, ptr %23, align 4
  %24 = add nuw nsw i32 %12, 1
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %26, label %11

26:                                               ; preds = %11, %26
  %27 = phi i32 [ %45, %26 ], [ 0, %11 ]
  %28 = load ptr, ptr @gRenderSlots, align 4
  %29 = getelementptr [0 x i8], ptr @gCommunicationLayoutSlotIndices, i32 0, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 6
  store i32 0, ptr %32, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 6, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 6, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 7
  store i32 0, ptr %35, align 4
  %36 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 7, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 7, i32 2
  store i32 0, ptr %37, align 4
  %38 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 8
  store i16 256, ptr %38, align 4
  %39 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 9
  store i16 256, ptr %39, align 2
  %40 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 10
  store i16 0, ptr %40, align 4
  %41 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 12
  store i16 0, ptr %41, align 4
  %42 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 13
  store i16 0, ptr %42, align 2
  %43 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 14
  store i16 0, ptr %43, align 4
  %44 = getelementptr %struct.RenderSlot, ptr %28, i32 %31, i32 23, i32 4
  store i8 -1, ptr %44, align 4
  %45 = add nuw nsw i32 %27, 1
  %46 = icmp eq i32 %45, %9
  br i1 %46, label %47, label %26

47:                                               ; preds = %26
  tail call arm_apcscc void @ConfigureCommunicationRenderLayout() #6
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureCommunicationRenderLayout() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCommunicationNoop(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadCommunicationResourceHalfword(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.IndexedCommunicationResource, ptr @gIndexedCommunicationResources, i32 %3
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 388), align 1
  %6 = zext i8 %5 to i32
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i16, ptr %7, i32 %6
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadReceivedCommunicationByte(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 388), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  %7 = select i1 %6, i8 0, i8 %5
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 390), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadCommunicationResourceHalf12(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 5
  %5 = load i16, ptr %4, align 2
  store i16 %5, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackFindEmptyCommunicationRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 1100
  %6 = getelementptr i8, ptr %2, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %6, i32 220
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %6, i32 440
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %6, i32 660
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %6, i32 880
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i8 4, i8 5
  br label %26

26:                                               ; preds = %21, %1, %9, %13, %17
  %27 = phi i8 [ 0, %1 ], [ 1, %9 ], [ 2, %13 ], [ 3, %17 ], [ %25, %21 ]
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSelectedCommunicationRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 1100
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, 220
  %9 = getelementptr i8, ptr %2, i32 %5
  %10 = getelementptr i8, ptr %9, i32 %8
  %11 = load i8, ptr %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i8
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectCommunicationRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gCommunicationContextPointer, align 4
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  tail call arm_apcscc void @FillBytes16(ptr noundef getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), i8 noundef zeroext 0, i16 noundef zeroext 110) #6
  %6 = icmp ult i8 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = zext nneg i8 %5 to i32
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 1100
  %12 = mul nuw nsw i32 %8, 220
  %13 = getelementptr i8, ptr %4, i32 %11
  %14 = getelementptr i8, ptr %13, i32 %12
  tail call arm_apcscc void @CopyBytes16(ptr noundef %14, ptr noundef nonnull @gCommunicationReceivedRecord, i16 noundef zeroext 128) #6
  br label %23

15:                                               ; preds = %1
  %16 = icmp eq i8 %5, 5
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 7
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i16
  tail call arm_apcscc void @CopyBytes16(ptr noundef %19, ptr noundef getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), i16 noundef zeroext %22) #6
  br label %23

23:                                               ; preds = %15, %17, %7
  ret i32 0
}

declare dso_local arm_apcscc void @FillBytes16(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @CopyBytes16(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
