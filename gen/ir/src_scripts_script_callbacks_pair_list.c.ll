; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.PairListEntry = type { i8, i8, i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gPairListAnimation088FCA21 = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCA29 = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCA3D = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCA59 = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCA70 = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCA8C = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCAB7 = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCACE = external dso_local constant [0 x i8], align 1
@gPairListAnimation088FCAE5 = external dso_local constant [0 x i8], align 1
@gPairListSources = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gPairListEntries = external dso_local global [0 x %struct.PairListEntry], align 2
@gPairListEntryCount = external dso_local local_unnamed_addr global i32, align 4
@gSaveGroup3Block3C50 = external dso_local global [0 x i8], align 1
@gPairListSelections = external dso_local local_unnamed_addr global [0 x i8], align 1
@gPairListHeaderMap = external dso_local constant [0 x i8], align 1
@gPairListRowGraphics = external dso_local global [0 x [30 x ptr]], align 4
@gPairListFooterMap = external dso_local constant [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gPairListCompletedAnimation = external dso_local constant [0 x i8], align 1
@gSaveGroup3Byte35CC = external dso_local local_unnamed_addr global i8, align 1
@gPairListSlotX = external dso_local constant [0 x [5 x i8]], align 1
@gSaveGroup3DefaultIndices = external dso_local constant [0 x i8], align 1
@gSaveGroup3PairPalettes = external dso_local global [0 x ptr], align 4
@gPairListSlotAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gPairListRemainingAnimation = external dso_local constant [0 x i8], align 1
@gPairListSeparatorAnimation = external dso_local constant [0 x i8], align 1
@gPairListCountAnimation = external dso_local constant [0 x i8], align 1
@gSaveGroup3SelectedNumberAnimations = external dso_local global [0 x ptr], align 4
@gPairListIconPositions = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gSaveGroup3PairAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gCommunicationTextTileAttributes = external dso_local global [0 x i16], align 2

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableVcountInterrupt(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load volatile i16, ptr inttoptr (i32 67109384 to ptr), align 8
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  %3 = load volatile i16, ptr inttoptr (i32 67109376 to ptr), align 512
  %4 = and i16 %3, -5
  store volatile i16 %4, ptr inttoptr (i32 67109376 to ptr), align 512
  store volatile i16 %2, ptr inttoptr (i32 67109384 to ptr), align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEnableVcountInterrupt(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load volatile i16, ptr inttoptr (i32 67109376 to ptr), align 512
  %3 = or i16 %2, 4
  store volatile i16 %3, ptr inttoptr (i32 67109376 to ptr), align 512
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD594() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCA21) #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD5A8() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCA29) #9
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull @gPairListAnimation088FCA29) #9
  ret void
}

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD5C8() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCA3D) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD5DC() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCA59) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD5F0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCA70) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD604() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCA8C) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD618() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCAB7) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD62C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCACE) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PairListAnimationCD640() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gPairListAnimation088FCAE5) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPreparePairList(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 33), align 1
  %3 = zext i8 %2 to i32
  %4 = add nsw i32 %3, -1
  %5 = getelementptr [0 x ptr], ptr @gPairListSources, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  store i32 0, ptr @gPairListEntryCount, align 4
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %18, %1
  store i8 0, ptr @gPairListSelections, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gPairListSelections, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gPairListSelections, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gPairListSelections, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gPairListSelections, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gPairListSelections, i32 0, i32 5), align 1
  %10 = tail call arm_apcscc ptr @GetVideoState() #9
  %11 = getelementptr inbounds %struct.VideoState, ptr %10, i32 0, i32 16
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, -16384
  %14 = or disjoint i16 %13, 336
  store i16 %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.VideoState, ptr %10, i32 0, i32 16, i32 1
  store i8 4, ptr %15, align 2
  %16 = getelementptr inbounds %struct.VideoState, ptr %10, i32 0, i32 16, i32 2
  store i8 8, ptr %16, align 1
  %17 = getelementptr inbounds %struct.VideoState, ptr %10, i32 0, i32 16, i32 3
  store i8 0, ptr %17, align 4
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0

