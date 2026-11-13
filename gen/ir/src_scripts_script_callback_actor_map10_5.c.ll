; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.SelectionListAnimation = type { ptr, ptr, ptr }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4
@gSelectionListIndices3900 = external dso_local global [0 x i8], align 1
@gSelectionListItemFlags7584 = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSelectionListItemOrder7554 = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSelectionListAnimations75B4 = external dso_local constant [0 x %struct.SelectionListAnimation], align 4
@gSelectionListTextBundles7910 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextPairContexts = external dso_local global [0 x ptr], align 4
@gSelectionListTextOffsets78B2 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gSelectionListLanguagePageCounts77D0 = external dso_local constant [0 x i8], align 1
@gSelectionListTextPage46A3 = external dso_local local_unnamed_addr global i8, align 1
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gSelectionListLastRow1C00 = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSelectionListDownScroll8F8D61 = external dso_local constant [0 x i8], align 1
@gSelectionListDownBackground8F98BD = external dso_local constant [0 x i8], align 1
@gSelectionListPageAnimations7DC4 = external dso_local local_unnamed_addr constant [0 x [2 x ptr]], align 4
@gSelectionListUpScroll8F8D4D = external dso_local constant [0 x i8], align 1
@gSelectionListUpBackground8F98C6 = external dso_local constant [0 x i8], align 1
@gSelectionListLeftScroll8F8D75 = external dso_local constant [0 x i8], align 1
@gSelectionListRightScroll8F8D89 = external dso_local constant [0 x i8], align 1
@gSelectionListDetails7C5C = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gGameCounterDisplayBuffer = external dso_local global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSelectionListMoreText8F8D9D = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveActorsAndChangeMap10_5(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  %6 = tail call arm_apcscc ptr @memcpy(ptr noundef nonnull @gSaveGroup01Block2EB0, ptr noundef %5, i32 noundef 104) #3
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gCoreScriptByte2274, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %7, i32 %9
  %11 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), ptr noundef %10, i32 noundef 104) #3
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %12, i32 %14
  %16 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), ptr noundef %15, i32 noundef 104) #3
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.RenderSlot, ptr %17, i32 %19
  %21 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), ptr noundef %20, i32 noundef 104) #3
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 13), align 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 14), align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext 10, i8 noundef zeroext 5) #3
  ret i32 -4
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreActorsAndPreviousMapC3B20(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gScriptCursor, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext %3, i8 noundef zeroext %4) #3
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 96), align 1
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -1
  %8 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 1
  %11 = or disjoint i32 %10, 1
  %12 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %7 to i32
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr @gRenderClassSlots0, align 1
  %18 = zext i8 %17 to i32
  %19 = load ptr, ptr @gRenderSlots, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = mul nuw nsw i32 %18, 104
  %22 = add i32 %21, %20
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call arm_apcscc ptr @memcpy(ptr noundef %23, ptr noundef nonnull @gSaveGroup01Block2EB0, i32 noundef 104) #3
  %25 = load i8, ptr @gRenderClassSlots0, align 1
  %26 = zext i8 %25 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %26, ptr noundef %16) #3
  %27 = load i8, ptr @gCoreScriptByte2274, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %1
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 200), align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = shl nuw nsw i32 %14, 1
  %40 = getelementptr ptr, ptr %38, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr @gRenderSlots, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = mul nuw nsw i32 %28, 104
  %45 = add i32 %44, %43
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call arm_apcscc ptr @memcpy(ptr noundef %46, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), i32 noundef 104) #3
  %48 = load i8, ptr @gCoreScriptByte2274, align 1
  %49 = zext i8 %48 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %49, ptr noundef %41) #3
  br label %50

50:                                               ; preds = %33, %30, %1
  %51 = load i8, ptr @gRenderClassSlots1, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %50
  %55 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 304), align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = and i8 %55, 15
  %59 = add nsw i8 %58, -1
  %60 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %61 = xor i8 %60, 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = zext i8 %59 to i32
  %68 = getelementptr ptr, ptr %66, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr @gRenderSlots, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = mul nuw nsw i32 %52, 104
  %73 = add i32 %72, %71
  %74 = inttoptr i32 %73 to ptr
  %75 = tail call arm_apcscc ptr @memcpy(ptr noundef %74, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), i32 noundef 104) #3
  %76 = load i8, ptr @gRenderClassSlots1, align 1
  %77 = zext i8 %76 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %77, ptr noundef %69) #3
  br label %78

