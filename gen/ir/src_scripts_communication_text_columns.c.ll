; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.IndexedCommunicationResource = type { ptr, ptr, ptr, i32, i16, i16, i16, i8, [5 x i8] }
%struct.CommunicationExchangeStorage = type { i8, [16 x i8], %struct.CommunicationExchangeState }
%struct.CommunicationExchangeState = type { i8, i8, i8 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gIndexedCommunicationResources = external dso_local constant [0 x %struct.IndexedCommunicationResource], align 4
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gCommunicationExchangeStorage = external dso_local local_unnamed_addr global %struct.CommunicationExchangeStorage, align 1
@gCommunicationTextScrollAccumulator = external dso_local local_unnamed_addr global i32, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationTextTileAttributes = external dso_local global [0 x i16], align 2
@gCommunicationTextLanguageTilePairs = external dso_local constant [0 x i16], align 2
@gCommunicationTextSelectionAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gCommunicationTextFrameTilemap = external dso_local global [0 x i16], align 2
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gCommunicationResourceSelectedAnimation = external dso_local constant [0 x i8], align 1
@gCommunicationResourceUnselectedAnimation = external dso_local constant [0 x i8], align 1
@gCommunicationContextPointer = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationRecordFlags = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationTextRowCompressedTilemaps = external dso_local global [0 x ptr], align 4
@gCommunicationTextUnavailableTiles = external dso_local constant [0 x i16], align 2
@gCommunicationTextRowTilemaps = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gCommunicationRowTaskContexts = external dso_local global [0 x ptr], align 4
@gCommunicationTextTilemapShadow = external dso_local global [0 x i16], align 2
@gCommunicationTextRowDefaultScript = external dso_local constant [0 x i8], align 1
@gCommunicationReceivedRecord = external dso_local global [0 x i8], align 1
@gCommunicationSmallRowTiles = external dso_local global [0 x i16], align 2
@gCommunicationSmallRowTilesByLanguage = external dso_local global [0 x ptr], align 4
@gCommunicationSmallRowTilemaps = external dso_local local_unnamed_addr global [0 x i32], align 4
@gCommunicationTaskContexts = external dso_local global [0 x ptr], align 4
@gCommunicationAvailableFlagList = external dso_local local_unnamed_addr global [0 x i8], align 1
@gCommunicationListFirstText = external dso_local constant [0 x ptr], align 4
@gTaskTextPairScriptsFirst = external dso_local constant [0 x ptr], align 4
@gCommunicationListEmptyScript = external dso_local constant [0 x i8], align 1
@gCommunicationUnavailableFlagText = external dso_local constant [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScrollCommunicationText(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #7
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %4
  %6 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  %7 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 1), align 1
  %8 = zext i8 %7 to i32
  tail call void asm sideeffect "", "r"(i32 %8) #8, !srcloc !4
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393), align 1
  tail call void asm sideeffect "", "r"(ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393)) #8, !srcloc !5
  %9 = zext i8 %6 to i32
  %10 = icmp eq i8 %6, 5
  switch i8 %6, label %39 [
    i8 5, label %11
    i8 1, label %11
  ]

11:                                               ; preds = %1, %1
  tail call void asm sideeffect "", "{r1}"(i32 %8) #8, !srcloc !6
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %4, i32 7
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, -1
  %20 = icmp eq i32 %19, %15
  br i1 %20, label %21, label %28

21:                                               ; preds = %39, %13, %23
  %22 = tail call ptr asm "", "=&l,0,{r0},~{r2},~{r3}"(ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393), i32 10) #9, !srcloc !7
  br label %132

23:                                               ; preds = %11
  tail call void asm sideeffect "", "{r2}"(ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391)) #8, !srcloc !8
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %10, i32 6, i32 4
  %27 = select i1 %25, i32 %26, i32 3
  switch i32 %27, label %134 [
    i32 4, label %21
    i32 3, label %28
    i32 6, label %29
  ]

28:                                               ; preds = %13, %23
  br i1 %10, label %29, label %46

29:                                               ; preds = %28, %23
  %30 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %4, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 194), align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = getelementptr i8, ptr %34, i32 7
  %36 = load i8, ptr %35, align 1
  %37 = add i8 %36, -9
  %38 = icmp ult i8 %37, -8
  br i1 %38, label %46, label %132

39:                                               ; preds = %1
  %40 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 194), align 2
  %41 = zext i16 %40 to i32
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %43 = zext i8 %42 to i32
  %44 = tail call arm_apcscc zeroext i8 @CheckIndexedCommunicationResourcePosition(i32 noundef %9, ptr noundef %5, i32 noundef %41, i32 noundef %43) #7
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %21

46:                                               ; preds = %28, %39, %29
  switch i8 %6, label %52 [
    i8 0, label %47
    i8 1, label %53
    i8 2, label %50
    i8 3, label %50
    i8 4, label %50
    i8 5, label %51
  ]

47:                                               ; preds = %46
  %48 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %4, i32 3
  %49 = load i32, ptr %48, align 4
  br label %53

50:                                               ; preds = %46, %46, %46
  br label %53

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %46, %52, %51, %50, %47
  %54 = phi i32 [ 0, %52 ], [ 33554432, %51 ], [ 134217728, %50 ], [ %49, %47 ], [ 67108864, %46 ]
  %55 = load i32, ptr @gCommunicationTextScrollAccumulator, align 4
  %56 = add i32 %55, %54
  store i32 %56, ptr @gCommunicationTextScrollAccumulator, align 4
  %57 = and i32 %55, -16777216
  tail call void asm sideeffect "", "{r0}"(i32 %8) #8, !srcloc !9
  %58 = icmp eq i8 %7, 0
  %59 = getelementptr %struct.VideoState, ptr %2, i32 0, i32 14, i32 2, i32 1
  %60 = sub i32 %56, %57
  %61 = ashr i32 %60, 24
  %62 = load i16, ptr %59, align 2
  %63 = trunc i32 %61 to i16
  %64 = sub nsw i16 0, %63
  %65 = select i1 %58, i16 %64, i16 %63
  %66 = add i16 %62, %65
  store i16 %66, ptr %59, align 2
  %67 = load i32, ptr %2, align 4
  %68 = or i32 %67, 16
  store i32 %68, ptr %2, align 4
  %69 = load i32, ptr @gCommunicationTextScrollAccumulator, align 4
  %70 = icmp sgt i32 %69, 134217727
  %71 = zext i1 %70 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %71) #8, !srcloc !10
  %72 = select i1 %70, i32 8, i32 7
  %73 = load volatile i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 194), align 2
  %74 = zext i16 %73 to i32
  %75 = tail call i32 asm "", "=r,0"(i32 %74) #9, !srcloc !11
  %76 = add i32 %75, %72
  %77 = and i32 %76, 255
  %78 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %4, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %77
  %81 = load i8, ptr %80, align 1
  %82 = add i8 %81, -1
  %83 = icmp ult i8 %82, 8
  br i1 %83, label %84, label %85