18:                                               ; preds = %1, %18
  %19 = phi i8 [ %43, %18 ], [ %7, %1 ]
  %20 = phi ptr [ %41, %18 ], [ %6, %1 ]
  %21 = phi ptr [ %40, %18 ], [ @gPairListEntries, %1 ]
  %22 = phi i32 [ %42, %18 ], [ 0, %1 ]
  store i8 %19, ptr %21, align 2
  %23 = getelementptr inbounds %struct.PairListEntry, ptr %20, i32 0, i32 2
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds %struct.PairListEntry, ptr %21, i32 0, i32 2
  store i16 %24, ptr %25, align 2
  %26 = load i8, ptr %20, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 2
  %29 = getelementptr i8, ptr @gSaveGroup3Block3C50, i32 %28
  %30 = getelementptr inbounds %struct.PairListEntry, ptr %20, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 7
  %33 = load i8, ptr %29, align 1
  %34 = getelementptr i8, ptr %29, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = or i8 %35, %33
  %37 = and i8 %36, -8
  %38 = or disjoint i8 %37, %32
  %39 = getelementptr inbounds %struct.PairListEntry, ptr %21, i32 0, i32 1
  store i8 %38, ptr %39, align 1
  %40 = getelementptr %struct.PairListEntry, ptr %21, i32 1
  %41 = getelementptr %struct.PairListEntry, ptr %20, i32 1
  %42 = add i32 %22, 1
  store i32 %42, ptr @gPairListEntryCount, align 4
  %43 = load i8, ptr %41, align 2
  %44 = icmp eq i8 %43, -1
  br i1 %44, label %9, label %18
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderPairList(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef nonnull @gPairListHeaderMap, ptr noundef nonnull inttoptr (i32 100712450 to ptr)) #9
  %2 = load i32, ptr @gPairListEntryCount, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %125, label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %118, %4 ], [ 33, %1 ]
  %6 = phi i32 [ %120, %4 ], [ 32, %1 ]
  %7 = phi i32 [ %115, %4 ], [ 28673, %1 ]
  %8 = phi ptr [ %22, %4 ], [ @gPairListEntries, %1 ]
  %9 = phi i32 [ %119, %4 ], [ %2, %1 ]
  %10 = load i8, ptr %8, align 2
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 2
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %14 = zext i8 %13 to i32
  %15 = mul nuw nsw i32 %14, 120
  %16 = add i32 %12, ptrtoint (ptr @gPairListRowGraphics to i32)
  %17 = add i32 %16, %15
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 4
  %20 = add i32 %6, 100679680
  %21 = inttoptr i32 %20 to ptr
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %19, ptr noundef %21) #9
  %22 = getelementptr %struct.PairListEntry, ptr %8, i32 1
  %23 = shl i32 %5, 1
  %24 = add i32 %23, 100712448
  %25 = inttoptr i32 %24 to ptr
  %26 = add i32 %23, 100720640
  %27 = inttoptr i32 %26 to ptr
  %28 = trunc i32 %7 to i16
  %29 = getelementptr i16, ptr %25, i32 1
  store i16 %28, ptr %25, align 2
  %30 = getelementptr i16, ptr %27, i32 1
  store i16 -28395, ptr %27, align 2
  %31 = trunc i32 %7 to i16
  %32 = add i16 %31, 1
  %33 = getelementptr i16, ptr %25, i32 2
  store i16 %32, ptr %29, align 2
  %34 = getelementptr i16, ptr %27, i32 2
  store i16 -28395, ptr %30, align 2
  %35 = trunc i32 %7 to i16
  %36 = add i16 %35, 2
  %37 = getelementptr i16, ptr %25, i32 3
  store i16 %36, ptr %33, align 2
  %38 = getelementptr i16, ptr %27, i32 3
  store i16 -28395, ptr %34, align 2
  %39 = trunc i32 %7 to i16
  %40 = add i16 %39, 3
  %41 = getelementptr i16, ptr %25, i32 4
  store i16 %40, ptr %37, align 2
  %42 = getelementptr i16, ptr %27, i32 4
  store i16 -28395, ptr %38, align 2
  %43 = trunc i32 %7 to i16
  %44 = add i16 %43, 4
  %45 = getelementptr i16, ptr %25, i32 5
  store i16 %44, ptr %41, align 2
  %46 = getelementptr i16, ptr %27, i32 5
  store i16 -28395, ptr %42, align 2
  %47 = trunc i32 %7 to i16
  %48 = add i16 %47, 5
  %49 = getelementptr i16, ptr %25, i32 6
  store i16 %48, ptr %45, align 2
  %50 = getelementptr i16, ptr %27, i32 6
  store i16 -28395, ptr %46, align 2
  %51 = trunc i32 %7 to i16
  %52 = add i16 %51, 6
  %53 = getelementptr i16, ptr %25, i32 7
  store i16 %52, ptr %49, align 2
  %54 = getelementptr i16, ptr %27, i32 7
  store i16 -28395, ptr %50, align 2
  %55 = trunc i32 %7 to i16
  %56 = add i16 %55, 7
  %57 = getelementptr i16, ptr %25, i32 8
  store i16 %56, ptr %53, align 2
  %58 = getelementptr i16, ptr %27, i32 8
  store i16 -28395, ptr %54, align 2
  %59 = trunc i32 %7 to i16
  %60 = add i16 %59, 8
  %61 = getelementptr i16, ptr %25, i32 9
  store i16 %60, ptr %57, align 2
  %62 = getelementptr i16, ptr %27, i32 9
  store i16 -28395, ptr %58, align 2
  %63 = trunc i32 %7 to i16
  %64 = add i16 %63, 9
  %65 = getelementptr i16, ptr %25, i32 10
  store i16 %64, ptr %61, align 2
  %66 = getelementptr i16, ptr %27, i32 10
  store i16 -28395, ptr %62, align 2
  %67 = trunc i32 %7 to i16
  %68 = add i16 %67, 10
  store i16 %68, ptr %65, align 2
  store i16 -28395, ptr %66, align 2
  %69 = shl i32 %5, 1
  %70 = add i32 %69, 100712512
  %71 = inttoptr i32 %70 to ptr
  %72 = add i32 %69, 100720704
  %73 = inttoptr i32 %72 to ptr
  %74 = trunc i32 %7 to i16
  %75 = add i16 %74, 11
  %76 = getelementptr i16, ptr %71, i32 1
  store i16 %75, ptr %71, align 2
  %77 = getelementptr i16, ptr %73, i32 1
  store i16 -28394, ptr %73, align 2
  %78 = trunc i32 %7 to i16
  %79 = add i16 %78, 12
  %80 = getelementptr i16, ptr %71, i32 2
  store i16 %79, ptr %76, align 2
  %81 = getelementptr i16, ptr %73, i32 2
  store i16 -28394, ptr %77, align 2
  %82 = trunc i32 %7 to i16
  %83 = add i16 %82, 13
  %84 = getelementptr i16, ptr %71, i32 3
  store i16 %83, ptr %80, align 2
  %85 = getelementptr i16, ptr %73, i32 3
  store i16 -28394, ptr %81, align 2
  %86 = trunc i32 %7 to i16
  %87 = add i16 %86, 14
  %88 = getelementptr i16, ptr %71, i32 4
  store i16 %87, ptr %84, align 2
  %89 = getelementptr i16, ptr %73, i32 4
  store i16 -28394, ptr %85, align 2
  %90 = trunc i32 %7 to i16
  %91 = add i16 %90, 15
  %92 = getelementptr i16, ptr %71, i32 5
  store i16 %91, ptr %88, align 2
  %93 = getelementptr i16, ptr %73, i32 5
  store i16 -28394, ptr %89, align 2
  %94 = trunc i32 %7 to i16
  %95 = add i16 %94, 16
  %96 = getelementptr i16, ptr %71, i32 6
  store i16 %95, ptr %92, align 2
  %97 = getelementptr i16, ptr %73, i32 6
  store i16 -28394, ptr %93, align 2
  %98 = trunc i32 %7 to i16
  %99 = add i16 %98, 17
  %100 = getelementptr i16, ptr %71, i32 7
  store i16 %99, ptr %96, align 2
  %101 = getelementptr i16, ptr %73, i32 7
  store i16 -28394, ptr %97, align 2
  %102 = trunc i32 %7 to i16
  %103 = add i16 %102, 18
  %104 = getelementptr i16, ptr %71, i32 8
  store i16 %103, ptr %100, align 2
  %105 = getelementptr i16, ptr %73, i32 8
  store i16 -28394, ptr %101, align 2
  %106 = trunc i32 %7 to i16
  %107 = add i16 %106, 19
  %108 = getelementptr i16, ptr %71, i32 9
  store i16 %107, ptr %104, align 2
  %109 = getelementptr i16, ptr %73, i32 9
  store i16 -28394, ptr %105, align 2
  %110 = trunc i32 %7 to i16
  %111 = add i16 %110, 20
  %112 = getelementptr i16, ptr %71, i32 10
  store i16 %111, ptr %108, align 2
  %113 = getelementptr i16, ptr %73, i32 10
  store i16 -28394, ptr %109, align 2
  %114 = add nuw nsw i32 %7, 22
  %115 = and i32 %114, 65535
  %116 = trunc i32 %7 to i16
  %117 = add i16 %116, 21
  store i16 %117, ptr %112, align 2
  store i16 -28394, ptr %113, align 2
  %118 = add i32 %5, 64
  %119 = add i32 %9, -1
  %120 = add i32 %6, 704
  %121 = icmp eq i32 %119, 0
  br i1 %121, label %122, label %4