78:                                               ; preds = %54, %57, %50
  %79 = phi i8 [ %7, %50 ], [ %59, %57 ], [ %7, %54 ]
  %80 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i8 %80, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %78
  %84 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 408), align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %83
  %87 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 1
  %90 = or disjoint i32 %89, 1
  %91 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = zext i8 %79 to i32
  %94 = shl nuw nsw i32 %93, 1
  %95 = getelementptr ptr, ptr %92, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr @gRenderSlots, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = mul nuw nsw i32 %81, 104
  %100 = add i32 %99, %98
  %101 = inttoptr i32 %100 to ptr
  %102 = tail call arm_apcscc ptr @memcpy(ptr noundef %101, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), i32 noundef 104) #3
  %103 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %104 = zext i8 %103 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %104, ptr noundef %96) #3
  br label %105

105:                                              ; preds = %83, %86, %78
  store ptr %2, ptr @gScriptCursor, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMap10_5Window(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #3
  %2 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %3 = or i16 %2, 16384
  store i16 %3, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  store volatile i16 14336, ptr inttoptr (i32 67108936 to ptr), align 8
  store volatile i16 55, ptr inttoptr (i32 67108938 to ptr), align 2
  store volatile i16 5332, ptr inttoptr (i32 67108930 to ptr), align 2
  store volatile i16 21636, ptr inttoptr (i32 67108934 to ptr), align 2
  %4 = load i32, ptr @gVideoState, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr @gVideoState, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCollectMap10_5Selections(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 -1, ptr @gSelectionListIndices3900, align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 1), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 2), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 3), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 4), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 5), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 6), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 7), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 8), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 9), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 10), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 11), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 12), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 13), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 14), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 15), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 16), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 17), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 18), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 19), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 20), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 21), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 22), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 23), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 24), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 25), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 26), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 27), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 28), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 29), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 30), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 31), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 32), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 33), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 34), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 35), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 36), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 37), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 38), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 39), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 40), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 41), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 42), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 43), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 44), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 45), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 46), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 47), align 1
  br label %2

2:                                                ; preds = %1, %17
  %3 = phi i32 [ 0, %1 ], [ %19, %17 ]
  %4 = phi i8 [ 0, %1 ], [ %18, %17 ]
  %5 = getelementptr [0 x i8], ptr @gSelectionListItemOrder7554, i32 0, i32 %3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr @gSelectionListItemFlags7584, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  %11 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = zext i8 %4 to i32
  %15 = getelementptr [0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 %14
  store i8 %6, ptr %15, align 1
  %16 = add i8 %4, 1
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i8 [ %16, %13 ], [ %4, %2 ]
  %19 = add nuw nsw i32 %3, 1
  %20 = icmp eq i32 %19, 48
  br i1 %20, label %21, label %2

21:                                               ; preds = %17
  %22 = icmp ult i8 %18, 17
  br i1 %22, label %31, label %23

23:                                               ; preds = %21
  %24 = icmp ult i8 %18, 25
  br i1 %24, label %31, label %25

25:                                               ; preds = %23
  %26 = icmp ult i8 %18, 33
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = icmp ult i8 %18, 41
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8 %18, 49
  br i1 %30, label %31, label %33

31:                                               ; preds = %29, %27, %25, %23, %21
  %32 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 2, %25 ], [ 3, %27 ], [ 4, %29 ]
  store i8 %32, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 386), align 1
  br label %33

33:                                               ; preds = %31, %29
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMap10_5SelectionSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %19
  %3 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %4 = getelementptr [0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = zext i8 %5 to i32
  %9 = and i32 %3, 7
  %10 = mul nuw nsw i32 %9, 24
  %11 = add nuw nsw i32 %10, 20
  %12 = lshr i32 %3, 3
  %13 = mul nuw nsw i32 %12, 24
  %14 = add nuw nsw i32 %13, 84
  %15 = getelementptr %struct.SelectionListAnimation, ptr @gSelectionListAnimations75B4, i32 %8
  %16 = load ptr, ptr %15, align 4
  %17 = trunc i32 %3 to i8
  %18 = add i8 %17, 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %11, i32 noundef 0, i32 noundef %14, ptr noundef %16) #3
  br label %19

19:                                               ; preds = %7, %2
  %20 = add nuw nsw i32 %3, 1
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %2