84:                                               ; preds = %53
  tail call void asm sideeffect "", "{r2}"(i32 399) #8, !srcloc !12
  store i8 %81, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 399) to ptr), align 1
  br label %86

85:                                               ; preds = %53
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 399), align 1
  br label %86

86:                                               ; preds = %85, %84
  %87 = load volatile i32, ptr inttoptr (i32 50342848 to ptr), align 64
  %88 = icmp sgt i32 %87, 134217727
  br i1 %88, label %89, label %134

89:                                               ; preds = %86
  %90 = add nsw i32 %87, -134217728
  store i32 %90, ptr inttoptr (i32 50342848 to ptr), align 64
  %91 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 194), align 2
  %92 = select i1 %58, i16 1, i16 -1
  %93 = add i16 %91, %92
  store i16 %93, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 194), align 2
  %94 = icmp eq i16 %93, -1
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  store i16 %93, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 195), align 2
  %96 = trunc i16 %93 to i8
  store i8 %96, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 1), align 1
  %97 = tail call arm_apcscc i32 @ScriptCallbackRenderCommunicationTextColumns(ptr poison) #10
  %98 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 194), align 2
  %99 = zext i16 %98 to i32
  br label %100

100:                                              ; preds = %95, %89
  %101 = phi i32 [ %99, %95 ], [ 65535, %89 ]
  %102 = ptrtoint ptr %79 to i32
  %103 = add i32 %101, %102
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr i8, ptr %104, i32 7
  %106 = load volatile i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load volatile i8, ptr %105, align 1
  %109 = sext i8 %108 to i32
  tail call void asm sideeffect "", "r"(i32 %109) #8, !srcloc !13
  %110 = icmp eq i8 %108, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %100
  store i8 %106, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393), align 1
  tail call void asm sideeffect "", "{r0}"(i32 %101) #8, !srcloc !14
  br label %113

112:                                              ; preds = %100
  store i8 9, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393), align 1
  br label %113

113:                                              ; preds = %112, %111
  %114 = add nuw nsw i32 %107, 255
  %115 = and i32 %114, 248
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  br i1 %10, label %123, label %118

118:                                              ; preds = %117
  %119 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %120 = select i1 %58, i8 1, i8 -1
  %121 = add i8 %119, %120
  store i8 %121, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %122 = icmp eq i8 %6, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %118, %117
  store i8 10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393), align 1
  br label %124

124:                                              ; preds = %118, %123, %113
  tail call void asm sideeffect "", "{r3}"(i32 %107) #8, !srcloc !15
  %125 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %126 = zext i8 %125 to i32
  %127 = tail call arm_apcscc zeroext i8 @CheckIndexedCommunicationResourcePosition(i32 noundef %9, ptr noundef %5, i32 noundef %101, i32 noundef %126) #7
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr @gRenderSlots, align 4
  %131 = getelementptr %struct.RenderSlot, ptr %130, i32 25, i32 23
  store i8 0, ptr %131, align 4
  br label %132

132:                                              ; preds = %129, %29, %21
  %133 = phi ptr [ %22, %21 ], [ getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393), %29 ], [ getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 393), %129 ]
  store i8 10, ptr %133, align 1
  br label %134

134:                                              ; preds = %132, %124, %86, %23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc zeroext i8 @CheckIndexedCommunicationResourcePosition(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderCommunicationTextColumns(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 28
  %5 = getelementptr i8, ptr getelementptr inbounds ([0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 0, i32 1), i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 195), align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %11, 40
  %13 = add i32 %12, ptrtoint (ptr @gCommunicationTextLanguageTilePairs to i32)
  br label %14

14:                                               ; preds = %14, %1
  %15 = phi i8 [ 0, %1 ], [ %31, %14 ]
  %16 = phi ptr [ %9, %1 ], [ %18, %14 ]
  %17 = phi ptr [ @gCommunicationTextTileAttributes, %1 ], [ %32, %14 ]
  %18 = getelementptr i8, ptr %16, i32 1
  %19 = load i8, ptr %16, align 1
  %20 = shl i8 %19, 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 1
  %23 = add i32 %13, %22
  %24 = inttoptr i32 %23 to ptr
  %25 = load i16, ptr %24, align 2
  store i16 %25, ptr %17, align 2
  %26 = add i32 %22, add (i32 ptrtoint (ptr @gCommunicationTextLanguageTilePairs to i32), i32 2)
  %27 = add i32 %26, %12
  %28 = inttoptr i32 %27 to ptr
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr i16, ptr %17, i32 15
  store i16 %29, ptr %30, align 2
  %31 = add nuw nsw i8 %15, 1
  %32 = getelementptr i16, ptr %17, i32 1
  %33 = icmp ult i8 %15, 14
  br i1 %33, label %14, label %34

34:                                               ; preds = %14
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 402), align 1
  %36 = and i8 %35, 31
  %37 = zext nneg i8 %36 to i32
  %38 = icmp ugt i8 %36, 17
  %39 = shl nuw nsw i32 %37, 1
  %40 = or disjoint i32 %39, 100708864
  br i1 %38, label %41, label %49

41:                                               ; preds = %34
  %42 = sub nuw nsw i32 32, %37
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr @gCommunicationTextTileAttributes to i32), i32 noundef %40, i32 noundef %42, i32 noundef 1, i32 noundef 0) #7
  %43 = shl nuw nsw i32 %42, 1
  %44 = add i32 %43, ptrtoint (ptr @gCommunicationTextTileAttributes to i32)
  %45 = add nsw i8 %36, -17
  %46 = zext nneg i8 %45 to i32
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef %44, i32 noundef 100708864, i32 noundef %46, i32 noundef 1, i32 noundef 0) #7
  %47 = or disjoint i32 %39, 100708928
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 15) to i32), i32 noundef %47, i32 noundef %42, i32 noundef 1, i32 noundef 0) #7
  %48 = add i32 %43, ptrtoint (ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 15) to i32)
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef %48, i32 noundef 100708928, i32 noundef %46, i32 noundef 1, i32 noundef 0) #7
  br label %50