122:                                              ; preds = %4
  %123 = shl i32 %118, 1
  %124 = add i32 %123, 100712448
  br label %125

125:                                              ; preds = %122, %1
  %126 = phi i32 [ 100712514, %1 ], [ %124, %122 ]
  %127 = inttoptr i32 %126 to ptr
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef nonnull @gPairListFooterMap, ptr noundef %127) #9
  %128 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 2
  %131 = add i32 %130, ptrtoint (ptr @gPairListEntries to i32)
  %132 = inttoptr i32 %131 to ptr
  %133 = load i8, ptr %132, align 2
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 2
  %136 = add i32 %135, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %137 = inttoptr i32 %136 to ptr
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp sgt i8 %138, -1
  br i1 %140, label %154, label %141

141:                                              ; preds = %125
  %142 = and i32 %139, 64
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141
  %145 = and i32 %139, 32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %144
  %148 = and i32 %139, 16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = lshr i8 %138, 1
  %152 = and i8 %151, 4
  %153 = xor i8 %152, 4
  br label %154

154:                                              ; preds = %125, %141, %144, %147, %150
  %155 = phi i8 [ 0, %125 ], [ 1, %141 ], [ 2, %144 ], [ 3, %147 ], [ %153, %150 ]
  %156 = getelementptr i8, ptr @gPairListSelections, i32 %129
  store i8 %155, ptr %156, align 1
  store i16 -28671, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 44), align 2
  store i16 -28670, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 45), align 2
  store i16 -28669, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 46), align 2
  store i16 -28668, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 47), align 2
  store i16 -28667, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 48), align 2
  store i16 -28666, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 49), align 2
  store i16 -28665, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 50), align 2
  store i16 -28664, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 51), align 2
  store i16 -28663, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 52), align 2
  store i16 -28662, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 53), align 2
  store i16 -28661, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 54), align 2
  store i16 -28660, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 55), align 2
  store i16 -28659, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 56), align 2
  store i16 -28658, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 57), align 2
  store i16 -28657, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 58), align 2
  store i16 -28656, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 59), align 2
  store i16 -28655, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 60), align 2
  store i16 -28654, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 61), align 2
  store i16 -28653, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 62), align 2
  store i16 -28652, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 63), align 2
  store i16 -28651, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 64), align 2
  store i16 -28650, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 65), align 2
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 44) to i32), i32 noundef 100712514, i32 noundef 11, i32 noundef 2, i32 noundef 0) #9
  %157 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr [0 x i8], ptr @gPairListSelections, i32 0, i32 %158
  %160 = load i8, ptr %159, align 1
  %161 = zext nneg i8 %160 to i32
  %162 = lshr i32 128, %161
  %163 = trunc i32 %162 to i8
  tail call arm_apcscc void @RefreshPairListSelectedDisplay(i8 noundef zeroext %157, i8 noundef zeroext %163) #10
  tail call arm_apcscc void @RenderPairListRemainingCount() #10
  tail call arm_apcscc void @ResetRenderSlotRange(i32 noundef 18, i32 noundef 20) #9
  %164 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  %165 = zext i16 %164 to i32
  tail call arm_apcscc void @RenderPairListNumber(i8 noundef zeroext 18, i32 noundef %165, i32 noundef 200, i32 noundef 56) #10
  ret i32 0
}

declare dso_local arm_apcscc void @BiosLZ77VRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @SelectFirstUnsetPairListVariant(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = zext i8 %0 to i32
  %3 = shl nuw nsw i32 %2, 2
  %4 = add i32 %3, ptrtoint (ptr @gPairListEntries to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 2
  %9 = add i32 %8, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i8 %11, -1
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = and i32 %12, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = and i32 %12, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = and i32 %12, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = lshr i8 %11, 1
  %25 = and i8 %24, 4
  %26 = xor i8 %25, 4
  br label %27

27:                                               ; preds = %23, %1, %14, %17, %20
  %28 = phi i8 [ 0, %1 ], [ 1, %14 ], [ 2, %17 ], [ 3, %20 ], [ %26, %23 ]
  %29 = getelementptr i8, ptr @gPairListSelections, i32 %2
  store i8 %28, ptr %29, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetPairListRowHighlight(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = zext i8 %1 to i32
  %4 = mul nuw nsw i32 %3, 88
  %5 = getelementptr i8, ptr @gCommunicationTextTileAttributes, i32 %4
  %6 = zext i8 %0 to i32
  %7 = shl nuw nsw i32 %3, 13
  %8 = mul nuw nsw i32 %6, 22
  %9 = add nuw nsw i32 %8, 28673
  %10 = add nuw nsw i32 %9, %7
  %11 = trunc i32 %10 to i16
  %12 = add i16 %11, 1
  %13 = getelementptr i16, ptr %5, i32 1
  store i16 %11, ptr %5, align 2
  %14 = add i16 %11, 2
  %15 = getelementptr i16, ptr %5, i32 2
  store i16 %12, ptr %13, align 2
  %16 = add i16 %11, 3
  %17 = getelementptr i16, ptr %5, i32 3
  store i16 %14, ptr %15, align 2
  %18 = add i16 %11, 4
  %19 = getelementptr i16, ptr %5, i32 4
  store i16 %16, ptr %17, align 2
  %20 = add i16 %11, 5
  %21 = getelementptr i16, ptr %5, i32 5
  store i16 %18, ptr %19, align 2
  %22 = add i16 %11, 6
  %23 = getelementptr i16, ptr %5, i32 6
  store i16 %20, ptr %21, align 2
  %24 = add i16 %11, 7
  %25 = getelementptr i16, ptr %5, i32 7
  store i16 %22, ptr %23, align 2
  %26 = add i16 %11, 8
  %27 = getelementptr i16, ptr %5, i32 8
  store i16 %24, ptr %25, align 2
  %28 = add i16 %11, 9
  %29 = getelementptr i16, ptr %5, i32 9
  store i16 %26, ptr %27, align 2
  %30 = add i16 %11, 10
  %31 = getelementptr i16, ptr %5, i32 10
  store i16 %28, ptr %29, align 2
  %32 = add i16 %11, 11
  %33 = getelementptr i16, ptr %5, i32 11
  store i16 %30, ptr %31, align 2
  %34 = add i16 %11, 12
  %35 = getelementptr i16, ptr %5, i32 12
  store i16 %32, ptr %33, align 2
  %36 = add i16 %11, 13
  %37 = getelementptr i16, ptr %5, i32 13
  store i16 %34, ptr %35, align 2
  %38 = add i16 %11, 14
  %39 = getelementptr i16, ptr %5, i32 14
  store i16 %36, ptr %37, align 2
  %40 = add i16 %11, 15
  %41 = getelementptr i16, ptr %5, i32 15
  store i16 %38, ptr %39, align 2
  %42 = add i16 %11, 16
  %43 = getelementptr i16, ptr %5, i32 16
  store i16 %40, ptr %41, align 2
  %44 = add i16 %11, 17
  %45 = getelementptr i16, ptr %5, i32 17
  store i16 %42, ptr %43, align 2
  %46 = add i16 %11, 18
  %47 = getelementptr i16, ptr %5, i32 18
  store i16 %44, ptr %45, align 2
  %48 = add i16 %11, 19
  %49 = getelementptr i16, ptr %5, i32 19
  store i16 %46, ptr %47, align 2
  %50 = add i16 %11, 20
  %51 = getelementptr i16, ptr %5, i32 20
  store i16 %48, ptr %49, align 2
  %52 = add i16 %11, 21
  %53 = getelementptr i16, ptr %5, i32 21
  store i16 %50, ptr %51, align 2
  store i16 %52, ptr %53, align 2
  %54 = shl nuw nsw i32 %6, 7
  %55 = ptrtoint ptr %5 to i32
  %56 = add nuw nsw i32 %54, 100712514
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef %55, i32 noundef %56, i32 noundef 11, i32 noundef 2, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshPairListSelectedDisplay(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = zext i8 %0 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = add i32 %4, ptrtoint (ptr @gPairListEntries to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 2
  %10 = add i32 %9, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, %1
  %14 = icmp ne i8 %13, 0
  %15 = icmp eq i8 %13, %1
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 108, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @gPairListCompletedAnimation) #9
  br label %39

18:                                               ; preds = %2
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %20
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = getelementptr [0 x [2 x i16]], ptr @gPairListIconPositions, i32 0, i32 %23
  %25 = load i16, ptr %24, align 2
  %26 = shl nuw nsw i32 %23, 1
  %27 = or disjoint i32 %26, 1
  %28 = getelementptr i16, ptr @gPairListIconPositions, i32 %27
  %29 = load i16, ptr %28, align 2
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef 12) #9
  tail call arm_apcscc void @PrepareSaveGroup3PairGraphics(i8 noundef zeroext %22, i32 noundef 0) #9
  %30 = sext i16 %25 to i32
  %31 = sext i16 %29 to i32
  %32 = urem i8 %22, 3
  %33 = zext nneg i8 %32 to i32
  %34 = getelementptr [0 x ptr], ptr @gSaveGroup3PairAnimations, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %30, i32 noundef %31, i32 noundef 0, ptr noundef %35) #9
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 12, i8 noundef zeroext 1) #9
  %36 = load i8, ptr %6, align 2
  %37 = getelementptr [0 x i8], ptr @gPairListSelections, i32 0, i32 %3
  %38 = load i8, ptr %37, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %36, i8 noundef zeroext %38, i8 noundef zeroext 0, i32 noundef 0) #9
  br label %39