22:                                               ; preds = %19
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMap10_5SelectionText(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %32
  %3 = phi i32 [ 0, %1 ], [ %33, %32 ]
  tail call void asm sideeffect "", "{r0}"(i32 14) #4, !srcloc !4
  %4 = tail call arm_apcscc ptr @AllocateTaskContext() #3
  %5 = shl nuw nsw i32 %3, 2
  %6 = add i32 %5, ptrtoint (ptr @gTaskTextPairContexts to i32)
  %7 = inttoptr i32 %6 to ptr
  store ptr %4, ptr %7, align 4
  %8 = mul nuw nsw i32 %3, 896
  %9 = add nuw nsw i32 %8, 100679712
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %4, i32 noundef 14, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef %9, i32 noundef 100716032) #3
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr @gSelectionListIndices3900, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, -1
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  %16 = zext i8 %13 to i32
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr [0 x i16], ptr @gSelectionListTextOffsets78B2, i32 0, i32 %16
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr ptr, ptr @gSelectionListTextBundles7910, i32 %20
  %22 = getelementptr ptr, ptr %21, i32 %3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @gDefaultTaskContextScript
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr ptr, ptr %23, i32 %27
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %25, %15
  %31 = phi ptr [ %29, %25 ], [ @gDefaultTaskContextScript, %15 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %17, ptr noundef %31) #3
  br label %32

32:                                               ; preds = %30, %2
  %33 = add nuw nsw i32 %3, 1
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %2

35:                                               ; preds = %32
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackWrapMap10_5TextPage(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 387), align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 3
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 5
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr @gSelectionListLanguagePageCounts77D0, i32 %10
  %14 = getelementptr i8, ptr %13, i32 %12
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ugt i32 %4, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 387), align 1
  br label %19

19:                                               ; preds = %18, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMap10_5PagedText(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r0}"(i32 14) #4, !srcloc !5
  %2 = tail call arm_apcscc ptr @AllocateTaskContext() #3
  store ptr %2, ptr @gTaskTextPairContexts, align 4
  br label %3

3:                                                ; preds = %1, %51
  %4 = phi i32 [ 1, %1 ], [ %52, %51 ]
  tail call void asm sideeffect "", "r"(i32 14) #4, !srcloc !6
  %5 = tail call arm_apcscc ptr @AllocateTaskContext() #3
  %6 = shl nuw nsw i32 %4, 2
  %7 = add i32 %6, ptrtoint (ptr @gTaskTextPairContexts to i32)
  %8 = inttoptr i32 %7 to ptr
  store ptr %5, ptr %8, align 4
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %10 = zext i8 %9 to i32
  %11 = add i32 %10, ptrtoint (ptr @gSelectionListIndices3900 to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, -1
  br i1 %14, label %51, label %15

15:                                               ; preds = %3
  %16 = zext i8 %13 to i32
  %17 = mul nuw nsw i32 %16, 5
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %17, ptrtoint (ptr @gSelectionListLanguagePageCounts77D0 to i32)
  %21 = add i32 %20, %19
  %22 = inttoptr i32 %21 to ptr
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %51, label %25

25:                                               ; preds = %15
  %26 = mul nuw nsw i32 %4, 896
  %27 = add nuw nsw i32 %26, 100679712
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %5, i32 noundef 14, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef %27, i32 noundef 100716032) #3
  %28 = load ptr, ptr %8, align 4
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr @gSelectionListIndices3900, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr [0 x i16], ptr @gSelectionListTextOffsets78B2, i32 0, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = add nuw nsw i32 %4, %36
  tail call void asm sideeffect "", "r"(i32 %37) #4, !srcloc !7
  %38 = load i8, ptr @gSelectionListTextPage46A3, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr ptr, ptr @gSelectionListTextBundles7910, i32 %37
  %41 = getelementptr ptr, ptr %40, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, @gDefaultTaskContextScript
  br i1 %43, label %49, label %44

44:                                               ; preds = %25
  %45 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr ptr, ptr %42, i32 %46
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %44, %25
  %50 = phi ptr [ %48, %44 ], [ @gDefaultTaskContextScript, %25 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %28, ptr noundef %50) #3
  br label %51

51:                                               ; preds = %15, %49, %3
  %52 = add nuw nsw i32 %4, 1
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %3

54:                                               ; preds = %51
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveMap10_5SelectionText(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 12) to ptr), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %2) #3
  %3 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 8) to ptr), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %3) #3
  %4 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 4) to ptr), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %4) #3
  %5 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %5) #3
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackNavigateMap10_5Selection(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  store i16 1, ptr @gScriptResult, align 2
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, -1
  %7 = zext i1 %6 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 255, i32 noundef %7) #3
  %8 = load i8, ptr %0, align 1
  switch i8 %8, label %146 [
    i8 0, label %9
    i8 1, label %74
    i8 2, label %133
    i8 3, label %139
  ]