49:                                               ; preds = %34
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr @gCommunicationTextTileAttributes to i32), i32 noundef %40, i32 noundef 15, i32 noundef 2, i32 noundef 0) #7
  br label %50

50:                                               ; preds = %49, %41
  ret i32 0
}

declare dso_local arm_apcscc void @QueueDmaTilemapRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureCommunicationTextSelectionMarker(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %11, 24
  %13 = getelementptr [0 x ptr], ptr @gCommunicationTextSelectionAnimations, i32 0, i32 %11
  %14 = load ptr, ptr %13, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %12, i32 noundef 32, i32 noundef 0, ptr noundef %14) #7
  ret i32 2
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackDrawCommunicationTextFrame(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i16 [ 0, %1 ], [ %6, %2 ]
  %4 = phi ptr [ @gCommunicationTextFrameTilemap, %1 ], [ %5, %2 ]
  %5 = getelementptr i16, ptr %4, i32 1
  store i16 0, ptr %4, align 2
  %6 = add nuw nsw i16 %3, 1
  %7 = icmp ult i16 %3, 639
  br i1 %7, label %2, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 5
  %13 = getelementptr i16, ptr @gCommunicationTextFrameTilemap, i32 %12
  %14 = getelementptr i8, ptr %0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i16, ptr %13, i32 %16
  store i16 432, ptr %17, align 2
  %18 = getelementptr i16, ptr %17, i32 1
  %19 = load i8, ptr %0, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %8, %21
  %22 = phi ptr [ %25, %21 ], [ %18, %8 ]
  %23 = phi i16 [ %24, %21 ], [ 0, %8 ]
  store i16 433, ptr %22, align 2
  %24 = add nuw nsw i16 %23, 1
  %25 = getelementptr i16, ptr %22, i32 1
  %26 = load i8, ptr %0, align 1
  %27 = zext i8 %26 to i16
  %28 = icmp ult i16 %24, %27
  br i1 %28, label %21, label %29

29:                                               ; preds = %21, %8
  %30 = phi ptr [ %18, %8 ], [ %25, %21 ]
  store i16 1456, ptr %30, align 2
  %31 = getelementptr i8, ptr %0, i32 1
  %32 = getelementptr i16, ptr %17, i32 32
  %33 = load i8, ptr %31, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %29, %50
  %36 = phi ptr [ %53, %50 ], [ %32, %29 ]
  %37 = phi i16 [ %52, %50 ], [ 0, %29 ]
  %38 = phi ptr [ %36, %50 ], [ %17, %29 ]
  %39 = getelementptr i16, ptr %38, i32 33
  store i16 434, ptr %36, align 2
  %40 = load i8, ptr %0, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %35, %42
  %43 = phi i16 [ %45, %42 ], [ 0, %35 ]
  %44 = phi ptr [ %46, %42 ], [ %39, %35 ]
  store i16 435, ptr %44, align 2
  %45 = add nuw nsw i16 %43, 1
  %46 = getelementptr i16, ptr %44, i32 1
  %47 = load i8, ptr %0, align 1
  %48 = zext i8 %47 to i16
  %49 = icmp ult i16 %45, %48
  br i1 %49, label %42, label %50

50:                                               ; preds = %42, %35
  %51 = phi ptr [ %39, %35 ], [ %46, %42 ]
  store i16 1458, ptr %51, align 2
  %52 = add nuw nsw i16 %37, 1
  %53 = getelementptr i16, ptr %36, i32 32
  %54 = load i8, ptr %31, align 1
  %55 = zext i8 %54 to i16
  %56 = icmp ult i16 %52, %55
  br i1 %56, label %35, label %57

57:                                               ; preds = %50, %29
  %58 = phi ptr [ %17, %29 ], [ %36, %50 ]
  %59 = phi ptr [ %32, %29 ], [ %53, %50 ]
  %60 = getelementptr i16, ptr %58, i32 33
  store i16 2480, ptr %59, align 2
  %61 = load i8, ptr %0, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %57, %63
  %64 = phi i16 [ %66, %63 ], [ 0, %57 ]
  %65 = phi ptr [ %67, %63 ], [ %60, %57 ]
  store i16 2481, ptr %65, align 2
  %66 = add nuw nsw i16 %64, 1
  %67 = getelementptr i16, ptr %65, i32 1
  %68 = load i8, ptr %0, align 1
  %69 = zext i8 %68 to i16
  %70 = icmp ult i16 %66, %69
  br i1 %70, label %63, label %71

71:                                               ; preds = %63, %57
  %72 = phi ptr [ %60, %57 ], [ %67, %63 ]
  store i16 3504, ptr %72, align 2
  ret i32 4
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderCommunicationFrameText(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr i8, ptr %0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr i8, ptr %0, i32 7
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or disjoint i32 %14, %18
  %20 = icmp eq i32 %19, ptrtoint (ptr @gDefaultTaskContextScript to i32)
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = inttoptr i32 %19 to ptr
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr ptr, ptr %22, i32 %24
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %1, %21
  %28 = phi ptr [ %26, %21 ], [ @gDefaultTaskContextScript, %1 ]
  %29 = getelementptr i8, ptr %0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 5
  %33 = getelementptr i16, ptr getelementptr ([0 x i16], ptr @gCommunicationTextFrameTilemap, i32 0, i32 1), i32 %32
  %34 = getelementptr i16, ptr %33, i32 32
  %35 = getelementptr i8, ptr %0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr i16, ptr %34, i32 %37
  %39 = load i8, ptr %0, align 1
  %40 = zext i8 %39 to i32
  tail call arm_apcscc void @RenderCommunicationTextLines(ptr noundef %28, ptr noundef %38, i32 noundef 5, i32 noundef %40) #7
  ret i32 8
}

declare dso_local arm_apcscc void @RenderCommunicationTextLines(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPositionCommunicationResourceDisplay(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = icmp ugt i8 %2, 7
  %4 = add i8 %2, -8
  %5 = icmp ugt i8 %2, 3
  %6 = add nsw i8 %2, -4
  %7 = select i1 %5, i8 %6, i8 %2
  %8 = select i1 %3, i8 %4, i8 %7
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 20
  %11 = add nuw nsw i32 %10, 5242880
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 23, i32 noundef 7864320, i32 noundef %11, i32 noundef 0) #7
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetCommunicationResourceDisplayAnimation(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = icmp ugt i8 %2, 7
  %4 = add i8 %2, -8
  %5 = icmp ugt i8 %2, 3
  %6 = add nsw i8 %2, -4
  %7 = select i1 %5, i8 %6, i8 %2
  %8 = select i1 %3, i8 %4, i8 %7
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %10 = icmp eq i8 %8, %9
  %11 = select i1 %10, ptr @gCommunicationResourceSelectedAnimation, ptr @gCommunicationResourceUnselectedAnimation
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull %11) #7
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareCommunicationTextRow(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = getelementptr i8, ptr %2, i32 11000
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i8 %4 to i32
  %8 = shl nuw nsw i32 %7, 5
  %9 = getelementptr i16, ptr @gCommunicationTextTileAttributes, i32 %8
  %10 = getelementptr i16, ptr %9, i32 32
  %11 = select i1 %6, ptr @gCommunicationTextTileAttributes, ptr %10
  %12 = icmp ult i8 %4, 10
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = getelementptr [0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 %7
  %15 = load i16, ptr %14, align 2
  %16 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %15) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %3, i32 %20
  %22 = getelementptr i8, ptr %21, i32 20
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i8 12, i8 %4
  %26 = zext nneg i8 %25 to i32
  br label %27

27:                                               ; preds = %18, %13, %1
  %28 = phi i32 [ %26, %18 ], [ %7, %13 ], [ %7, %1 ]
  %29 = phi i8 [ %25, %18 ], [ %4, %13 ], [ %4, %1 ]
  %30 = shl nuw nsw i32 %28, 2
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %32, 56
  %34 = add i32 %30, ptrtoint (ptr @gCommunicationTextRowCompressedTilemaps to i32)
  %35 = add i32 %34, %33
  %36 = inttoptr i32 %35 to ptr
  %37 = load ptr, ptr %36, align 4
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %37, ptr noundef %11) #7
  %38 = icmp eq i8 %29, 12
  br i1 %38, label %39, label %65

39:                                               ; preds = %27
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 3
  %43 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, 80
  %46 = add i32 %45, ptrtoint (ptr @gCommunicationTextUnavailableTiles to i32)
  %47 = add i32 %46, %42
  %48 = inttoptr i32 %47 to ptr
  %49 = load i16, ptr %48, align 2
  store i16 %49, ptr %11, align 2
  %50 = add i32 %42, add (i32 ptrtoint (ptr @gCommunicationTextUnavailableTiles to i32), i32 2)
  %51 = add i32 %50, %45
  %52 = inttoptr i32 %51 to ptr
  %53 = load i16, ptr %52, align 2
  %54 = getelementptr i16, ptr %11, i32 1
  store i16 %53, ptr %54, align 2
  %55 = add i32 %42, add (i32 ptrtoint (ptr @gCommunicationTextUnavailableTiles to i32), i32 4)
  %56 = add i32 %55, %45
  %57 = inttoptr i32 %56 to ptr
  %58 = load i16, ptr %57, align 2
  %59 = getelementptr i16, ptr %11, i32 14
  store i16 %58, ptr %59, align 2
  %60 = add i32 %42, add (i32 ptrtoint (ptr @gCommunicationTextUnavailableTiles to i32), i32 6)
  %61 = add i32 %60, %45
  %62 = inttoptr i32 %61 to ptr
  %63 = load i16, ptr %62, align 2
  %64 = getelementptr i16, ptr %11, i32 15
  store i16 %63, ptr %64, align 2
  br label %65

65:                                               ; preds = %39, %27
  %66 = tail call arm_apcscc i32 @ScriptCallbackCheckCommunicationRecordFlag(ptr noundef null) #7
  %67 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 402), align 1
  %68 = icmp eq i8 %67, 0
  %69 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %70 = icmp eq i8 %69, 2
  br i1 %68, label %76, label %71

71:                                               ; preds = %65
  br i1 %70, label %72, label %77

72:                                               ; preds = %71
  %73 = load i8, ptr %0, align 1
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i16 20480, i16 12288
  br label %77

76:                                               ; preds = %65
  br i1 %70, label %77, label %190

77:                                               ; preds = %76, %71, %72
  %78 = phi i16 [ %75, %72 ], [ 20480, %71 ], [ 24576, %76 ]
  %79 = load i16, ptr %11, align 2
  %80 = and i16 %79, 4095
  %81 = or disjoint i16 %80, %78
  store i16 %81, ptr %11, align 2
  %82 = getelementptr i16, ptr %11, i32 1
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %83, 4095
  %85 = or disjoint i16 %84, %78
  store i16 %85, ptr %82, align 2
  %86 = getelementptr i16, ptr %11, i32 2
  %87 = load i16, ptr %86, align 2
  %88 = and i16 %87, 4095
  %89 = or disjoint i16 %88, %78
  store i16 %89, ptr %86, align 2
  %90 = getelementptr i16, ptr %11, i32 3
  %91 = load i16, ptr %90, align 2
  %92 = and i16 %91, 4095
  %93 = or disjoint i16 %92, %78
  store i16 %93, ptr %90, align 2
  %94 = getelementptr i16, ptr %11, i32 4
  %95 = load i16, ptr %94, align 2
  %96 = and i16 %95, 4095
  %97 = or disjoint i16 %96, %78
  store i16 %97, ptr %94, align 2
  %98 = getelementptr i16, ptr %11, i32 5
  %99 = load i16, ptr %98, align 2
  %100 = and i16 %99, 4095
  %101 = or disjoint i16 %100, %78
  store i16 %101, ptr %98, align 2
  %102 = getelementptr i16, ptr %11, i32 6
  %103 = load i16, ptr %102, align 2
  %104 = and i16 %103, 4095
  %105 = or disjoint i16 %104, %78
  store i16 %105, ptr %102, align 2
  %106 = getelementptr i16, ptr %11, i32 7
  %107 = load i16, ptr %106, align 2
  %108 = and i16 %107, 4095
  %109 = or disjoint i16 %108, %78
  store i16 %109, ptr %106, align 2
  %110 = getelementptr i16, ptr %11, i32 8
  %111 = load i16, ptr %110, align 2
  %112 = and i16 %111, 4095
  %113 = or disjoint i16 %112, %78
  store i16 %113, ptr %110, align 2
  %114 = getelementptr i16, ptr %11, i32 9
  %115 = load i16, ptr %114, align 2
  %116 = and i16 %115, 4095
  %117 = or disjoint i16 %116, %78
  store i16 %117, ptr %114, align 2
  %118 = getelementptr i16, ptr %11, i32 10
  %119 = load i16, ptr %118, align 2
  %120 = and i16 %119, 4095
  %121 = or disjoint i16 %120, %78
  store i16 %121, ptr %118, align 2
  %122 = getelementptr i16, ptr %11, i32 11
  %123 = load i16, ptr %122, align 2
  %124 = and i16 %123, 4095
  %125 = or disjoint i16 %124, %78
  store i16 %125, ptr %122, align 2
  %126 = getelementptr i16, ptr %11, i32 12
  %127 = load i16, ptr %126, align 2
  %128 = and i16 %127, 4095
  %129 = or disjoint i16 %128, %78
  store i16 %129, ptr %126, align 2
  %130 = getelementptr i16, ptr %11, i32 13
  %131 = load i16, ptr %130, align 2
  %132 = and i16 %131, 4095
  %133 = or disjoint i16 %132, %78
  store i16 %133, ptr %130, align 2
  %134 = getelementptr i16, ptr %11, i32 14
  %135 = load i16, ptr %134, align 2
  %136 = and i16 %135, 4095
  %137 = or disjoint i16 %136, %78
  store i16 %137, ptr %134, align 2
  %138 = getelementptr i16, ptr %11, i32 15
  %139 = load i16, ptr %138, align 2
  %140 = and i16 %139, 4095
  %141 = or disjoint i16 %140, %78
  store i16 %141, ptr %138, align 2
  %142 = getelementptr i16, ptr %11, i32 16
  %143 = load i16, ptr %142, align 2
  %144 = and i16 %143, 4095
  %145 = or disjoint i16 %144, %78
  store i16 %145, ptr %142, align 2
  %146 = getelementptr i16, ptr %11, i32 17
  %147 = load i16, ptr %146, align 2
  %148 = and i16 %147, 4095
  %149 = or disjoint i16 %148, %78
  store i16 %149, ptr %146, align 2
  %150 = getelementptr i16, ptr %11, i32 18
  %151 = load i16, ptr %150, align 2
  %152 = and i16 %151, 4095
  %153 = or disjoint i16 %152, %78
  store i16 %153, ptr %150, align 2
  %154 = getelementptr i16, ptr %11, i32 19
  %155 = load i16, ptr %154, align 2
  %156 = and i16 %155, 4095
  %157 = or disjoint i16 %156, %78
  store i16 %157, ptr %154, align 2
  %158 = getelementptr i16, ptr %11, i32 20
  %159 = load i16, ptr %158, align 2
  %160 = and i16 %159, 4095
  %161 = or disjoint i16 %160, %78
  store i16 %161, ptr %158, align 2
  %162 = getelementptr i16, ptr %11, i32 21
  %163 = load i16, ptr %162, align 2
  %164 = and i16 %163, 4095
  %165 = or disjoint i16 %164, %78
  store i16 %165, ptr %162, align 2
  %166 = getelementptr i16, ptr %11, i32 22
  %167 = load i16, ptr %166, align 2
  %168 = and i16 %167, 4095
  %169 = or disjoint i16 %168, %78
  store i16 %169, ptr %166, align 2
  %170 = getelementptr i16, ptr %11, i32 23
  %171 = load i16, ptr %170, align 2
  %172 = and i16 %171, 4095
  %173 = or disjoint i16 %172, %78
  store i16 %173, ptr %170, align 2
  %174 = getelementptr i16, ptr %11, i32 24
  %175 = load i16, ptr %174, align 2
  %176 = and i16 %175, 4095
  %177 = or disjoint i16 %176, %78
  store i16 %177, ptr %174, align 2
  %178 = getelementptr i16, ptr %11, i32 25
  %179 = load i16, ptr %178, align 2
  %180 = and i16 %179, 4095
  %181 = or disjoint i16 %180, %78
  store i16 %181, ptr %178, align 2
  %182 = getelementptr i16, ptr %11, i32 26
  %183 = load i16, ptr %182, align 2
  %184 = and i16 %183, 4095
  %185 = or disjoint i16 %184, %78
  store i16 %185, ptr %182, align 2
  %186 = getelementptr i16, ptr %11, i32 27
  %187 = load i16, ptr %186, align 2
  %188 = and i16 %187, 4095
  %189 = or disjoint i16 %188, %78
  store i16 %189, ptr %186, align 2
  br label %190

190:                                              ; preds = %77, %76
  %191 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 403), align 1
  %192 = zext i8 %191 to i32
  %193 = getelementptr i32, ptr @gCommunicationTextRowTilemaps, i32 %192
  %194 = load i32, ptr %193, align 4
  %195 = load i8, ptr %0, align 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %218, label %197