39:                                               ; preds = %18, %17
  tail call arm_apcscc void @UpdatePairListPaletteSlots() #10
  tail call arm_apcscc void @ResetRenderSlotRange(i32 noundef 21, i32 noundef 23) #9
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %41, i32 2
  %43 = load i16, ptr %42, align 2
  store i16 %43, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %44 = zext i16 %43 to i32
  tail call arm_apcscc void @RenderPairListNumber(i8 noundef zeroext 21, i32 noundef %44, i32 noundef 200, i32 noundef 92) #10
  %45 = load ptr, ptr @gRenderSlots, align 4
  %46 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %3, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 7
  %49 = getelementptr i8, ptr @gPairListSelections, i32 %3
  %50 = mul nuw nsw i8 %48, 5
  %51 = zext nneg i8 %50 to i32
  %52 = load i8, ptr %49, align 1
  %53 = zext i8 %52 to i32
  %54 = add i32 %53, add (i32 ptrtoint (ptr @gPairListSlotX to i32), i32 -5)
  %55 = add i32 %54, %51
  %56 = inttoptr i32 %55 to ptr
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = getelementptr %struct.RenderSlot, ptr %45, i32 31, i32 3
  store i32 %59, ptr %60, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderPairListRemainingCount() local_unnamed_addr #1 {
  tail call arm_apcscc void @ResetRenderSlotRange(i32 noundef 13, i32 noundef 17) #9
  %1 = load i8, ptr @gSaveGroup3Byte35CC, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @RenderPairListNumber(i8 noundef zeroext 13, i32 noundef %2, i32 noundef 184, i32 noundef 20) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 208, i32 noundef 20, i32 noundef 0, ptr noundef nonnull @gPairListRemainingAnimation) #9
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 15, i8 noundef zeroext 1) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 216, i32 noundef 20, i32 noundef 0, ptr noundef nonnull @gPairListSeparatorAnimation) #9
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 16, i8 noundef zeroext 1) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 224, i32 noundef 20, i32 noundef 0, ptr noundef nonnull @gPairListCountAnimation) #9
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 17, i8 noundef zeroext 1) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderPairListValue() local_unnamed_addr #1 {
  tail call arm_apcscc void @ResetRenderSlotRange(i32 noundef 18, i32 noundef 20) #9
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  %2 = zext i16 %1 to i32
  tail call arm_apcscc void @RenderPairListNumber(i8 noundef zeroext 18, i32 noundef %2, i32 noundef 200, i32 noundef 56) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectPreviousPairListEntry(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %97, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  %6 = zext i8 %2 to i16
  %7 = mul nuw nsw i16 %6, 22
  %8 = add nuw i16 %7, 28673
  %9 = add nuw i16 %7, 28674
  store i16 %8, ptr @gCommunicationTextTileAttributes, align 2
  %10 = add nuw i16 %7, 28675
  store i16 %9, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 1), align 2
  %11 = add nuw i16 %7, 28676
  store i16 %10, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 2), align 2
  %12 = add nuw i16 %7, 28677
  store i16 %11, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 3), align 2
  %13 = add nuw i16 %7, 28678
  store i16 %12, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 4), align 2
  %14 = add nuw i16 %7, 28679
  store i16 %13, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 5), align 2
  %15 = add nuw i16 %7, 28680
  store i16 %14, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 6), align 2
  %16 = add nuw i16 %7, 28681
  store i16 %15, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 7), align 2
  %17 = add nuw i16 %7, 28682
  store i16 %16, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 8), align 2
  %18 = add nuw i16 %7, 28683
  store i16 %17, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 9), align 2
  %19 = add nuw i16 %7, 28684
  store i16 %18, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 10), align 2
  %20 = add nuw i16 %7, 28685
  store i16 %19, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 11), align 2
  %21 = add nuw i16 %7, 28686
  store i16 %20, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 12), align 2
  %22 = add nuw i16 %7, 28687
  store i16 %21, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 13), align 2
  %23 = add nuw i16 %7, 28688
  store i16 %22, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 14), align 2
  %24 = add nuw i16 %7, 28689
  store i16 %23, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 15), align 2
  %25 = add nuw i16 %7, 28690
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 16), align 2
  %26 = add nuw i16 %7, 28691
  store i16 %25, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 17), align 2
  %27 = add nuw i16 %7, 28692
  store i16 %26, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 18), align 2
  %28 = add nuw i16 %7, 28693
  store i16 %27, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 19), align 2
  %29 = add nuw i16 %7, 28694
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 20), align 2
  store i16 %29, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 21), align 2
  %30 = shl nuw nsw i32 %5, 7
  %31 = add nuw nsw i32 %30, 100712514
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr @gCommunicationTextTileAttributes to i32), i32 noundef %31, i32 noundef 11, i32 noundef 2, i32 noundef 0) #9
  %32 = load ptr, ptr @gRenderSlots, align 4
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %34 = add i8 %33, -1
  store i8 %34, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %35 = zext i8 %34 to i32
  %36 = zext i8 %34 to i16
  %37 = mul nuw nsw i16 %36, 22
  %38 = add nuw nsw i16 %37, -28671
  %39 = add nuw nsw i16 %37, -28670
  store i16 %38, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 44), align 2
  %40 = add nuw nsw i16 %37, -28669
  store i16 %39, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 45), align 2
  %41 = add nuw nsw i16 %37, -28668
  store i16 %40, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 46), align 2
  %42 = add nuw nsw i16 %37, -28667
  store i16 %41, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 47), align 2
  %43 = add nuw nsw i16 %37, -28666
  store i16 %42, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 48), align 2
  %44 = add nuw nsw i16 %37, -28665
  store i16 %43, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 49), align 2
  %45 = add nuw nsw i16 %37, -28664
  store i16 %44, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 50), align 2
  %46 = add nuw nsw i16 %37, -28663
  store i16 %45, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 51), align 2
  %47 = add nuw nsw i16 %37, -28662
  store i16 %46, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 52), align 2
  %48 = add nuw nsw i16 %37, -28661
  store i16 %47, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 53), align 2
  %49 = add nuw nsw i16 %37, -28660
  store i16 %48, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 54), align 2
  %50 = add nuw nsw i16 %37, -28659
  store i16 %49, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 55), align 2
  %51 = add nuw nsw i16 %37, -28658
  store i16 %50, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 56), align 2
  %52 = add nuw nsw i16 %37, -28657
  store i16 %51, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 57), align 2
  %53 = add nuw nsw i16 %37, -28656
  store i16 %52, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 58), align 2
  %54 = add nuw nsw i16 %37, -28655
  store i16 %53, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 59), align 2
  %55 = add nuw nsw i16 %37, -28654
  store i16 %54, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 60), align 2
  %56 = add nuw nsw i16 %37, -28653
  store i16 %55, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 61), align 2
  %57 = add nuw nsw i16 %37, -28652
  store i16 %56, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 62), align 2
  %58 = add nuw nsw i16 %37, -28651
  store i16 %57, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 63), align 2
  %59 = add nuw nsw i16 %37, -28650
  store i16 %58, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 64), align 2
  store i16 %59, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 65), align 2
  %60 = shl nuw nsw i32 %35, 7
  %61 = add nuw nsw i32 %60, 100712514
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 44) to i32), i32 noundef %61, i32 noundef 11, i32 noundef 2, i32 noundef 0) #9
  %62 = getelementptr %struct.RenderSlot, ptr %32, i32 25, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1048576
  store i32 %64, ptr %62, align 4
  %65 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 2
  %68 = add i32 %67, ptrtoint (ptr @gPairListEntries to i32)
  %69 = inttoptr i32 %68 to ptr
  %70 = load i8, ptr %69, align 2
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 2
  %73 = add i32 %72, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %74 = inttoptr i32 %73 to ptr
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sgt i8 %75, -1
  br i1 %77, label %91, label %78