9:                                                ; preds = %1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 386), align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x i8], ptr @gSelectionListLastRow1C00, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp ult i8 %10, %14
  br i1 %15, label %16, label %146

16:                                               ; preds = %9
  %17 = add i8 %10, 8
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 6291456
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = icmp ult i8 %2, 8
  %24 = select i1 %23, i32 -1, i32 -8
  %25 = add nsw i32 %24, %3
  %26 = and i32 %25, -8
  %27 = add nsw i32 %26, 24
  br label %29

28:                                               ; preds = %16
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 0, ptr noundef nonnull @gSelectionListDownScroll8F8D61) #3
  br label %145

29:                                               ; preds = %22, %64
  %30 = phi i32 [ 0, %22 ], [ %67, %64 ]
  %31 = phi i32 [ 0, %22 ], [ %66, %64 ]
  %32 = phi i8 [ 0, %22 ], [ %65, %64 ]
  %33 = add i32 %30, ptrtoint (ptr @gSelectionListIndices3900 to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %64, label %37

37:                                               ; preds = %29
  %38 = icmp sle i32 %26, %30
  %39 = icmp sgt i32 %27, %30
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = add i8 %32, 4
  %43 = and i8 %32, 7
  %44 = mul nuw i8 %43, 24
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %45, 20
  %47 = lshr i8 %32, 3
  %48 = zext nneg i8 %47 to i32
  %49 = mul nuw nsw i32 %48, 24
  %50 = add nuw nsw i32 %49, 84
  %51 = add i32 %31, ptrtoint (ptr @gSelectionListIndices3900 to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %54, 12
  %56 = add i32 %55, add (i32 ptrtoint (ptr @gSelectionListAnimations75B4 to i32), i32 4)
  %57 = inttoptr i32 %56 to ptr
  %58 = load ptr, ptr %57, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %42, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %46, i32 noundef 0, i32 noundef %50, ptr noundef %58) #3
  %59 = add i8 %32, 1
  br label %60

60:                                               ; preds = %41, %37
  %61 = phi i8 [ %59, %41 ], [ %32, %37 ]
  %62 = add i32 %31, 1
  %63 = and i32 %62, 255
  br label %64

64:                                               ; preds = %29, %60
  %65 = phi i8 [ %61, %60 ], [ %32, %29 ]
  %66 = phi i32 [ %63, %60 ], [ %31, %29 ]
  %67 = add nuw nsw i32 %30, 1
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %29

69:                                               ; preds = %64
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 136, ptr noundef nonnull @gSelectionListDownBackground8F98BD) #3
  %70 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 386), align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr [0 x [2 x ptr]], ptr @gSelectionListPageAnimations7DC4, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 1, ptr noundef %73) #3
  br label %145

74:                                               ; preds = %1
  %75 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %76 = icmp ugt i8 %75, 7
  br i1 %76, label %77, label %146

77:                                               ; preds = %74
  %78 = add i8 %75, -8
  store i8 %78, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %79 = load ptr, ptr @gRenderSlots, align 4
  %80 = getelementptr inbounds %struct.RenderSlot, ptr %79, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp sgt i32 %81, 6291456
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = and i32 %3, 248
  %85 = add nsw i32 %84, -8
  %86 = add nuw nsw i32 %84, 16
  br label %88

87:                                               ; preds = %77
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 0, ptr noundef nonnull @gSelectionListUpScroll8F8D4D) #3
  br label %145

88:                                               ; preds = %83, %123
  %89 = phi i32 [ 0, %83 ], [ %126, %123 ]
  %90 = phi i32 [ 0, %83 ], [ %125, %123 ]
  %91 = phi i8 [ 0, %83 ], [ %124, %123 ]
  %92 = add i32 %89, ptrtoint (ptr @gSelectionListIndices3900 to i32)
  %93 = inttoptr i32 %92 to ptr
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, -1
  br i1 %95, label %123, label %96