197:                                              ; preds = %190
  %198 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %199 = icmp ugt i8 %198, 7
  %200 = add i8 %198, -8
  %201 = icmp ugt i8 %198, 3
  %202 = add nsw i8 %198, -4
  %203 = select i1 %201, i8 %202, i8 %198
  %204 = select i1 %199, i8 %200, i8 %203
  %205 = icmp ult i8 %29, 10
  br i1 %205, label %206, label %214

206:                                              ; preds = %197
  %207 = zext i8 %198 to i32
  %208 = getelementptr i8, ptr %3, i32 %207
  %209 = load i8, ptr %208, align 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = zext i8 %204 to i32
  %213 = add nuw nsw i32 %212, 35
  tail call arm_apcscc void @SetRenderField60(i32 noundef %213, i32 noundef 1) #7
  br label %214

214:                                              ; preds = %206, %211, %197
  %215 = zext i8 %204 to i32
  %216 = shl nuw nsw i32 %215, 7
  %217 = add nuw nsw i32 %216, 644
  br label %246

218:                                              ; preds = %190
  %219 = getelementptr i16, ptr %11, i32 13
  %220 = getelementptr i16, ptr %11, i32 14
  %221 = load i16, ptr %220, align 2
  store i16 %221, ptr %219, align 2
  %222 = getelementptr i16, ptr %11, i32 15
  %223 = load i16, ptr %222, align 2
  store i16 %223, ptr %220, align 2
  %224 = getelementptr i16, ptr %11, i32 16
  %225 = load i16, ptr %224, align 2
  store i16 %225, ptr %222, align 2
  %226 = getelementptr i16, ptr %11, i32 17
  %227 = load i16, ptr %226, align 2
  store i16 %227, ptr %224, align 2
  %228 = getelementptr i16, ptr %11, i32 18
  %229 = load i16, ptr %228, align 2
  store i16 %229, ptr %226, align 2
  %230 = getelementptr i16, ptr %11, i32 19
  %231 = load i16, ptr %230, align 2
  store i16 %231, ptr %228, align 2
  %232 = getelementptr i16, ptr %11, i32 20
  %233 = load i16, ptr %232, align 2
  store i16 %233, ptr %230, align 2
  %234 = getelementptr i16, ptr %11, i32 21
  %235 = load i16, ptr %234, align 2
  store i16 %235, ptr %232, align 2
  %236 = getelementptr i16, ptr %11, i32 22
  %237 = load i16, ptr %236, align 2
  store i16 %237, ptr %234, align 2
  %238 = getelementptr i16, ptr %11, i32 23
  %239 = load i16, ptr %238, align 2
  store i16 %239, ptr %236, align 2
  %240 = getelementptr i16, ptr %11, i32 24
  %241 = load i16, ptr %240, align 2
  store i16 %241, ptr %238, align 2
  %242 = getelementptr i16, ptr %11, i32 25
  %243 = load i16, ptr %242, align 2
  store i16 %243, ptr %240, align 2
  %244 = getelementptr i16, ptr %11, i32 26
  %245 = load i16, ptr %244, align 2
  store i16 %245, ptr %242, align 2
  br label %246

