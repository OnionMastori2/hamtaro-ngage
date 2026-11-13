; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.IndexedCommunicationResource = type { ptr, ptr, ptr, i32, i16, i16, i16, i8, [5 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gCommunicationRowTaskContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gCommunicationTextTileAttributes = external dso_local global [0 x i16], align 2
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gIndexedCommunicationResources = external dso_local constant [0 x %struct.IndexedCommunicationResource], align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationTextRowAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetCommunicationText(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r0}"(i32 24) #3, !srcloc !4
  %2 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %2, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 6), align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 404), align 1
  %4 = shl i8 %3, 1
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %2, i8 noundef zeroext 24, i8 noundef zeroext %4, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 3, i32 noundef 100663328, i32 noundef ptrtoint (ptr @gCommunicationTextTileAttributes to i32)) #4
  %5 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 6), align 4
  %6 = load i8, ptr %0, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr i8, ptr %0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or disjoint i32 %12, %16
  %18 = getelementptr i8, ptr %0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = or disjoint i32 %17, %21
  %23 = inttoptr i32 %22 to ptr
  %24 = icmp eq ptr %23, @gDefaultTaskContextScript
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr ptr, ptr %23, i32 %27
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %25, %1
  %31 = phi ptr [ %29, %25 ], [ @gDefaultTaskContextScript, %1 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %5, ptr noundef %31) #4
  ret i32 4
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureTaskContext(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetCommunicationTextOffset(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = tail call arm_apcscc ptr @GetVideoState() #4
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %5 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 8
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i16
  store i16 %7, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 194), align 2
  %8 = shl nuw nsw i16 %7, 3
  %9 = sub nsw i16 12, %8
  %10 = getelementptr %struct.VideoState, ptr %4, i32 0, i32 14, i32 2, i32 1
  store i16 %9, ptr %10, align 2
  %11 = load i32, ptr %4, align 4
  %12 = or i32 %11, 16
  store i32 %12, ptr %4, align 4
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureCommunicationTextRow(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 23
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [0 x ptr], ptr @gCommunicationTextRowAnimations, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef 69, i32 noundef 64, i32 noundef 0, ptr noundef %10) #4
  tail call void asm sideeffect "", "r"(ptr nonnull @gIndexedCommunicationResources) #3, !srcloc !5
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %12, 28
  tail call void asm sideeffect "", "r"(ptr nonnull getelementptr inbounds ([0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 0, i32 3)) #3, !srcloc !6
  %14 = getelementptr i8, ptr getelementptr inbounds ([0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 0, i32 3), i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = ashr i32 %15, 8
  %17 = sub nsw i32 0, %16
  tail call arm_apcscc void @SetRenderVector24(i32 noundef 25, i32 noundef %17, i32 noundef 0, i32 noundef 0) #4
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %18, i32 25, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -65536
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %6, %1
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckCommunicationTextBoundary(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %18

8:                                                ; preds = %1
  %9 = zext i8 %2 to i32
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %9, i32 7
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %17, label %18

17:                                               ; preds = %8, %5
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %18

18:                                               ; preds = %17, %8, %5
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 398}
!5 = !{i64 1994}
!6 = !{i64 2165}