96:                                               ; preds = %88
  %97 = icmp sle i32 %85, %89
  %98 = icmp ugt i32 %86, %89
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = add i8 %91, 4
  %102 = and i8 %91, 7
  %103 = mul nuw i8 %102, 24
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %104, 20
  %106 = lshr i8 %91, 3
  %107 = zext nneg i8 %106 to i32
  %108 = mul nuw nsw i32 %107, 24
  %109 = add nuw nsw i32 %108, 60
  %110 = add i32 %90, ptrtoint (ptr @gSelectionListIndices3900 to i32)
  %111 = inttoptr i32 %110 to ptr
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = mul nuw nsw i32 %113, 12
  %115 = add i32 %114, add (i32 ptrtoint (ptr @gSelectionListAnimations75B4 to i32), i32 8)
  %116 = inttoptr i32 %115 to ptr
  %117 = load ptr, ptr %116, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %101, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %105, i32 noundef 0, i32 noundef %109, ptr noundef %117) #3
  %118 = add i8 %91, 1
  br label %119

119:                                              ; preds = %100, %96
  %120 = phi i8 [ %118, %100 ], [ %91, %96 ]
  %121 = add i32 %90, 1
  %122 = and i32 %121, 255
  br label %123

123:                                              ; preds = %88, %119
  %124 = phi i8 [ %120, %119 ], [ %91, %88 ]
  %125 = phi i32 [ %122, %119 ], [ %90, %88 ]
  %126 = add nuw nsw i32 %89, 1
  %127 = icmp eq i32 %126, 48
  br i1 %127, label %128, label %88

128:                                              ; preds = %123
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 136, ptr noundef nonnull @gSelectionListUpBackground8F98C6) #3
  %129 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 386), align 1
  %130 = zext i8 %129 to i32
  %131 = getelementptr [0 x [2 x ptr]], ptr @gSelectionListPageAnimations7DC4, i32 0, i32 %130, i32 1
  %132 = load ptr, ptr %131, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 1, ptr noundef %132) #3
  br label %145

133:                                              ; preds = %1
  %134 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %135 = and i8 %134, 7
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %133
  %138 = add i8 %134, -1
  store i8 %138, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 0, ptr noundef nonnull @gSelectionListLeftScroll8F8D75) #3
  br label %145

139:                                              ; preds = %1
  %140 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %141 = and i8 %140, 7
  %142 = icmp eq i8 %141, 7
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = add i8 %140, 1
  store i8 %144, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 0, ptr noundef nonnull @gSelectionListRightScroll8F8D89) #3
  br label %145

145:                                              ; preds = %87, %128, %28, %69, %137, %143
  store i16 0, ptr @gScriptResult, align 2
  br label %146

146:                                              ; preds = %145, %139, %133, %74, %9, %1
  %147 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %148 = zext i8 %147 to i32
  %149 = getelementptr [0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 %148
  %150 = load i8, ptr %149, align 1
  %151 = icmp ne i8 %150, -1
  %152 = zext i1 %151 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 256, i32 noundef %152) #3
  ret i32 1
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshMap10_5SelectionSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = and i8 %2, -8
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr inbounds %struct.RenderSlot, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i8 %3, -8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 4, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 5, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 6, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 7, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 8, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 10, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 13, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 16, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 19, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 27, i8 noundef zeroext 0) #3
  %8 = icmp sgt i32 %6, 6291456
  %9 = select i1 %8, i8 %7, i8 %3
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 16
  br label %12

12:                                               ; preds = %1, %36
  %13 = phi i32 [ 0, %1 ], [ %38, %36 ]
  %14 = phi i8 [ 0, %1 ], [ %37, %36 ]
  %15 = getelementptr [0 x i8], ptr @gSelectionListIndices3900, i32 0, i32 %13
  %16 = load i8, ptr %15, align 1
  %17 = icmp ne i8 %16, -1
  %18 = icmp uge i32 %13, %10
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp ugt i32 %11, %13
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %36

22:                                               ; preds = %12
  %23 = zext i8 %16 to i32
  %24 = add i8 %14, 4
  %25 = and i8 %14, 7
  %26 = mul nuw i8 %25, 24
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %27, 20
  %29 = lshr i8 %14, 3
  %30 = zext nneg i8 %29 to i32
  %31 = mul nuw nsw i32 %30, 24
  %32 = add nuw nsw i32 %31, 84
  %33 = getelementptr %struct.SelectionListAnimation, ptr @gSelectionListAnimations75B4, i32 %23
  %34 = load ptr, ptr %33, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %28, i32 noundef 0, i32 noundef %32, ptr noundef %34) #3
  %35 = add i8 %14, 1
  br label %36

36:                                               ; preds = %22, %12
  %37 = phi i8 [ %35, %22 ], [ %14, %12 ]
  %38 = add nuw nsw i32 %13, 1
  %39 = icmp eq i32 %38, 48
  br i1 %39, label %40, label %12