246:                                              ; preds = %218, %214
  %247 = phi i32 [ 14, %214 ], [ 13, %218 ]
  %248 = phi i32 [ %217, %214 ], [ 4, %218 ]
  %249 = add i32 %248, %194
  %250 = ptrtoint ptr %11 to i32
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef %250, i32 noundef %249, i32 noundef %247, i32 noundef 2, i32 noundef 0) #7
  ret i32 1
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosLZ77VRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ScriptCallbackCheckCommunicationRecordFlag(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureCommunicationTextRowContext(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 403), align 1
  %7 = zext i8 %6 to i32
  %8 = add i8 %6, 1
  %9 = mul nuw nsw i32 %7, 768
  %10 = add nuw nsw i32 %9, 100664096
  %11 = zext i8 %8 to i32
  %12 = shl nuw nsw i32 %11, 2
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi i32 [ %10, %5 ], [ 100663328, %1 ]
  %15 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 402), align 1
  %17 = add i8 %16, 2
  %18 = add i32 %15, ptrtoint (ptr @gCommunicationRowTaskContexts to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  store i8 0, ptr %20, align 4
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.TaskContext, ptr %21, i32 0, i32 11
  store i8 0, ptr %22, align 1
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.TaskContext, ptr %23, i32 0, i32 7
  store i8 %17, ptr %24, align 1
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.TaskContext, ptr %25, i32 0, i32 12
  store i32 %14, ptr %26, align 4
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr inbounds %struct.TaskContext, ptr %27, i32 0, i32 20
  store i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), ptr %28, align 4
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.TaskContext, ptr %29, i32 0, i32 9
  store i8 0, ptr %30, align 1
  %31 = add i32 %14, add (i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), i32 -100710400)
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr inbounds %struct.TaskContext, ptr %32, i32 0, i32 15
  store i32 %31, ptr %33, align 4
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr inbounds %struct.TaskContext, ptr %34, i32 0, i32 1
  store i8 12, ptr %35, align 1
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr inbounds %struct.TaskContext, ptr %36, i32 0, i32 2
  store i8 2, ptr %37, align 2
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr inbounds %struct.TaskContext, ptr %38, i32 0, i32 10
  store i8 0, ptr %39, align 2
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr inbounds %struct.TaskContext, ptr %40, i32 0, i32 3
  store i8 0, ptr %41, align 1
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr inbounds %struct.TaskContext, ptr %42, i32 0, i32 16
  store i16 0, ptr %43, align 4
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr inbounds %struct.TaskContext, ptr %44, i32 0, i32 17
  store i16 0, ptr %45, align 2
  %46 = load ptr, ptr %19, align 4
  %47 = getelementptr inbounds %struct.TaskContext, ptr %46, i32 0, i32 4
  store i8 -120, ptr %47, align 4
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr inbounds %struct.TaskContext, ptr %48, i32 0, i32 5
  store i8 0, ptr %49, align 1
  %50 = and i8 %17, 3
  %51 = mul nuw i8 %50, 68
  %52 = zext i8 %51 to i32
  %53 = mul nuw i32 %52, 16843009
  store i32 %53, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  %54 = load ptr, ptr %19, align 4
  %55 = getelementptr inbounds %struct.TaskContext, ptr %54, i32 0, i32 15
  %56 = load i32, ptr %55, align 4
  %57 = inttoptr i32 %56 to ptr
  store volatile ptr %57, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597376, ptr inttoptr (i32 67109084 to ptr), align 4
  %58 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %59 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 403), align 1
  %60 = icmp ult i8 %59, 4
  br i1 %60, label %61, label %72