78:                                               ; preds = %4
  %79 = and i32 %76, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = and i32 %76, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = and i32 %76, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = lshr i8 %75, 1
  %89 = and i8 %88, 4
  %90 = xor i8 %89, 4
  br label %91

91:                                               ; preds = %4, %78, %81, %84, %87
  %92 = phi i8 [ 0, %4 ], [ 1, %78 ], [ 2, %81 ], [ 3, %84 ], [ %90, %87 ]
  %93 = getelementptr i8, ptr @gPairListSelections, i32 %66
  store i8 %92, ptr %93, align 1
  %94 = zext nneg i8 %92 to i32
  %95 = lshr i32 128, %94
  %96 = trunc i32 %95 to i8
  tail call arm_apcscc void @RefreshPairListSelectedDisplay(i8 noundef zeroext %65, i8 noundef zeroext %96) #10
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #9
  br label %97

97:                                               ; preds = %91, %1
  ret i32 0
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectNextPairListEntry(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = load i32, ptr @gPairListEntryCount, align 4
  %5 = add i32 %4, -1
  %6 = icmp ugt i32 %5, %3
  br i1 %6, label %7, label %99

7:                                                ; preds = %1
  %8 = zext i8 %2 to i16
  %9 = mul nuw nsw i16 %8, 22
  %10 = add nuw i16 %9, 28673
  %11 = add nuw i16 %9, 28674
  store i16 %10, ptr @gCommunicationTextTileAttributes, align 2
  %12 = add nuw i16 %9, 28675
  store i16 %11, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 1), align 2
  %13 = add nuw i16 %9, 28676
  store i16 %12, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 2), align 2
  %14 = add nuw i16 %9, 28677
  store i16 %13, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 3), align 2
  %15 = add nuw i16 %9, 28678
  store i16 %14, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 4), align 2
  %16 = add nuw i16 %9, 28679
  store i16 %15, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 5), align 2
  %17 = add nuw i16 %9, 28680
  store i16 %16, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 6), align 2
  %18 = add nuw i16 %9, 28681
  store i16 %17, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 7), align 2
  %19 = add nuw i16 %9, 28682
  store i16 %18, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 8), align 2
  %20 = add nuw i16 %9, 28683
  store i16 %19, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 9), align 2
  %21 = add nuw i16 %9, 28684
  store i16 %20, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 10), align 2
  %22 = add nuw i16 %9, 28685
  store i16 %21, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 11), align 2
  %23 = add nuw i16 %9, 28686
  store i16 %22, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 12), align 2
  %24 = add nuw i16 %9, 28687
  store i16 %23, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 13), align 2
  %25 = add nuw i16 %9, 28688
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 14), align 2
  %26 = add nuw i16 %9, 28689
  store i16 %25, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 15), align 2
  %27 = add nuw i16 %9, 28690
  store i16 %26, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 16), align 2
  %28 = add nuw i16 %9, 28691
  store i16 %27, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 17), align 2
  %29 = add nuw i16 %9, 28692
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 18), align 2
  %30 = add nuw i16 %9, 28693
  store i16 %29, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 19), align 2
  %31 = add nuw i16 %9, 28694
  store i16 %30, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 20), align 2
  store i16 %31, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 21), align 2
  %32 = shl nuw nsw i32 %3, 7
  %33 = add nuw nsw i32 %32, 100712514
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr @gCommunicationTextTileAttributes to i32), i32 noundef %33, i32 noundef 11, i32 noundef 2, i32 noundef 0) #9
  %34 = load ptr, ptr @gRenderSlots, align 4
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %36 = add i8 %35, 1
  store i8 %36, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %37 = zext i8 %36 to i32
  %38 = zext i8 %36 to i16
  %39 = mul nuw nsw i16 %38, 22
  %40 = add nuw nsw i16 %39, -28671
  %41 = add nuw nsw i16 %39, -28670
  store i16 %40, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 44), align 2
  %42 = add nuw nsw i16 %39, -28669
  store i16 %41, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 45), align 2
  %43 = add nuw nsw i16 %39, -28668
  store i16 %42, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 46), align 2
  %44 = add nuw nsw i16 %39, -28667
  store i16 %43, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 47), align 2
  %45 = add nuw nsw i16 %39, -28666
  store i16 %44, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 48), align 2
  %46 = add nuw nsw i16 %39, -28665
  store i16 %45, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 49), align 2
  %47 = add nuw nsw i16 %39, -28664
  store i16 %46, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 50), align 2
  %48 = add nuw nsw i16 %39, -28663
  store i16 %47, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 51), align 2
  %49 = add nuw nsw i16 %39, -28662
  store i16 %48, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 52), align 2
  %50 = add nuw nsw i16 %39, -28661
  store i16 %49, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 53), align 2
  %51 = add nuw nsw i16 %39, -28660
  store i16 %50, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 54), align 2
  %52 = add nuw nsw i16 %39, -28659
  store i16 %51, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 55), align 2
  %53 = add nuw nsw i16 %39, -28658
  store i16 %52, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 56), align 2
  %54 = add nuw nsw i16 %39, -28657
  store i16 %53, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 57), align 2
  %55 = add nuw nsw i16 %39, -28656
  store i16 %54, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 58), align 2
  %56 = add nuw nsw i16 %39, -28655
  store i16 %55, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 59), align 2
  %57 = add nuw nsw i16 %39, -28654
  store i16 %56, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 60), align 2
  %58 = add nuw nsw i16 %39, -28653
  store i16 %57, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 61), align 2
  %59 = add nuw nsw i16 %39, -28652
  store i16 %58, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 62), align 2
  %60 = add nuw nsw i16 %39, -28651
  store i16 %59, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 63), align 2
  %61 = add nuw nsw i16 %39, -28650
  store i16 %60, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 64), align 2
  store i16 %61, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 65), align 2
  %62 = shl nuw nsw i32 %37, 7
  %63 = add nuw nsw i32 %62, 100712514
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 44) to i32), i32 noundef %63, i32 noundef 11, i32 noundef 2, i32 noundef 0) #9
  %64 = getelementptr %struct.RenderSlot, ptr %34, i32 25, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1048576
  store i32 %66, ptr %64, align 4
  %67 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 2
  %70 = add i32 %69, ptrtoint (ptr @gPairListEntries to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 2
  %75 = add i32 %74, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %76 = inttoptr i32 %75 to ptr
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sgt i8 %77, -1
  br i1 %79, label %93, label %80

80:                                               ; preds = %7
  %81 = and i32 %78, 64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = and i32 %78, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = and i32 %78, 16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = lshr i8 %77, 1
  %91 = and i8 %90, 4
  %92 = xor i8 %91, 4
  br label %93

93:                                               ; preds = %7, %80, %83, %86, %89
  %94 = phi i8 [ 0, %7 ], [ 1, %80 ], [ 2, %83 ], [ 3, %86 ], [ %92, %89 ]
  %95 = getelementptr i8, ptr @gPairListSelections, i32 %68
  store i8 %94, ptr %95, align 1
  %96 = zext nneg i8 %94 to i32
  %97 = lshr i32 128, %96
  %98 = trunc i32 %97 to i8
  tail call arm_apcscc void @RefreshPairListSelectedDisplay(i8 noundef zeroext %67, i8 noundef zeroext %98) #10
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #9
  br label %99

99:                                               ; preds = %93, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectPreviousPairListVariant(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gPairListSelections, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = add i8 %5, -1
  store i8 %8, ptr %4, align 1
  %9 = zext nneg i8 %8 to i32
  %10 = lshr i32 128, %9
  %11 = trunc i32 %10 to i8
  tail call arm_apcscc void @RefreshPairListSelectedDisplay(i8 noundef zeroext %2, i8 noundef zeroext %11) #10
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #9
  br label %12

12:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectNextPairListVariant(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gPairListSelections, i32 %3
  %5 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %3, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 7
  %8 = zext nneg i8 %7 to i32
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %8, -1
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = add i8 %9, 1
  store i8 %14, ptr %4, align 1
  %15 = zext nneg i8 %14 to i32
  %16 = lshr i32 128, %15
  %17 = trunc i32 %16 to i8
  tail call arm_apcscc void @RefreshPairListSelectedDisplay(i8 noundef zeroext %2, i8 noundef zeroext %17) #10
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #9
  br label %18

18:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDecrementPairListValue(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 192), align 2
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = add i16 %2, -1
  store i16 %5, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 192), align 2
  %6 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  %7 = add i16 %6, -1
  store i16 %7, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  tail call arm_apcscc void @ResetRenderSlotRange(i32 noundef 18, i32 noundef 20) #9
  %8 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  %9 = zext i16 %8 to i32
  tail call arm_apcscc void @RenderPairListNumber(i8 noundef zeroext 18, i32 noundef %9, i32 noundef 200, i32 noundef 56) #10
  br label %10

10:                                               ; preds = %4, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshPairListRemainingCount(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @RenderPairListRemainingCount() #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMarkSelectedPairListVariant(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.PairListEntry, ptr @gPairListEntries, i32 %3
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = getelementptr i8, ptr @gSaveGroup3Block3C50, i32 %7
  %9 = getelementptr [0 x i8], ptr @gPairListSelections, i32 0, i32 %3
  %10 = load i8, ptr %9, align 1
  %11 = zext nneg i8 %10 to i32
  %12 = lshr i32 128, %11
  %13 = load i8, ptr %8, align 1
  %14 = trunc i32 %12 to i8
  %15 = or i8 %13, %14
  store i8 %15, ptr %8, align 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 108, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @gPairListCompletedAnimation) #9
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshPairListSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = add i32 %4, ptrtoint (ptr @gPairListEntries to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 2
  %10 = add i32 %9, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i8 %12, -1
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = and i32 %13, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = and i32 %13, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = and i32 %13, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = lshr i8 %12, 1
  %26 = and i8 %25, 4
  %27 = xor i8 %26, 4
  br label %28

28:                                               ; preds = %1, %15, %18, %21, %24
  %29 = phi i8 [ 0, %1 ], [ 1, %15 ], [ 2, %18 ], [ 3, %21 ], [ %27, %24 ]
  %30 = getelementptr i8, ptr @gPairListSelections, i32 %3
  store i8 %29, ptr %30, align 1
  %31 = zext nneg i8 %29 to i32
  %32 = lshr i32 128, %31
  %33 = trunc i32 %32 to i8
  tail call arm_apcscc void @RefreshPairListSelectedDisplay(i8 noundef zeroext %2, i8 noundef zeroext %33) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifySelectedPairListVariant(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.PairListEntry, ptr @gPairListEntries, i32 %3
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr [0 x i8], ptr @gPairListSelections, i32 0, i32 %3
  %8 = load i8, ptr %7, align 1
  %9 = zext nneg i8 %8 to i32
  %10 = lshr i32 128, %9
  %11 = shl nuw nsw i32 %6, 2
  %12 = add i32 %11, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %10, %15
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %16, %10
  %19 = select i1 %18, i8 2, i8 1
  %20 = select i1 %17, i8 0, i8 %19
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @ClassifyPairListFlags(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = shl i32 %0, 2
  %4 = and i32 %3, 1020
  %5 = add i32 %4, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, %1
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, 255
  %12 = icmp eq i32 %9, %11
  %13 = select i1 %12, i8 2, i8 1
  %14 = select i1 %10, i8 0, i8 %13
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifySelectedPairListEntry(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %3
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = add i32 %7, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = icmp ult i8 %10, 8
  %12 = icmp ugt i8 %10, -9
  %13 = select i1 %12, i8 2, i8 1
  %14 = select i1 %11, i8 0, i8 %13
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshPairListPaletteSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @UpdatePairListPaletteSlots() #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdatePairListPaletteSlots() local_unnamed_addr #1 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = zext i8 %1 to i32
  %3 = getelementptr %struct.PairListEntry, ptr @gPairListEntries, i32 %2
  %4 = load i8, ptr %3, align 2
  %5 = getelementptr %struct.PairListEntry, ptr @gPairListEntries, i32 %2, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 7
  %8 = zext nneg i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 5
  %10 = add i32 %9, add (i32 ptrtoint (ptr @gPairListSlotX to i32), i32 -5)
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i8 %4, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %0
  %14 = zext i8 %4 to i32
  %15 = add i32 %14, sub (i32 ptrtoint (ptr @gSaveGroup3DefaultIndices to i32), i32 1)
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i8 [ %23, %17 ], [ 0, %13 ]
  %19 = phi i32 [ %25, %17 ], [ %14, %13 ]
  %20 = phi ptr [ %21, %17 ], [ %16, %13 ]
  %21 = getelementptr i8, ptr %20, i32 -1
  %22 = load i8, ptr %20, align 1
  %23 = add i8 %22, %18
  %24 = add nuw nsw i32 %19, 255
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17

27:                                               ; preds = %17
  %28 = zext i8 %23 to i32
  %29 = shl nuw nsw i32 %28, 2
  br label %30

30:                                               ; preds = %27, %0
  %31 = phi i32 [ 0, %0 ], [ %29, %27 ]
  %32 = icmp eq i8 %7, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %30
  %34 = add i32 %31, ptrtoint (ptr @gSaveGroup3PairPalettes to i32)
  %35 = inttoptr i32 %34 to ptr
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi i32 [ 0, %33 ], [ %53, %36 ]
  %38 = phi i32 [ 26, %33 ], [ %54, %36 ]
  %39 = phi ptr [ %11, %33 ], [ %43, %36 ]
  %40 = phi i32 [ 83886980, %33 ], [ %52, %36 ]
  %41 = phi ptr [ %35, %33 ], [ %48, %36 ]
  %42 = trunc i32 %38 to i8
  %43 = getelementptr i8, ptr %39, i32 1
  %44 = load i8, ptr %39, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr [0 x ptr], ptr @gPairListSlotAnimations, i32 0, i32 %37
  %47 = load ptr, ptr %46, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %42, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %45, i32 noundef 15, i32 noundef 0, ptr noundef %47) #9
  %48 = getelementptr ptr, ptr %41, i32 1
  %49 = load ptr, ptr %41, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = add i32 %50, 30
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %51, i32 noundef %40, i32 noundef 2) #9
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %38, i8 noundef zeroext 1) #9
  %52 = add nuw nsw i32 %40, 2
  %53 = add nuw nsw i32 %37, 1
  %54 = add nuw nsw i32 %38, 1
  %55 = icmp eq i32 %53, %8
  br i1 %55, label %56, label %36

56:                                               ; preds = %36
  %57 = mul i32 %54, 104
  %58 = icmp ult i8 %7, 5
  br i1 %58, label %59, label %73

59:                                               ; preds = %30, %56
  %60 = phi i32 [ %57, %56 ], [ 2704, %30 ]
  %61 = phi i32 [ %8, %56 ], [ 0, %30 ]
  %62 = load ptr, ptr @gRenderSlots, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %64

64:                                               ; preds = %59, %64
  %65 = phi i32 [ %70, %64 ], [ %61, %59 ]
  %66 = phi i32 [ %71, %64 ], [ %60, %59 ]
  %67 = add i32 %66, %63
  %68 = inttoptr i32 %67 to ptr
  %69 = getelementptr inbounds %struct.RenderSlot, ptr %68, i32 0, i32 23
  store i8 0, ptr %69, align 4
  %70 = add nuw nsw i32 %65, 1
  %71 = add nuw nsw i32 %66, 104
  %72 = icmp eq i32 %70, 5
  br i1 %72, label %73, label %64

73:                                               ; preds = %64, %56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadMissingPairListCount(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr @gSaveGroup3Byte35CC, align 1
  %3 = sub i8 30, %2
  store i8 %3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 1), align 1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckPairListCompletion(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 33), align 1
  %3 = zext i8 %2 to i32
  %4 = add nsw i32 %3, -1
  %5 = getelementptr [0 x ptr], ptr @gPairListSources, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %23, label %13

9:                                                ; preds = %13
  %10 = getelementptr %struct.PairListEntry, ptr %15, i32 1
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, -1
  br i1 %12, label %23, label %13

13:                                               ; preds = %1, %9
  %14 = phi i8 [ %11, %9 ], [ %7, %1 ]
  %15 = phi ptr [ %10, %9 ], [ %6, %1 ]
  %16 = zext i8 %14 to i32
  %17 = shl nuw nsw i32 %16, 2
  %18 = add i32 %17, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = icmp ugt i8 %20, -9
  br i1 %21, label %9, label %22

22:                                               ; preds = %13
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %23

23:                                               ; preds = %9, %1, %22
  ret i32 0
}

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @CopyPairListVariationPalette(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq i8 %0, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = zext i8 %0 to i32
  %6 = add i32 %5, sub (i32 ptrtoint (ptr @gSaveGroup3DefaultIndices to i32), i32 1)
  %7 = inttoptr i32 %6 to ptr
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %12, %8 ], [ %7, %4 ]
  %10 = phi i8 [ %14, %8 ], [ 0, %4 ]
  %11 = phi i8 [ %15, %8 ], [ %0, %4 ]
  %12 = getelementptr i8, ptr %9, i32 -1
  %13 = load i8, ptr %9, align 1
  %14 = add i8 %13, %10
  %15 = add i8 %11, -1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %8
  %18 = zext i8 %14 to i32
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %21 = zext i8 %1 to i32
  %22 = add nuw nsw i32 %20, %21
  %23 = getelementptr [0 x ptr], ptr @gSaveGroup3PairPalettes, i32 0, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = add i32 %25, 30
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %26, i32 noundef 83886980, i32 noundef 2) #9
  ret void
}