40:                                               ; preds = %36
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDecompressMap10_5SelectionDetail(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gSelectionListIndices3900, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i32
  %9 = shl nuw nsw i32 %8, 1
  %10 = getelementptr ptr, ptr @gSelectionListDetails7C5C, i32 %9
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %11, ptr noundef nonnull @gGameCounterDisplayBuffer, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #3
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr @gSelectionListIndices3900, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = or disjoint i32 %17, 1
  %19 = getelementptr ptr, ptr @gSelectionListDetails7C5C, i32 %18
  %20 = load ptr, ptr %19, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %20, ptr noundef inttoptr (i32 sub (i32 ptrtoint (ptr @gGameCounterDisplayBuffer to i32), i32 4096) to ptr)) #3
  br label %21

21:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local arm_apcscc void @DecompressStridedRows(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChangeMap10_5FlagsFromKeys(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 2) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %52, label %4

4:                                                ; preds = %1
  %5 = tail call arm_apcscc i32 @ScriptCallbackReadKeyMask(ptr noundef null) #3
  %6 = load i16, ptr @gAnimationClassValues, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = and i32 %7, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13, %23
  %17 = phi i8 [ %24, %23 ], [ 0, %13 ]
  %18 = or disjoint i8 %17, 32
  %19 = icmp ult i8 %18, 45
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = add nuw nsw i8 %17, -66
  %22 = zext i8 %21 to i16
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %22, i32 noundef 1) #3
  br label %23

23:                                               ; preds = %16, %20
  %24 = add nuw nsw i8 %17, 1
  %25 = icmp ult i8 %17, 15
  br i1 %25, label %16, label %52

26:                                               ; preds = %13
  %27 = and i32 %7, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %26, %29
  %30 = phi i8 [ %33, %29 ], [ 0, %26 ]
  %31 = add nuw nsw i8 %30, -98
  %32 = zext i8 %31 to i16
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %32, i32 noundef 0) #3
  %33 = add nuw nsw i8 %30, 1
  %34 = icmp ult i8 %30, 44
  br i1 %34, label %29, label %52

35:                                               ; preds = %10, %4
  %36 = phi i16 [ 158, %4 ], [ 174, %10 ]
  %37 = phi i16 [ 159, %4 ], [ 175, %10 ]
  %38 = phi i16 [ 160, %4 ], [ 176, %10 ]
  %39 = phi i16 [ 161, %4 ], [ 177, %10 ]
  %40 = phi i16 [ 162, %4 ], [ 178, %10 ]
  %41 = phi i16 [ 163, %4 ], [ 179, %10 ]
  %42 = phi i16 [ 164, %4 ], [ 180, %10 ]
  %43 = phi i16 [ 165, %4 ], [ 181, %10 ]
  %44 = phi i16 [ 166, %4 ], [ 182, %10 ]
  %45 = phi i16 [ 167, %4 ], [ 183, %10 ]
  %46 = phi i16 [ 168, %4 ], [ 184, %10 ]
  %47 = phi i16 [ 169, %4 ], [ 185, %10 ]
  %48 = phi i16 [ 170, %4 ], [ 186, %10 ]
  %49 = phi i16 [ 171, %4 ], [ 187, %10 ]
  %50 = phi i16 [ 172, %4 ], [ 188, %10 ]
  %51 = phi i16 [ 173, %4 ], [ 189, %10 ]
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %36, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %37, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %38, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %39, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %40, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %41, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %42, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %43, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %44, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %45, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %46, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %47, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %48, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %49, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %50, i32 noundef 1) #3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %51, i32 noundef 1) #3
  br label %52

52:                                               ; preds = %23, %29, %35, %26, %1
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackReadKeyMask(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMap10_5MoreTextMarker(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gSelectionListIndices3900, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i32
  %9 = mul nuw nsw i32 %8, 5
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr @gSelectionListLanguagePageCounts77D0, i32 %9
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 208, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @gSelectionListMoreText8F8D9D) #3
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 387), align 1
  br label %19

17:                                               ; preds = %7
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 31, i8 noundef zeroext 0) #3
  br label %19

18:                                               ; preds = %1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 31, i8 noundef zeroext 0) #3
  br label %19

19:                                               ; preds = %16, %17, %18
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 6091}
!5 = !{i64 7724}
!6 = !{i64 8130}
!7 = !{i64 9279}