61:                                               ; preds = %13
  %62 = zext nneg i8 %59 to i32
  %63 = load ptr, ptr %19, align 4
  %64 = load ptr, ptr @gCommunicationContextPointer, align 4
  %65 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %66 = zext i8 %65 to i32
  %67 = mul nuw nsw i32 %66, 1100
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = mul nuw nsw i32 %62, 220
  %70 = getelementptr i8, ptr %68, i32 %69
  %71 = getelementptr i8, ptr %70, i32 3
  call arm_apcscc void @SetTaskContextScript(ptr noundef %63, ptr noundef %71) #7
  br label %74

72:                                               ; preds = %13
  %73 = load ptr, ptr %19, align 4
  call arm_apcscc void @SetTaskContextScript(ptr noundef %73, ptr noundef nonnull @gCommunicationTextRowDefaultScript) #7
  br label %74

74:                                               ; preds = %72, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 1
}

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureReceivedCommunicationTextRowContext(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 403), align 1
  %7 = zext i8 %6 to i32
  %8 = add i8 %6, 1
  %9 = mul nuw nsw i32 %7, 768
  %10 = add nuw nsw i32 %9, 100664096
  %11 = zext i8 %8 to i32
  %12 = shl nuw nsw i32 %11, 2
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi i32 [ %10, %5 ], [ 100663328, %1 ]
  %15 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 402), align 1
  %17 = add i8 %16, 2
  %18 = add i32 %15, ptrtoint (ptr @gCommunicationRowTaskContexts to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  store i8 0, ptr %20, align 4
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.TaskContext, ptr %21, i32 0, i32 11
  store i8 0, ptr %22, align 1
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.TaskContext, ptr %23, i32 0, i32 7
  store i8 %17, ptr %24, align 1
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.TaskContext, ptr %25, i32 0, i32 12
  store i32 %14, ptr %26, align 4
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr inbounds %struct.TaskContext, ptr %27, i32 0, i32 20
  store i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), ptr %28, align 4
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.TaskContext, ptr %29, i32 0, i32 9
  store i8 0, ptr %30, align 1
  %31 = add i32 %14, add (i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), i32 -100710400)
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr inbounds %struct.TaskContext, ptr %32, i32 0, i32 15
  store i32 %31, ptr %33, align 4
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr inbounds %struct.TaskContext, ptr %34, i32 0, i32 1
  store i8 12, ptr %35, align 1
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr inbounds %struct.TaskContext, ptr %36, i32 0, i32 2
  store i8 2, ptr %37, align 2
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr inbounds %struct.TaskContext, ptr %38, i32 0, i32 10
  store i8 0, ptr %39, align 2
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr inbounds %struct.TaskContext, ptr %40, i32 0, i32 3
  store i8 0, ptr %41, align 1
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr inbounds %struct.TaskContext, ptr %42, i32 0, i32 16
  store i16 0, ptr %43, align 4
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr inbounds %struct.TaskContext, ptr %44, i32 0, i32 17
  store i16 0, ptr %45, align 2
  %46 = load ptr, ptr %19, align 4
  %47 = getelementptr inbounds %struct.TaskContext, ptr %46, i32 0, i32 4
  store i8 -120, ptr %47, align 4
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr inbounds %struct.TaskContext, ptr %48, i32 0, i32 5
  store i8 0, ptr %49, align 1
  %50 = and i8 %17, 3
  %51 = mul nuw i8 %50, 68
  %52 = zext i8 %51 to i32
  %53 = mul nuw i32 %52, 16843009
  store i32 %53, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  %54 = load ptr, ptr %19, align 4
  %55 = getelementptr inbounds %struct.TaskContext, ptr %54, i32 0, i32 15
  %56 = load i32, ptr %55, align 4
  %57 = inttoptr i32 %56 to ptr
  store volatile ptr %57, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597376, ptr inttoptr (i32 67109084 to ptr), align 4
  %58 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %59 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 403), align 1
  %60 = icmp ult i8 %59, 4
  %61 = load ptr, ptr %19, align 4
  br i1 %60, label %62, label %63