declare dso_local arm_apcscc void @ResetRenderSlotRange(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderPairListNumber(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = and i32 %1, 65535
  %6 = icmp ugt i32 %5, 99
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = trunc i32 %1 to i16
  %9 = udiv i16 %8, 100
  %10 = zext nneg i16 %9 to i32
  %11 = shl i32 %2, 16
  %12 = ashr exact i32 %11, 16
  %13 = shl i32 %3, 16
  %14 = ashr exact i32 %13, 16
  %15 = getelementptr [0 x ptr], ptr @gSaveGroup3SelectedNumberAnimations, i32 0, i32 %10
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %0, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %12, i32 noundef %14, i32 noundef 0, ptr noundef %16) #9
  %17 = zext i8 %0 to i32
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %17, i8 noundef zeroext 1) #9
  %18 = add i8 %0, 1
  %19 = mul i16 %9, 100
  %20 = sub i16 %8, %19
  %21 = zext nneg i16 %20 to i32
  br label %33

22:                                               ; preds = %4
  %23 = icmp ugt i32 %5, 9
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = shl i32 %2, 16
  %26 = shl i32 %3, 16
  %27 = ashr exact i32 %26, 16
  br label %33

28:                                               ; preds = %22
  %29 = trunc i32 %1 to i8
  %30 = shl i32 %2, 16
  %31 = shl i32 %3, 16
  %32 = ashr exact i32 %31, 16
  br label %47