62:                                               ; preds = %13
  call arm_apcscc void @SetTaskContextScript(ptr noundef %61, ptr noundef getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3)) #7
  br label %64

63:                                               ; preds = %13
  call arm_apcscc void @SetTaskContextScript(ptr noundef %61, ptr noundef nonnull @gCommunicationTextRowDefaultScript) #7
  br label %64

64:                                               ; preds = %63, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCopyCommunicationSmallRow(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = getelementptr i16, ptr @gCommunicationSmallRowTiles, i32 %4
  %6 = load i8, ptr %0, align 1
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, 7
  %9 = add nuw nsw i32 %8, %3
  %10 = shl nuw nsw i32 %9, 2
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %12, 84
  %14 = add i32 %13, add (i32 ptrtoint (ptr @gCommunicationSmallRowTilesByLanguage to i32), i32 -4)
  %15 = add i32 %14, %10
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr %16, align 4
  tail call arm_apcscc void @CopyBytes16(ptr noundef %17, ptr noundef %5, i16 noundef zeroext 8) #7
  %18 = ptrtoint ptr %5 to i32
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, -1
  %22 = getelementptr [0 x i32], ptr @gCommunicationSmallRowTilemaps, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef %18, i32 noundef %23, i32 noundef 2, i32 noundef 2, i32 noundef 0) #7
  ret i32 1
}

declare dso_local arm_apcscc void @CopyBytes16(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureCommunicationFlagTextContext(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %4 = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %5 = icmp ult i8 %3, 11
  %6 = mul nuw nsw i32 %4, 384
  %7 = select i1 %5, i32 100664096, i32 100673792
  %8 = add nuw nsw i32 %6, %7
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 403), align 1
  %10 = add i8 %9, 2
  %11 = shl nuw nsw i32 %4, 2
  %12 = add i32 %11, ptrtoint (ptr @gCommunicationTaskContexts to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  store i8 0, ptr %14, align 4
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.TaskContext, ptr %15, i32 0, i32 11
  store i8 8, ptr %16, align 1
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr inbounds %struct.TaskContext, ptr %17, i32 0, i32 7
  store i8 %10, ptr %18, align 1
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.TaskContext, ptr %19, i32 0, i32 12
  store i32 %8, ptr %20, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.TaskContext, ptr %21, i32 0, i32 20
  store i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), ptr %22, align 4
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.TaskContext, ptr %23, i32 0, i32 9
  store i8 0, ptr %24, align 1
  %25 = add i32 %8, add (i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), i32 -100710400)
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.TaskContext, ptr %26, i32 0, i32 15
  store i32 %25, ptr %27, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr inbounds %struct.TaskContext, ptr %28, i32 0, i32 1
  store i8 6, ptr %29, align 1
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.TaskContext, ptr %30, i32 0, i32 2
  store i8 2, ptr %31, align 2
  %32 = load ptr, ptr %13, align 4
  %33 = getelementptr inbounds %struct.TaskContext, ptr %32, i32 0, i32 10
  store i8 0, ptr %33, align 2
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr inbounds %struct.TaskContext, ptr %34, i32 0, i32 3
  store i8 0, ptr %35, align 1
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr inbounds %struct.TaskContext, ptr %36, i32 0, i32 16
  store i16 0, ptr %37, align 4
  %38 = load ptr, ptr %13, align 4
  %39 = getelementptr inbounds %struct.TaskContext, ptr %38, i32 0, i32 17
  store i16 0, ptr %39, align 2
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr inbounds %struct.TaskContext, ptr %40, i32 0, i32 4
  store i8 1, ptr %41, align 4
  %42 = load ptr, ptr %13, align 4
  %43 = getelementptr inbounds %struct.TaskContext, ptr %42, i32 0, i32 5
  store i8 0, ptr %43, align 1
  %44 = and i8 %10, 3
  %45 = mul nuw i8 %44, 68
  %46 = zext i8 %45 to i32
  %47 = mul nuw i32 %46, 16843009
  store i32 %47, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr inbounds %struct.TaskContext, ptr %48, i32 0, i32 15
  %50 = load i32, ptr %49, align 4
  %51 = inttoptr i32 %50 to ptr
  store volatile ptr %51, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597472, ptr inttoptr (i32 67109084 to ptr), align 4
  %52 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %53 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 402), align 1
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %54, 14
  %56 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %55, %57
  %59 = getelementptr [0 x i8], ptr @gCommunicationAvailableFlagList, i32 0, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %1
  %63 = add i8 %60, -70
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = zext i8 %63 to i32
  %67 = getelementptr [0 x ptr], ptr @gTaskTextPairScriptsFirst, i32 0, i32 %66
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %62, %65
  %70 = phi ptr [ %68, %65 ], [ @gCommunicationListFirstText, %62 ]
  %71 = icmp eq ptr %70, @gDefaultTaskContextScript
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %74 = zext i8 %73 to i32
  %75 = getelementptr ptr, ptr %70, i32 %74
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %1, %72, %69
  %78 = phi ptr [ %76, %72 ], [ @gDefaultTaskContextScript, %69 ], [ @gCommunicationListEmptyScript, %1 ]
  %79 = load ptr, ptr %13, align 4
  call arm_apcscc void @SetTaskContextScript(ptr noundef %79, ptr noundef %78) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureCommunicationSelectedFlagTextContext(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  store i8 0, ptr %3, align 4
  %4 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %5 = getelementptr inbounds %struct.TaskContext, ptr %4, i32 0, i32 11
  store i8 8, ptr %5, align 1
  %6 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %7 = getelementptr inbounds %struct.TaskContext, ptr %6, i32 0, i32 7
  store i8 3, ptr %7, align 1
  %8 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %9 = getelementptr inbounds %struct.TaskContext, ptr %8, i32 0, i32 12
  store i32 100677248, ptr %9, align 4
  %10 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %11 = getelementptr inbounds %struct.TaskContext, ptr %10, i32 0, i32 20
  store i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), ptr %11, align 4
  %12 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %13 = getelementptr inbounds %struct.TaskContext, ptr %12, i32 0, i32 9
  store i8 0, ptr %13, align 1
  %14 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %15 = getelementptr inbounds %struct.TaskContext, ptr %14, i32 0, i32 15
  store i32 add (i32 ptrtoint (ptr @gCommunicationTextTilemapShadow to i32), i32 -33152), ptr %15, align 4
  %16 = getelementptr inbounds %struct.TaskContext, ptr %14, i32 0, i32 1
  store i8 6, ptr %16, align 1
  %17 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %18 = getelementptr inbounds %struct.TaskContext, ptr %17, i32 0, i32 2
  store i8 2, ptr %18, align 2
  %19 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %20 = getelementptr inbounds %struct.TaskContext, ptr %19, i32 0, i32 10
  store i8 0, ptr %20, align 2
  %21 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %22 = getelementptr inbounds %struct.TaskContext, ptr %21, i32 0, i32 3
  store i8 -1, ptr %22, align 1
  %23 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %24 = getelementptr inbounds %struct.TaskContext, ptr %23, i32 0, i32 16
  store i16 0, ptr %24, align 4
  %25 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %26 = getelementptr inbounds %struct.TaskContext, ptr %25, i32 0, i32 17
  store i16 0, ptr %26, align 2
  %27 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %28 = getelementptr inbounds %struct.TaskContext, ptr %27, i32 0, i32 4
  store i8 1, ptr %28, align 4
  %29 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %30 = getelementptr inbounds %struct.TaskContext, ptr %29, i32 0, i32 5
  store i8 0, ptr %30, align 1
  store i32 -858993460, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  %31 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  %32 = getelementptr inbounds %struct.TaskContext, ptr %31, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = inttoptr i32 %33 to ptr
  store volatile ptr %34, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597472, ptr inttoptr (i32 67109084 to ptr), align 4
  %35 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %37 = icmp ugt i8 %36, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %1
  %39 = zext i8 %36 to i16
  %40 = add nuw nsw i16 %39, 69
  %41 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %40) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 2
  %47 = add i32 %46, add (i32 ptrtoint (ptr @gTaskTextPairScriptsFirst to i32), i32 -4)
  %48 = inttoptr i32 %47 to ptr
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %38, %43
  %51 = phi ptr [ %49, %43 ], [ @gCommunicationUnavailableFlagText, %38 ]
  %52 = icmp eq ptr %51, @gDefaultTaskContextScript
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr ptr, ptr %51, i32 %55
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %1, %53, %50
  %59 = phi ptr [ %57, %53 ], [ @gDefaultTaskContextScript, %50 ], [ @gCommunicationListEmptyScript, %1 ]
  %60 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  call arm_apcscc void @SetTaskContextScript(ptr noundef %60, ptr noundef %59) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreReceivedCommunicationSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 391) to ptr), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), i32 %3
  %5 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 401) to ptr), align 1
  store i8 %5, ptr %4, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackNormalizeCommunicationFlagSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 395), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 14
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 394), align 1
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %4, %6
  %8 = getelementptr [0 x i8], ptr @gCommunicationAvailableFlagList, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  switch i8 %9, label %11 [
    i8 0, label %13
    i8 70, label %10
  ]

10:                                               ; preds = %1
  br label %13

11:                                               ; preds = %1
  %12 = add i8 %9, -69
  br label %13

13:                                               ; preds = %1, %10, %11
  %14 = phi i8 [ 1, %10 ], [ %12, %11 ], [ %9, %1 ]
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackLoadReceivedCommunicationSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  %2 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 391) to ptr), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), i32 %3
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 401) to ptr), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifyCommunicationSelectionRow(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 394), align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 395), align 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i8 0, i8 2
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i8 [ %8, %5 ], [ 1, %1 ]
  store i8 %10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifyNextCommunicationFlagRow(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 394), align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 395), align 1
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, 14
  %9 = add nuw nsw i32 %8, 15
  %10 = getelementptr [0 x i8], ptr @gCommunicationAvailableFlagList, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i8 0, i8 2
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi i8 [ %13, %5 ], [ 1, %1 ]
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1087}
!5 = !{i64 1199}
!6 = !{i64 1352}
!7 = !{i64 1774}
!8 = !{i64 2080}
!9 = !{i64 3373}
!10 = !{i64 4190}
!11 = !{i64 4374}
!12 = !{i64 4831}
!13 = !{i64 6393}
!14 = !{i64 6566}
!15 = !{i64 7053}