33:                                               ; preds = %24, %7
  %34 = phi i32 [ %27, %24 ], [ %14, %7 ]
  %35 = phi i32 [ %25, %24 ], [ %11, %7 ]
  %36 = phi i32 [ %5, %24 ], [ %21, %7 ]
  %37 = phi i8 [ %0, %24 ], [ %18, %7 ]
  %38 = trunc i32 %36 to i8
  %39 = udiv i8 %38, 10
  %40 = zext nneg i8 %39 to i32
  %41 = add i32 %35, 524288
  %42 = ashr exact i32 %41, 16
  %43 = getelementptr [0 x ptr], ptr @gSaveGroup3SelectedNumberAnimations, i32 0, i32 %40
  %44 = load ptr, ptr %43, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %37, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %42, i32 noundef %34, i32 noundef 0, ptr noundef %44) #9
  %45 = zext i8 %37 to i32
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %45, i8 noundef zeroext 1) #9
  %46 = add i8 %37, 1
  br label %47

47:                                               ; preds = %28, %33
  %48 = phi i32 [ %32, %28 ], [ %34, %33 ]
  %49 = phi i32 [ %30, %28 ], [ %35, %33 ]
  %50 = phi i8 [ %29, %28 ], [ %38, %33 ]
  %51 = phi i8 [ %0, %28 ], [ %46, %33 ]
  %52 = urem i8 %50, 10
  %53 = shl nuw nsw i8 %52, 2
  %54 = zext nneg i8 %53 to i32
  %55 = add i32 %49, 1048576
  %56 = ashr exact i32 %55, 16
  %57 = add i32 %54, ptrtoint (ptr @gSaveGroup3SelectedNumberAnimations to i32)
  %58 = inttoptr i32 %57 to ptr
  %59 = load ptr, ptr %58, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %51, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %56, i32 noundef %48, i32 noundef 0, ptr noundef %59) #9
  %60 = zext i8 %51 to i32
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %60, i8 noundef zeroext 1) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderPairListSelectedValue() local_unnamed_addr #1 {
  tail call arm_apcscc void @ResetRenderSlotRange(i32 noundef 21, i32 noundef 23) #9
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = zext i8 %1 to i32
  %3 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %2, i32 2
  %4 = load i16, ptr %3, align 2
  store i16 %4, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %5 = zext i16 %4 to i32
  tail call arm_apcscc void @RenderPairListNumber(i8 noundef zeroext 21, i32 noundef %5, i32 noundef 200, i32 noundef 92) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderPairListControlNumber(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  tail call arm_apcscc void @RenderPairListNumber(i8 noundef zeroext %2, i32 noundef %4, i32 noundef %7, i32 noundef %10) #10
  ret i32 3
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigurePairListSelectedIcon() local_unnamed_addr #1 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = zext i8 %1 to i32
  %3 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %2
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x [2 x i16]], ptr @gPairListIconPositions, i32 0, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = shl nuw nsw i32 %5, 1
  %9 = or disjoint i32 %8, 1
  %10 = getelementptr i16, ptr @gPairListIconPositions, i32 %9
  %11 = load i16, ptr %10, align 2
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef 12) #9
  tail call arm_apcscc void @PrepareSaveGroup3PairGraphics(i8 noundef zeroext %4, i32 noundef 0) #9
  %12 = sext i16 %7 to i32
  %13 = sext i16 %11 to i32
  %14 = urem i8 %4, 3
  %15 = zext nneg i8 %14 to i32
  %16 = getelementptr [0 x ptr], ptr @gSaveGroup3PairAnimations, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %12, i32 noundef %13, i32 noundef 0, ptr noundef %17) #9
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 12, i8 noundef zeroext 1) #9
  ret void
}

declare dso_local arm_apcscc void @ResetRenderSlot(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @PrepareSaveGroup3PairGraphics(i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @PositionPairListVariantCursor(i8 noundef zeroext %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = zext i8 %0 to i32
  %4 = getelementptr [0 x %struct.PairListEntry], ptr @gPairListEntries, i32 0, i32 %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 7
  %7 = getelementptr i8, ptr @gPairListSelections, i32 %3
  %8 = mul nuw nsw i8 %6, 5
  %9 = zext nneg i8 %8 to i32
  %10 = load i8, ptr %7, align 1
  %11 = zext i8 %10 to i32
  %12 = add i32 %11, add (i32 ptrtoint (ptr @gPairListSlotX to i32), i32 -5)
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = getelementptr %struct.RenderSlot, ptr %2, i32 31, i32 3
  store i32 %17, ptr %18, align 4
  ret void
}

declare dso_local arm_apcscc void @QueueDmaTilemapRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ReturnZeroCE0DC() local_unnamed_addr #8 {
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
