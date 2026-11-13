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

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gSaveGroup3PairCatalogs = external dso_local global [0 x ptr], align 4
@gSaveGroup3PairAlternatePositions = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSaveGroup3SelectedPairIndices = external dso_local global [0 x i8], align 1
@gSaveGroup3PendingPairs = external dso_local global [0 x i8], align 1
@gSaveGroup3PairFlags = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSaveGroup3Block3730 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3PairCatalog0 = external dso_local global [0 x i8], align 1
@gSaveGroup3PairCatalog1 = external dso_local global [0 x i8], align 1
@gSaveGroup3PairCatalog2 = external dso_local global [0 x i8], align 1
@gSaveGroup3DefaultPairAnimation = external dso_local constant [0 x i8], align 1
@gSaveGroup3PairSlideVelocities = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSaveGroup3PairSlideOutScript = external dso_local constant [0 x i8], align 1
@gSaveGroup3PairSlideInScript = external dso_local constant [0 x i8], align 1
@gSaveGroup3PairCounts = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3Byte35CC = external dso_local local_unnamed_addr global i8, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gSaveGroup3SelectionRowX = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSaveGroup3IndicatorBankX = external dso_local constant [0 x i16], align 2
@gSaveGroup3IndicatorGroupY = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSaveGroup3IndicatorAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3Block3C50 = external dso_local global [0 x i8], align 1
@gSaveGroup3Block1EE40 = external dso_local global [0 x i8], align 1
@gSaveGroup3ListLookupValues = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3Byte3D00 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup3RecordTileOffsets = external dso_local constant [0 x i16], align 2
@gSaveGroup3RecordCompressedMaps = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3RecordPalettes = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3RecordAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3RecordMarkerAnimation = external dso_local constant [0 x i8], align 1
@gSaveGroup3Byte379C = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local global [0 x i32], align 4
@gSaveGroup3TextCountOffsets = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3PairTextSources = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3VariationTextSources = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3VariationTextIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gSaveGroup3PairTextBuffer = external dso_local global [0 x i8], align 1
@gSaveGroup3CopiedTextScript = external dso_local constant [0 x i8], align 1
@gSaveGroup3DefaultValues = external dso_local constant [0 x i8], align 1
@gSaveGroup3DefaultIndices = external dso_local constant [0 x i8], align 1
@gSaveGroup3CompletedFieldMaskBits = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @RenderSaveGroup3NumberFromArguments(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  tail call arm_apcscc void @RenderSaveGroup3Number(i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %6, i8 noundef zeroext %8) #10
  ret i32 3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @RenderSaveGroup3Number(i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareSaveGroup3PendingPairs(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i32
  %5 = select i1 %3, i32 12, i32 9
  %6 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 1
  %10 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %9
  %11 = load i16, ptr %10, align 2
  %12 = sext i16 %11 to i32
  %13 = shl nsw i32 %12, 16
  %14 = or disjoint i32 %9, 1
  %15 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = sext i16 %16 to i32
  %18 = shl nsw i32 %17, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %5, i32 noundef %13, i32 noundef %18, i32 noundef 0) #10
  %19 = load i8, ptr %6, align 1
  switch i8 %19, label %34 [
    i8 12, label %20
    i8 27, label %20
    i8 18, label %20
    i8 21, label %20
  ]

20:                                               ; preds = %1, %1, %1, %1
  %21 = zext nneg i8 %19 to i32
  %22 = shl nuw nsw i32 %21, 1
  %23 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %22
  %24 = load i16, ptr %23, align 2
  %25 = sext i16 %24 to i32
  %26 = shl nsw i32 %25, 16
  %27 = or disjoint i32 %22, 1
  %28 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %27
  %29 = load i16, ptr %28, align 2
  %30 = sext i16 %29 to i32
  %31 = shl nsw i32 %30, 16
  %32 = add i32 %31, 65536
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %5, i32 noundef %26, i32 noundef %32, i32 noundef -65536) #10
  %33 = load i8, ptr %6, align 1
  br label %34

34:                                               ; preds = %1, %20
  %35 = phi i8 [ %19, %1 ], [ %33, %20 ]
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %5, i8 noundef zeroext %35, i32 noundef %4) #10
  %36 = load i8, ptr %6, align 1
  %37 = getelementptr i8, ptr %6, i32 1
  %38 = load i8, ptr %37, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %36, i8 noundef zeroext %38, i8 noundef zeroext 0, i32 noundef %4) #10
  %39 = add nuw nsw i32 %5, 1
  %40 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 1
  %44 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = sext i16 %45 to i32
  %47 = shl nsw i32 %46, 16
  %48 = or disjoint i32 %43, 1
  %49 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %48
  %50 = load i16, ptr %49, align 2
  %51 = sext i16 %50 to i32
  %52 = shl nsw i32 %51, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %39, i32 noundef %47, i32 noundef %52, i32 noundef 0) #10
  %53 = load i8, ptr %40, align 1
  switch i8 %53, label %68 [
    i8 12, label %54
    i8 27, label %54
    i8 18, label %54
    i8 21, label %54
  ]

54:                                               ; preds = %34, %34, %34, %34
  %55 = zext nneg i8 %53 to i32
  %56 = shl nuw nsw i32 %55, 1
  %57 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %56
  %58 = load i16, ptr %57, align 2
  %59 = sext i16 %58 to i32
  %60 = shl nsw i32 %59, 16
  %61 = or disjoint i32 %56, 1
  %62 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %61
  %63 = load i16, ptr %62, align 2
  %64 = sext i16 %63 to i32
  %65 = shl nsw i32 %64, 16
  %66 = add i32 %65, 65536
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %39, i32 noundef %60, i32 noundef %66, i32 noundef -65536) #10
  %67 = load i8, ptr %40, align 1
  br label %68

68:                                               ; preds = %54, %34
  %69 = phi i8 [ %67, %54 ], [ %53, %34 ]
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %39, i8 noundef zeroext %69, i32 noundef %4) #10
  %70 = load i8, ptr %40, align 1
  %71 = getelementptr i8, ptr %40, i32 1
  %72 = load i8, ptr %71, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %70, i8 noundef zeroext %72, i8 noundef zeroext 1, i32 noundef %4) #10
  %73 = or disjoint i32 %5, 2
  %74 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 1
  %78 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %77
  %79 = load i16, ptr %78, align 2
  %80 = sext i16 %79 to i32
  %81 = shl nsw i32 %80, 16
  %82 = or disjoint i32 %77, 1
  %83 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %82
  %84 = load i16, ptr %83, align 2
  %85 = sext i16 %84 to i32
  %86 = shl nsw i32 %85, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %73, i32 noundef %81, i32 noundef %86, i32 noundef 0) #10
  %87 = load i8, ptr %74, align 1
  switch i8 %87, label %102 [
    i8 12, label %88
    i8 27, label %88
    i8 18, label %88
    i8 21, label %88
  ]

88:                                               ; preds = %68, %68, %68, %68
  %89 = zext nneg i8 %87 to i32
  %90 = shl nuw nsw i32 %89, 1
  %91 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %90
  %92 = load i16, ptr %91, align 2
  %93 = sext i16 %92 to i32
  %94 = shl nsw i32 %93, 16
  %95 = or disjoint i32 %90, 1
  %96 = getelementptr [0 x i16], ptr @gSaveGroup3PairAlternatePositions, i32 0, i32 %95
  %97 = load i16, ptr %96, align 2
  %98 = sext i16 %97 to i32
  %99 = shl nsw i32 %98, 16
  %100 = add i32 %99, 65536
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %73, i32 noundef %94, i32 noundef %100, i32 noundef -65536) #10
  %101 = load i8, ptr %74, align 1
  br label %102

102:                                              ; preds = %88, %68
  %103 = phi i8 [ %101, %88 ], [ %87, %68 ]
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %73, i8 noundef zeroext %103, i32 noundef %4) #10
  %104 = load i8, ptr %74, align 1
  %105 = getelementptr i8, ptr %74, i32 1
  %106 = load i8, ptr %105, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %104, i8 noundef zeroext %106, i8 noundef zeroext 2, i32 noundef %4) #10
  %107 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %108 = load i8, ptr @gSaveGroup3SelectedPairIndices, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 1
  %111 = getelementptr i8, ptr %107, i32 %110
  %112 = load i8, ptr %111, align 1
  store i8 %112, ptr @gSaveGroup3PendingPairs, align 1
  %113 = getelementptr i8, ptr %111, i32 1
  %114 = load i8, ptr %113, align 1
  store i8 %114, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PendingPairs, i32 0, i32 1), align 1
  store i8 0, ptr @gSaveGroup3SelectedPairIndices, align 1
  %115 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %116 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 1
  %119 = getelementptr i8, ptr %115, i32 %118
  %120 = load i8, ptr %119, align 1
  store i8 %120, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PendingPairs, i32 0, i32 2), align 1
  %121 = getelementptr i8, ptr %119, i32 1
  %122 = load i8, ptr %121, align 1
  store i8 %122, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PendingPairs, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  %123 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %124 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 1
  %127 = getelementptr i8, ptr %123, i32 %126
  %128 = load i8, ptr %127, align 1
  store i8 %128, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PendingPairs, i32 0, i32 4), align 1
  %129 = getelementptr i8, ptr %127, i32 1
  %130 = load i8, ptr %129, align 1
  store i8 %130, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PendingPairs, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  %131 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 3) to ptr), align 1
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 1
  %134 = getelementptr i8, ptr %107, i32 %133
  %135 = load i8, ptr %134, align 1
  store i8 %135, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3PendingPairs to i32), i32 6) to ptr), align 1
  %136 = getelementptr i8, ptr %134, i32 1
  %137 = load i8, ptr %136, align 1
  store i8 %137, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3PendingPairs to i32), i32 6) to ptr), i32 1), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 3) to ptr), align 1
  %138 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %139 = load i8, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 3) to ptr), i32 1), align 1
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 1
  %142 = getelementptr i8, ptr %138, i32 %141
  %143 = load i8, ptr %142, align 1
  store i8 %143, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3PendingPairs to i32), i32 6) to ptr), i32 2), align 1
  %144 = getelementptr i8, ptr %142, i32 1
  %145 = load i8, ptr %144, align 1
  store i8 %145, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3PendingPairs to i32), i32 6) to ptr), i32 3), align 1
  store i8 0, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 3) to ptr), i32 1), align 1
  %146 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %147 = load i8, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 3) to ptr), i32 2), align 1
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 1
  %150 = getelementptr i8, ptr %146, i32 %149
  %151 = load i8, ptr %150, align 1
  store i8 %151, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3PendingPairs to i32), i32 6) to ptr), i32 4), align 1
  %152 = getelementptr i8, ptr %150, i32 1
  %153 = load i8, ptr %152, align 1
  store i8 %153, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3PendingPairs to i32), i32 6) to ptr), i32 5), align 1
  store i8 0, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 3) to ptr), i32 2), align 1
  %154 = tail call arm_apcscc i32 @ScriptCallbackRefreshSaveGroup3PairFlags(ptr poison) #11
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshSaveGroup3PairFlags(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %3 = load i8, ptr @gSaveGroup3SelectedPairIndices, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 1
  %6 = getelementptr i8, ptr %2, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, -30
  %9 = icmp ult i8 %8, -31
  %10 = load i16, ptr @gSaveGroup3PairFlags, align 2
  %11 = zext i1 %9 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %10, i32 noundef %11) #10
  %12 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 1
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, -30
  %19 = icmp ult i8 %18, -31
  %20 = zext i1 %19 to i32
  %21 = load i16, ptr getelementptr ([0 x i16], ptr @gSaveGroup3PairFlags, i32 0, i32 1), align 2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %21, i32 noundef %20) #10
  %22 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 1
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = add i8 %27, -30
  %29 = icmp ult i8 %28, -31
  %30 = zext i1 %29 to i32
  %31 = load i16, ptr getelementptr ([0 x i16], ptr @gSaveGroup3PairFlags, i32 0, i32 2), align 2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %31, i32 noundef %30) #10
  %32 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 3), align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 1
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = add i8 %37, -30
  %39 = icmp ult i8 %38, -31
  %40 = load i16, ptr getelementptr ([0 x i16], ptr @gSaveGroup3PairFlags, i32 0, i32 3), align 2
  %41 = zext i1 %39 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %40, i32 noundef %41) #10
  %42 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %43 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 4), align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 1
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = add i8 %47, -30
  %49 = icmp ult i8 %48, -31
  %50 = load i16, ptr getelementptr ([0 x i16], ptr @gSaveGroup3PairFlags, i32 0, i32 4), align 2
  %51 = zext i1 %49 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %50, i32 noundef %51) #10
  %52 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %53 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 5), align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 1
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = add i8 %57, -30
  %59 = icmp ult i8 %58, -31
  %60 = load i16, ptr getelementptr ([0 x i16], ptr @gSaveGroup3PairFlags, i32 0, i32 5), align 2
  %61 = zext i1 %59 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %60, i32 noundef %61) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSaveGroup3PendingPairs(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %38, %5 ], [ 9, %1 ]
  %7 = phi i32 [ %36, %5 ], [ 0, %1 ]
  %8 = phi i8 [ %37, %5 ], [ 0, %1 ]
  %9 = phi ptr [ %39, %5 ], [ @gSaveGroup3PendingPairs, %1 ]
  %10 = add nsw i8 %8, -3
  %11 = icmp ult i32 %7, 3
  %12 = trunc i32 %7 to i8
  %13 = select i1 %11, i8 %12, i8 %10
  %14 = zext nneg i8 %13 to i32
  %15 = getelementptr ptr, ptr @gSaveGroup3PairCatalogs, i32 %14
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %17 = load i8, ptr %9, align 1
  %18 = getelementptr i8, ptr %9, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = call arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef %16, i8 noundef zeroext %17, i8 noundef zeroext %19) #10
  %21 = getelementptr [0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 %7
  store i8 %20, ptr %21, align 1
  %22 = load ptr, ptr %15, align 4
  %23 = zext i8 %20 to i32
  %24 = shl nuw nsw i32 %23, 1
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = load i8, ptr %25, align 1
  call arm_apcscc void @GetSaveGroup3PairPosition(i8 noundef zeroext %26, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #10
  %27 = load i32, ptr %2, align 4
  %28 = load i32, ptr %3, align 4
  %29 = load i32, ptr %4, align 4
  call arm_apcscc void @SetRenderPosition(i32 noundef %6, i32 noundef %27, i32 noundef %28, i32 noundef %29) #10
  %30 = load i8, ptr %25, align 1
  %31 = icmp ugt i32 %7, 2
  %32 = zext i1 %31 to i32
  call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %6, i8 noundef zeroext %30, i32 noundef %32) #10
  %33 = load i8, ptr %25, align 1
  %34 = getelementptr i8, ptr %25, i32 1
  %35 = load i8, ptr %34, align 1
  call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %33, i8 noundef zeroext %35, i8 noundef zeroext %12, i32 noundef %32) #10
  %36 = add nuw nsw i32 %7, 1
  %37 = add nuw nsw i8 %8, 1
  %38 = add nuw nsw i32 %6, 1
  %39 = getelementptr i8, ptr %9, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %40 = icmp eq i32 %36, 6
  br i1 %40, label %41, label %5

41:                                               ; preds = %5
  %42 = call arm_apcscc i32 @ScriptCallbackRefreshSaveGroup3PairFlags(ptr poison) #11
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindSaveGroup3PairIndex(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @GetSaveGroup3PairPosition(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSaveGroup3StoredPairs(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 4
  %9 = getelementptr i8, ptr @gSaveGroup3Block3730, i32 %8
  %10 = getelementptr i8, ptr %9, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %3, i32 noundef %5, i32 noundef %12, i32 noundef %15, i32 noundef 0) #10
  %16 = add nuw nsw i32 %3, 1
  %17 = and i32 %16, 255
  %18 = getelementptr i8, ptr %9, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %9, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %17, i32 noundef %5, i32 noundef %20, i32 noundef %23, i32 noundef 0) #10
  %24 = add nuw nsw i32 %3, 2
  %25 = and i32 %24, 255
  %26 = getelementptr i8, ptr %9, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %9, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %25, i32 noundef %5, i32 noundef %28, i32 noundef %31, i32 noundef 0) #10
  %32 = add nuw nsw i32 %3, 3
  %33 = add i8 %4, 1
  %34 = and i32 %32, 255
  %35 = zext i8 %33 to i32
  %36 = getelementptr i8, ptr %9, i32 7
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr i8, ptr %9, i32 8
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %34, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef 1) #10
  %42 = add nuw nsw i32 %3, 4
  %43 = and i32 %42, 255
  %44 = getelementptr i8, ptr %9, i32 9
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr i8, ptr %9, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %43, i32 noundef %35, i32 noundef %46, i32 noundef %49, i32 noundef 1) #10
  %50 = add i8 %2, 5
  %51 = zext i8 %50 to i32
  %52 = getelementptr i8, ptr %9, i32 11
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr i8, ptr %9, i32 12
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %51, i32 noundef %35, i32 noundef %54, i32 noundef %57, i32 noundef 1) #10
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSaveGroup3SelectedPairs(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %5 = zext i8 %4 to i32
  %6 = tail call ptr asm "", "=r,0"(ptr nonnull @gSaveGroup3PairCatalog0) #13, !srcloc !4
  %7 = load i8, ptr @gSaveGroup3SelectedPairIndices, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 1
  %10 = ptrtoint ptr %6 to i32
  %11 = add i32 %9, %10
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add i32 %10, 1
  %16 = add i32 %15, %9
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %3, i32 noundef %5, i32 noundef %14, i32 noundef %19, i32 noundef 0) #10
  %20 = add nuw nsw i32 %3, 1
  %21 = and i32 %20, 255
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 1
  %25 = add i32 %24, ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add i32 %24, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32), i32 1)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %21, i32 noundef %5, i32 noundef %28, i32 noundef %32, i32 noundef 0) #10
  %33 = add nuw nsw i32 %3, 2
  %34 = and i32 %33, 255
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 1
  %38 = add i32 %37, ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add i32 %37, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32), i32 1)
  %43 = inttoptr i32 %42 to ptr
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %34, i32 noundef %5, i32 noundef %41, i32 noundef %45, i32 noundef 0) #10
  %46 = add nuw nsw i32 %3, 3
  %47 = add i8 %4, 1
  %48 = and i32 %46, 255
  %49 = zext i8 %47 to i32
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 3), align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 1
  %53 = add i32 %52, %10
  %54 = inttoptr i32 %53 to ptr
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add i32 %15, %52
  %58 = inttoptr i32 %57 to ptr
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %48, i32 noundef %49, i32 noundef %56, i32 noundef %60, i32 noundef 1) #10
  %61 = add nuw nsw i32 %3, 4
  %62 = and i32 %61, 255
  %63 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 4), align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 1
  %66 = add i32 %65, ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32)
  %67 = inttoptr i32 %66 to ptr
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add i32 %65, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32), i32 1)
  %71 = inttoptr i32 %70 to ptr
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %62, i32 noundef %49, i32 noundef %69, i32 noundef %73, i32 noundef 1) #10
  %74 = add i8 %2, 5
  %75 = zext i8 %74 to i32
  %76 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 5), align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 1
  %79 = add i32 %78, ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32)
  %80 = inttoptr i32 %79 to ptr
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add i32 %78, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32), i32 1)
  %84 = inttoptr i32 %83 to ptr
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  tail call arm_apcscc void @ConfigureSaveGroup3PairRenderSlot(i32 noundef %75, i32 noundef %49, i32 noundef %82, i32 noundef %86, i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSaveGroup3SelectedPairDisplay(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = zext i8 %2 to i32
  %4 = tail call i32 asm "", "={r1},{r1}"(i32 99) #13, !srcloc !5
  %5 = add i32 %4, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %6 = inttoptr i32 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = tail call arm_apcscc i32 @ScriptCallbackConfigureSaveGroup3SelectedPairSlots(ptr poison) #11
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %9 = add i8 %8, 3
  store i8 %9, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %11 = add i8 %10, 1
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  store i8 1, ptr %6, align 1
  %12 = tail call arm_apcscc i32 @ScriptCallbackConfigureSaveGroup3SelectedPairSlots(ptr poison) #11
  %13 = load i8, ptr @gSaveGroup3SelectedPairIndices, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %15, ptrtoint (ptr @gSaveGroup3PairCatalog0 to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %3, i8 noundef zeroext %18, i32 noundef 0) #10
  %19 = load i8, ptr %17, align 1
  %20 = add i32 %15, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog0 to i32), i32 1)
  %21 = inttoptr i32 %20 to ptr
  %22 = load i8, ptr %21, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %19, i8 noundef zeroext %22, i8 noundef zeroext 0, i32 noundef 0) #10
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 1
  %26 = add nuw nsw i32 %3, 1
  %27 = add i32 %25, ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %28, align 1
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %26, i8 noundef zeroext %29, i32 noundef 0) #10
  %30 = load i8, ptr %28, align 1
  %31 = add i32 %25, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32), i32 1)
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %30, i8 noundef zeroext %33, i8 noundef zeroext 1, i32 noundef 0) #10
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = add nuw nsw i32 %3, 2
  %38 = add i32 %36, ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = load i8, ptr %39, align 1
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %37, i8 noundef zeroext %40, i32 noundef 0) #10
  %41 = load i8, ptr %39, align 1
  %42 = add i32 %36, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32), i32 1)
  %43 = inttoptr i32 %42 to ptr
  %44 = load i8, ptr %43, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %41, i8 noundef zeroext %44, i8 noundef zeroext 2, i32 noundef 0) #10
  %45 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 3), align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 1
  %48 = add nuw nsw i32 %3, 3
  %49 = tail call i32 asm "", "={r1},{r1}"(i32 ptrtoint (ptr @gSaveGroup3PairCatalog0 to i32)) #13, !srcloc !6
  %50 = add i32 %47, %49
  %51 = inttoptr i32 %50 to ptr
  %52 = load i8, ptr %51, align 1
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %48, i8 noundef zeroext %52, i32 noundef 1) #10
  %53 = load i8, ptr %51, align 1
  %54 = add i32 %47, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog0 to i32), i32 1)
  %55 = inttoptr i32 %54 to ptr
  %56 = load i8, ptr %55, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %53, i8 noundef zeroext %56, i8 noundef zeroext 3, i32 noundef 1) #10
  %57 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 4), align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 1
  %60 = add nuw nsw i32 %3, 4
  %61 = add i32 %59, ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32)
  %62 = inttoptr i32 %61 to ptr
  %63 = load i8, ptr %62, align 1
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %60, i8 noundef zeroext %63, i32 noundef 1) #10
  %64 = load i8, ptr %62, align 1
  %65 = add i32 %59, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32), i32 1)
  %66 = inttoptr i32 %65 to ptr
  %67 = load i8, ptr %66, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %64, i8 noundef zeroext %67, i8 noundef zeroext 4, i32 noundef 1) #10
  %68 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 5), align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 1
  %71 = add nuw nsw i32 %3, 5
  %72 = tail call i32 asm "", "={r1},{r1}"(i32 ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32)) #13, !srcloc !7
  %73 = add i32 %70, %72
  %74 = inttoptr i32 %73 to ptr
  %75 = load i8, ptr %74, align 1
  tail call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %71, i8 noundef zeroext %75, i32 noundef 1) #10
  %76 = load i8, ptr %74, align 1
  %77 = add i32 %70, add (i32 ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32), i32 1)
  %78 = inttoptr i32 %77 to ptr
  %79 = load i8, ptr %78, align 1
  tail call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %76, i8 noundef zeroext %79, i8 noundef zeroext 5, i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSaveGroup3SelectedPairSlots(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %8 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr @gSaveGroup3SelectedPairIndices, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 3)
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 1
  %15 = getelementptr [0 x i8], ptr @gSaveGroup3PairCatalog0, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = select i1 %10, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 4)
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 1
  %21 = getelementptr [0 x i8], ptr @gSaveGroup3PairCatalog1, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = select i1 %10, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 5)
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 1
  %27 = getelementptr [0 x i8], ptr @gSaveGroup3PairCatalog2, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %16, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %38

31:                                               ; preds = %1
  call arm_apcscc void @GetSaveGroup3PairPosition(i8 noundef zeroext %16, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #10
  %32 = load i32, ptr %2, align 4
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %4, align 4
  %35 = ashr i32 %32, 16
  %36 = ashr i32 %33, 16
  %37 = ashr i32 %34, 16
  br label %38

38:                                               ; preds = %31, %30
  %39 = phi i32 [ %37, %31 ], [ 0, %30 ]
  %40 = phi i32 [ %36, %31 ], [ 0, %30 ]
  %41 = phi i32 [ %35, %31 ], [ 0, %30 ]
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %5, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef %41, i32 noundef %40, i32 noundef %39, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #10
  call arm_apcscc void @SetRenderPriorityBits(i32 noundef %6, i8 noundef zeroext 1) #10
  call arm_apcscc void @SetRenderField65(i32 noundef %6, i32 noundef %8) #10
  %42 = add nuw nsw i32 %6, 1
  %43 = icmp eq i8 %22, -1
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  call arm_apcscc void @GetSaveGroup3PairPosition(i8 noundef zeroext %22, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #10
  %45 = load i32, ptr %2, align 4
  %46 = load i32, ptr %3, align 4
  %47 = load i32, ptr %4, align 4
  %48 = ashr i32 %45, 16
  %49 = ashr i32 %46, 16
  %50 = ashr i32 %47, 16
  br label %52

51:                                               ; preds = %38
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = phi i32 [ 0, %51 ], [ %50, %44 ]
  %54 = phi i32 [ 0, %51 ], [ %49, %44 ]
  %55 = phi i32 [ 0, %51 ], [ %48, %44 ]
  %56 = trunc i32 %42 to i8
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %56, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef %55, i32 noundef %54, i32 noundef %53, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #10
  call arm_apcscc void @SetRenderPriorityBits(i32 noundef %42, i8 noundef zeroext 1) #10
  call arm_apcscc void @SetRenderField65(i32 noundef %42, i32 noundef %8) #10
  %57 = icmp eq i8 %28, -1
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  call arm_apcscc void @GetSaveGroup3PairPosition(i8 noundef zeroext %28, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #10
  %59 = load i32, ptr %2, align 4
  %60 = load i32, ptr %3, align 4
  %61 = load i32, ptr %4, align 4
  %62 = ashr i32 %59, 16
  %63 = ashr i32 %60, 16
  %64 = ashr i32 %61, 16
  br label %66

65:                                               ; preds = %52
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ 0, %65 ], [ %64, %58 ]
  %68 = phi i32 [ 0, %65 ], [ %63, %58 ]
  %69 = phi i32 [ 0, %65 ], [ %62, %58 ]
  %70 = add nuw nsw i32 %6, 2
  %71 = trunc i32 %70 to i8
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %71, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef %69, i32 noundef %68, i32 noundef %67, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #10
  call arm_apcscc void @SetRenderPriorityBits(i32 noundef %70, i8 noundef zeroext 1) #10
  call arm_apcscc void @SetRenderField65(i32 noundef %70, i32 noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField65(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetSaveGroup3SelectedPairsToCatalogEnds(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, -1
  br i1 %4, label %14, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %2, %1 ]
  %7 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %8 = getelementptr i8, ptr %6, i32 2
  %9 = add i32 %7, 1
  %10 = load i8, ptr %8, align 1
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %12, label %5

12:                                               ; preds = %5
  %13 = trunc i32 %9 to i8
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i8 [ 0, %1 ], [ %13, %12 ]
  %16 = tail call i32 asm "", "=r,0"(i32 0) #13, !srcloc !8
  %17 = add i32 %16, ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32)
  %18 = inttoptr i32 %17 to ptr
  store i8 %15, ptr %18, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 3) to ptr), align 1
  %19 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, -1
  br i1 %21, label %31, label %22

22:                                               ; preds = %14, %22
  %23 = phi ptr [ %25, %22 ], [ %19, %14 ]
  %24 = phi i32 [ %26, %22 ], [ 0, %14 ]
  %25 = getelementptr i8, ptr %23, i32 2
  %26 = add i32 %24, 1
  %27 = load i8, ptr %25, align 1
  %28 = icmp eq i8 %27, -1
  br i1 %28, label %29, label %22

29:                                               ; preds = %22
  %30 = trunc i32 %26 to i8
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i8 [ 0, %14 ], [ %30, %29 ]
  %33 = tail call i32 asm "", "=r,0"(i32 1) #13, !srcloc !8
  %34 = add i32 %33, ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32)
  %35 = inttoptr i32 %34 to ptr
  store i8 %32, ptr %35, align 1
  store i8 %32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 4) to ptr), align 1
  %36 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, -1
  br i1 %38, label %48, label %39

39:                                               ; preds = %31, %39
  %40 = phi ptr [ %42, %39 ], [ %36, %31 ]
  %41 = phi i32 [ %43, %39 ], [ 0, %31 ]
  %42 = getelementptr i8, ptr %40, i32 2
  %43 = add i32 %41, 1
  %44 = load i8, ptr %42, align 1
  %45 = icmp eq i8 %44, -1
  br i1 %45, label %46, label %39

46:                                               ; preds = %39
  %47 = trunc i32 %43 to i8
  br label %48

48:                                               ; preds = %46, %31
  %49 = phi i8 [ 0, %31 ], [ %47, %46 ]
  %50 = tail call i32 asm "", "=r,0"(i32 2) #13, !srcloc !8
  %51 = add i32 %50, ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32)
  %52 = inttoptr i32 %51 to ptr
  store i8 %49, ptr %52, align 1
  store i8 %49, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 5) to ptr), align 1
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetSaveGroup3ActivePairsToCatalogEnds(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, -1
  br i1 %4, label %14, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %2, %1 ]
  %7 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %8 = getelementptr i8, ptr %6, i32 2
  %9 = add i32 %7, 1
  %10 = load i8, ptr %8, align 1
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %12, label %5

12:                                               ; preds = %5
  %13 = trunc i32 %9 to i8
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i8 [ 0, %1 ], [ %13, %12 ]
  %16 = tail call ptr asm "", "={r5},{r5}"(ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114)) #13, !srcloc !9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 3
  %20 = add i32 %19, ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32)
  %21 = inttoptr i32 %20 to ptr
  store i8 %15, ptr %21, align 1
  %22 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, -1
  br i1 %24, label %34, label %25

25:                                               ; preds = %14, %25
  %26 = phi ptr [ %28, %25 ], [ %22, %14 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %14 ]
  %28 = getelementptr i8, ptr %26, i32 2
  %29 = add i32 %27, 1
  %30 = load i8, ptr %28, align 1
  %31 = icmp eq i8 %30, -1
  br i1 %31, label %32, label %25

32:                                               ; preds = %25
  %33 = trunc i32 %29 to i8
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi i8 [ 0, %14 ], [ %33, %32 ]
  %36 = tail call ptr asm "", "={r5},{r5}"(ptr nonnull %16) #13, !srcloc !9
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = mul nuw nsw i32 %38, 3
  %40 = add i32 %39, add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 1)
  %41 = inttoptr i32 %40 to ptr
  store i8 %35, ptr %41, align 1
  %42 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, -1
  br i1 %44, label %54, label %45

45:                                               ; preds = %34, %45
  %46 = phi ptr [ %48, %45 ], [ %42, %34 ]
  %47 = phi i32 [ %49, %45 ], [ 0, %34 ]
  %48 = getelementptr i8, ptr %46, i32 2
  %49 = add i32 %47, 1
  %50 = load i8, ptr %48, align 1
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %52, label %45

52:                                               ; preds = %45
  %53 = trunc i32 %49 to i8
  br label %54

54:                                               ; preds = %52, %34
  %55 = phi i8 [ 0, %34 ], [ %53, %52 ]
  %56 = tail call ptr asm "", "={r5},{r5}"(ptr nonnull %36) #13, !srcloc !9
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = mul nuw nsw i32 %58, 3
  %60 = add i32 %59, add (i32 ptrtoint (ptr @gSaveGroup3SelectedPairIndices to i32), i32 2)
  %61 = inttoptr i32 %60 to ptr
  store i8 %55, ptr %61, align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdvanceSaveGroup3PairSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %9 = zext i8 %8 to i32
  %10 = add i8 %5, -1
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %7, 3
  %13 = add nuw nsw i32 %12, %11
  %14 = add nuw nsw i32 %13, 9
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %18 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 247) #10
  %19 = getelementptr i8, ptr @gSaveGroup3SelectedPairIndices, i32 %13
  %20 = xor i32 %7, 1
  %21 = mul nuw nsw i32 %20, 3
  %22 = getelementptr i8, ptr @gSaveGroup3SelectedPairIndices, i32 %21
  %23 = getelementptr i8, ptr %22, i32 %11
  %24 = shl nuw nsw i32 %11, 2
  %25 = add i32 %24, ptrtoint (ptr @gSaveGroup3PairCatalogs to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %19, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 1
  %31 = getelementptr i8, ptr %27, i32 %30
  switch i8 %17, label %143 [
    i8 0, label %32
    i8 1, label %40
    i8 2, label %112
    i8 3, label %139
  ]

32:                                               ; preds = %1
  %33 = getelementptr [0 x i16], ptr @gSaveGroup3PairSlideVelocities, i32 0, i32 %9
  %34 = load i16, ptr %33, align 2
  %35 = sext i16 %34 to i32
  %36 = shl nsw i32 %35, 8
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %14, i32 noundef %36, i32 noundef 0, i32 noundef 0) #10
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %14, i8 noundef zeroext 1) #10
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSaveGroup3PairSlideOutScript to i32)) #10
  %37 = load i8, ptr %31, align 1
  %38 = icmp eq i8 %37, -1
  %39 = select i1 %38, i32 1, i32 8
  br label %143

40:                                               ; preds = %1
  %41 = add nsw i32 %16, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %143

43:                                               ; preds = %40
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  tail call arm_apcscc void @SetRenderField60(i32 noundef %14, i32 noundef 0) #10
  %44 = icmp eq i8 %8, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = load i8, ptr %31, align 1
  %47 = icmp eq i8 %46, -1
  br i1 %47, label %92, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr %19, align 1
  %50 = add i8 %49, 1
  store i8 %50, ptr %19, align 1
  %51 = icmp eq i32 %18, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %31, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %78, label %80

56:                                               ; preds = %43
  %57 = load i8, ptr %19, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = add i8 %57, -1
  br label %92

61:                                               ; preds = %56
  store i8 0, ptr %19, align 1
  %62 = load ptr, ptr %26, align 4
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, -1
  br i1 %64, label %74, label %65

65:                                               ; preds = %61, %65
  %66 = phi i8 [ %69, %65 ], [ 0, %61 ]
  %67 = phi ptr [ %68, %65 ], [ %62, %61 ]
  %68 = getelementptr i8, ptr %67, i32 2
  %69 = add i8 %66, 1
  store i8 %69, ptr %19, align 1
  %70 = load i8, ptr %68, align 1
  %71 = icmp eq i8 %70, -1
  br i1 %71, label %72, label %65

72:                                               ; preds = %65
  %73 = icmp eq i32 %18, 0
  br i1 %73, label %86, label %76

74:                                               ; preds = %61
  %75 = icmp eq i32 %18, 0
  br i1 %75, label %86, label %80

76:                                               ; preds = %72
  %77 = icmp eq i8 %69, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %76, %52
  %79 = phi i8 [ 0, %52 ], [ %66, %76 ]
  store i8 %79, ptr %19, align 1
  br label %80

80:                                               ; preds = %78, %74, %76, %52
  %81 = phi i8 [ 0, %76 ], [ %50, %52 ], [ 0, %74 ], [ %79, %78 ]
  %82 = load ptr, ptr %26, align 4
  %83 = zext i8 %81 to i32
  %84 = shl nuw nsw i32 %83, 1
  %85 = getelementptr i8, ptr %82, i32 %84
  br label %107

86:                                               ; preds = %74, %72, %48
  %87 = phi i8 [ %69, %72 ], [ %50, %48 ], [ 0, %74 ]
  %88 = load ptr, ptr %26, align 4
  %89 = zext i8 %87 to i32
  %90 = shl nuw nsw i32 %89, 1
  %91 = getelementptr i8, ptr %88, i32 %90
  br label %99

92:                                               ; preds = %45, %59
  %93 = phi i8 [ %60, %59 ], [ 0, %45 ]
  store i8 %93, ptr %19, align 1
  %94 = load ptr, ptr %26, align 4
  %95 = zext i8 %93 to i32
  %96 = shl nuw nsw i32 %95, 1
  %97 = getelementptr i8, ptr %94, i32 %96
  %98 = icmp eq i32 %18, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %86, %92
  %100 = phi ptr [ %91, %86 ], [ %97, %92 ]
  %101 = phi i8 [ %87, %86 ], [ %93, %92 ]
  %102 = load i8, ptr %23, align 1
  %103 = icmp eq i8 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8, ptr %100, align 1
  %106 = icmp eq i8 %105, -1
  br i1 %106, label %107, label %143

107:                                              ; preds = %80, %104, %99, %92
  %108 = phi ptr [ %85, %80 ], [ %100, %104 ], [ %100, %99 ], [ %97, %92 ]
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, -1
  %111 = select i1 %110, i32 1, i32 16
  br label %143

112:                                              ; preds = %1
  %113 = add nsw i32 %16, -1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %112
  tail call arm_apcscc void @SetRenderField60(i32 noundef %14, i32 noundef 1) #10
  %116 = getelementptr [0 x i16], ptr @gSaveGroup3PairSlideVelocities, i32 0, i32 %9
  %117 = load i16, ptr %116, align 2
  %118 = sext i16 %117 to i32
  %119 = shl nsw i32 %118, 8
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %14, i32 noundef %119, i32 noundef 0, i32 noundef 0) #10
  %120 = icmp ne i32 %18, 0
  %121 = load i8, ptr %31, align 1
  %122 = zext i1 %120 to i8
  call arm_apcscc void @GetSaveGroup3PairPosition(i8 noundef zeroext %121, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %122) #10
  %123 = icmp eq i8 %8, 0
  %124 = load i32, ptr %2, align 4
  %125 = select i1 %123, i32 2097152, i32 -2097152
  %126 = add i32 %124, %125
  store i32 %126, ptr %2, align 4
  %127 = load i32, ptr %3, align 4
  %128 = load i32, ptr %4, align 4
  call arm_apcscc void @SetRenderPosition(i32 noundef %14, i32 noundef %126, i32 noundef %127, i32 noundef %128) #10
  %129 = load i8, ptr %31, align 1
  %130 = icmp eq i8 %129, -1
  br i1 %130, label %135, label %131

131:                                              ; preds = %115
  call arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %14, i8 noundef zeroext %129, i32 noundef %7) #10
  %132 = load i8, ptr %31, align 1
  %133 = getelementptr i8, ptr %31, i32 1
  %134 = load i8, ptr %133, align 1
  call arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %132, i8 noundef zeroext %134, i8 noundef zeroext 0, i32 noundef %7) #10
  br label %136

135:                                              ; preds = %115
  call arm_apcscc void @SetRenderAnimation(i32 noundef %14, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #10
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i32 [ 8, %131 ], [ 1, %135 ]
  call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSaveGroup3PairSlideInScript to i32)) #10
  %138 = load i8, ptr %31, align 1
  store i8 %138, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  br label %143

139:                                              ; preds = %1
  %140 = add nsw i32 %16, -1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %14, i8 noundef zeroext 0) #10
  br label %143

143:                                              ; preds = %107, %40, %104, %139, %112, %1, %142, %136, %32
  %144 = phi i8 [ %17, %1 ], [ 3, %139 ], [ 4, %142 ], [ 2, %112 ], [ 3, %136 ], [ 1, %32 ], [ 2, %107 ], [ 1, %40 ], [ 1, %104 ]
  %145 = phi i32 [ %16, %1 ], [ %140, %139 ], [ 0, %142 ], [ %113, %112 ], [ %137, %136 ], [ %39, %32 ], [ %111, %107 ], [ %41, %40 ], [ 1, %104 ]
  %146 = trunc i32 %145 to i8
  store i8 %146, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  store i8 %144, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshSaveGroup3SelectedPairCategory(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %4 = zext i8 %3 to i32
  %5 = add i8 %2, -1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %4, 3
  %8 = getelementptr i8, ptr @gSaveGroup3SelectedPairIndices, i32 %7
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = getelementptr [0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 %6
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %9, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 1
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSaveGroup3PairCounts(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gSaveGroup3PairCounts, align 1
  tail call arm_apcscc void @RenderSaveGroup3Number(i32 noundef 15, i8 noundef zeroext %2, i8 noundef zeroext -120, i8 noundef zeroext 22) #10
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), align 1
  tail call arm_apcscc void @RenderSaveGroup3Number(i32 noundef 17, i8 noundef zeroext %3, i8 noundef zeroext -120, i8 noundef zeroext 46) #10
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 2), align 1
  tail call arm_apcscc void @RenderSaveGroup3Number(i32 noundef 19, i8 noundef zeroext %4, i8 noundef zeroext -120, i8 noundef zeroext 70) #10
  tail call arm_apcscc void @UpdateSaveGroup3SelectedCountRenderSlots() #10
  ret i32 0
}

declare dso_local arm_apcscc void @UpdateSaveGroup3SelectedCountRenderSlots() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSaveGroup3PairCountsAlternate(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gSaveGroup3PairCounts, align 1
  tail call arm_apcscc void @RenderSaveGroup3Number(i32 noundef 15, i8 noundef zeroext %2, i8 noundef zeroext -120, i8 noundef zeroext 22) #10
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), align 1
  tail call arm_apcscc void @RenderSaveGroup3Number(i32 noundef 17, i8 noundef zeroext %3, i8 noundef zeroext -120, i8 noundef zeroext 46) #10
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 2), align 1
  tail call arm_apcscc void @RenderSaveGroup3Number(i32 noundef 19, i8 noundef zeroext %4, i8 noundef zeroext -120, i8 noundef zeroext 70) #10
  tail call arm_apcscc void @UpdateSaveGroup3SelectedCountRenderSlots() #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateSaveGroup3CountSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @UpdateSaveGroup3CountRenderSlots() #10
  tail call arm_apcscc void @UpdateSaveGroup3SelectedCountRenderSlots() #10
  ret i32 0
}

declare dso_local arm_apcscc void @UpdateSaveGroup3CountRenderSlots() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveSaveGroup3SelectedPair(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %5 = zext i8 %4 to i32
  %6 = mul nuw nsw i32 %5, 3
  %7 = getelementptr i8, ptr @gSaveGroup3SelectedPairIndices, i32 %6
  %8 = getelementptr i8, ptr %7, i32 %3
  %9 = getelementptr i8, ptr %8, i32 -1
  %10 = add nsw i32 %3, -1
  %11 = getelementptr [0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %9, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 1
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, -1
  br i1 %18, label %34, label %19

19:                                               ; preds = %1
  %20 = icmp ult i8 %17, 30
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %16, i32 1
  %23 = load i8, ptr %22, align 1
  tail call arm_apcscc void @SetSaveGroup3FieldBit(i8 noundef zeroext %17, i8 noundef zeroext %23, i8 noundef zeroext 0) #10
  %24 = load i8, ptr @gSaveGroup3Byte35CC, align 1
  %25 = add i8 %24, -1
  store i8 %25, ptr @gSaveGroup3Byte35CC, align 1
  br label %27

26:                                               ; preds = %19
  tail call arm_apcscc void @RemoveSaveGroup3ListEntryByLookupValue(i8 noundef zeroext %17) #10
  br label %27

27:                                               ; preds = %26, %21
  %28 = tail call arm_apcscc i32 @ScriptCallbackRebuildSaveGroup3AvailablePairCatalogs(ptr poison) #11
  %29 = add nuw nsw i32 %3, 8
  %30 = add nuw nsw i32 %29, %6
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %30, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #10
  %31 = load i8, ptr %16, align 1
  %32 = icmp eq i8 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8 0, ptr %9, align 1
  br label %34

34:                                               ; preds = %27, %33, %1
  ret i32 0
}

declare dso_local arm_apcscc void @SetSaveGroup3FieldBit(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @RemoveSaveGroup3ListEntryByLookupValue(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRebuildSaveGroup3AvailablePairCatalogs(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %3 = load ptr, ptr @gSaveGroup3PairCatalogs, align 4
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ 0, %1 ], [ %8, %4 ]
  %6 = phi ptr [ %3, %1 ], [ %7, %4 ]
  %7 = getelementptr i8, ptr %6, i32 1
  store i8 -1, ptr %6, align 1
  %8 = add nuw i8 %5, 1
  %9 = icmp ult i8 %5, -95
  br i1 %9, label %4, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 1), align 4
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i8 [ 0, %10 ], [ %16, %12 ]
  %14 = phi ptr [ %11, %10 ], [ %15, %12 ]
  %15 = getelementptr i8, ptr %14, i32 1
  store i8 -1, ptr %14, align 1
  %16 = add nuw i8 %13, 1
  %17 = icmp ult i8 %13, -95
  br i1 %17, label %12, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr ([0 x ptr], ptr @gSaveGroup3PairCatalogs, i32 0, i32 2), align 4
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i8 [ 0, %18 ], [ %24, %20 ]
  %22 = phi ptr [ %19, %18 ], [ %23, %20 ]
  %23 = getelementptr i8, ptr %22, i32 1
  store i8 -1, ptr %22, align 1
  %24 = add nuw i8 %21, 1
  %25 = icmp ult i8 %21, -95
  br i1 %25, label %20, label %26

26:                                               ; preds = %20
  %27 = tail call arm_apcscc i32 @ScanSaveGroup3AvailableFieldPairs(ptr noundef nonnull @gSaveGroup3Block3C50, ptr noundef nonnull @gSaveGroup3PairCatalog0, i32 noundef 0, i32 noundef 0) #10
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr @gSaveGroup3PairCounts, align 1
  %29 = tail call ptr asm "", "={r5},{r5}"(ptr nonnull @gSaveGroup3Block3C50) #13, !srcloc !10
  %30 = ptrtoint ptr %29 to i32
  %31 = add i32 %30, 4
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call arm_apcscc i32 @ScanSaveGroup3AvailableFieldPairs(ptr noundef %32, ptr noundef nonnull @gSaveGroup3PairCatalog1, i32 noundef 0, i32 noundef 1) #10
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), align 1
  %35 = add i32 %30, 8
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call arm_apcscc i32 @ScanSaveGroup3AvailableFieldPairs(ptr noundef %36, ptr noundef nonnull @gSaveGroup3PairCatalog2, i32 noundef 0, i32 noundef 2) #10
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 2), align 1
  %39 = load i8, ptr @gSaveGroup3PairCounts, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 1
  %42 = add i32 %41, ptrtoint (ptr @gSaveGroup3PairCatalog0 to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 1
  %47 = add i32 %46, ptrtoint (ptr @gSaveGroup3PairCatalog1 to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = shl i32 %37, 1
  %50 = and i32 %49, 510
  %51 = add i32 %50, ptrtoint (ptr @gSaveGroup3PairCatalog2 to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "", "=r,0"(i32 0) #13, !srcloc !11
  %54 = trunc i32 %53 to i8
  br label %55

55:                                               ; preds = %98, %26
  %56 = phi i32 [ 0, %26 ], [ %104, %98 ]
  %57 = phi ptr [ @gSaveGroup3Block1EE40, %26 ], [ %62, %98 ]
  %58 = phi ptr [ %52, %26 ], [ %100, %98 ]
  %59 = phi ptr [ %48, %26 ], [ %101, %98 ]
  %60 = phi ptr [ %43, %26 ], [ %102, %98 ]
  %61 = load i8, ptr %57, align 1
  %62 = getelementptr i8, ptr %57, i32 1
  %63 = icmp eq i8 %61, 0
  br i1 %63, label %98, label %64

64:                                               ; preds = %55
  %65 = zext i8 %61 to i32
  %66 = add nsw i32 %65, -1
  %67 = getelementptr [0 x i8], ptr @gSaveGroup3ListLookupValues, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp ult i8 %68, 51
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = getelementptr i8, ptr %60, i32 1
  store i8 %68, ptr %60, align 1
  %72 = getelementptr i8, ptr %60, i32 2
  store i8 %54, ptr %71, align 1
  %73 = tail call { ptr, ptr } asm "", "=r,=r,0,1"(ptr nonnull %60, ptr nonnull @gSaveGroup3PairCatalog0) #13, !srcloc !12
  %74 = extractvalue { ptr, ptr } %73, 0
  %75 = extractvalue { ptr, ptr } %73, 1
  store volatile i32 %56, ptr %2, align 4
  tail call arm_apcscc void @InsertSaveGroup3PairByFirstByte(ptr noundef %74, ptr noundef %75) #10
  br label %90

76:                                               ; preds = %64
  %77 = icmp ult i8 %68, 68
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = getelementptr i8, ptr %59, i32 1
  store i8 %68, ptr %59, align 1
  %80 = getelementptr i8, ptr %59, i32 2
  store i8 %54, ptr %79, align 1
  %81 = tail call { ptr, ptr } asm "", "=r,=r,0,1"(ptr nonnull %59, ptr nonnull @gSaveGroup3PairCatalog1) #13, !srcloc !13
  %82 = extractvalue { ptr, ptr } %81, 0
  %83 = extractvalue { ptr, ptr } %81, 1
  store volatile i32 %56, ptr %2, align 4
  tail call arm_apcscc void @InsertSaveGroup3PairByFirstByte(ptr noundef %82, ptr noundef %83) #10
  br label %90

84:                                               ; preds = %76
  %85 = getelementptr i8, ptr %58, i32 1
  store i8 %68, ptr %58, align 1
  %86 = getelementptr i8, ptr %58, i32 2
  store i8 %54, ptr %85, align 1
  %87 = tail call { ptr, ptr } asm "", "=r,=r,0,1"(ptr nonnull %58, ptr nonnull @gSaveGroup3PairCatalog2) #13, !srcloc !14
  %88 = extractvalue { ptr, ptr } %87, 0
  %89 = extractvalue { ptr, ptr } %87, 1
  store volatile i32 %56, ptr %2, align 4
  tail call arm_apcscc void @InsertSaveGroup3PairByFirstByte(ptr noundef %88, ptr noundef %89) #10
  br label %90

90:                                               ; preds = %78, %84, %70
  %91 = phi ptr [ getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), %78 ], [ getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 2), %84 ], [ @gSaveGroup3PairCounts, %70 ]
  %92 = phi ptr [ %58, %78 ], [ %86, %84 ], [ %58, %70 ]
  %93 = phi ptr [ %80, %78 ], [ %59, %84 ], [ %59, %70 ]
  %94 = phi ptr [ %60, %78 ], [ %60, %84 ], [ %72, %70 ]
  %95 = load i8, ptr %91, align 1
  %96 = add i8 %95, 1
  store i8 %96, ptr %91, align 1
  %97 = load volatile i32, ptr %2, align 4
  br label %98

98:                                               ; preds = %90, %55
  %99 = phi i32 [ %97, %90 ], [ %56, %55 ]
  %100 = phi ptr [ %92, %90 ], [ %58, %55 ]
  %101 = phi ptr [ %93, %90 ], [ %59, %55 ]
  %102 = phi ptr [ %94, %90 ], [ %60, %55 ]
  %103 = add i32 %99, 1
  %104 = and i32 %103, 255
  %105 = icmp ult i32 %104, 30
  br i1 %105, label %55, label %106

106:                                              ; preds = %98
  %107 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, ptr @gSaveGroup3PairCounts, align 1
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %110, %108
  %112 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 2), align 1
  %113 = zext i8 %112 to i32
  %114 = tail call i32 asm "", "=r,0"(i32 %113) #13, !srcloc !15
  %115 = add i32 %111, %114
  %116 = and i32 %115, 255
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 640, i32 noundef %118) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSaveGroup3SelectionRowX(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i16, ptr @gSaveGroup3SelectionRowX, i32 %4
  %6 = getelementptr i16, ptr %5, i32 -1
  %7 = load i16, ptr %6, align 2
  %8 = sext i16 %7 to i32
  %9 = shl nsw i32 %8, 16
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 3
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSaveGroup3SelectionIndicator(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = add i8 %2, -1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 1
  %8 = add i32 %7, ptrtoint (ptr @gSaveGroup3IndicatorBankX to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = shl nsw i32 %11, 16
  %13 = getelementptr [0 x i16], ptr @gSaveGroup3IndicatorGroupY, i32 0, i32 %4
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  %16 = shl nsw i32 %15, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 23, i32 noundef %12, i32 noundef %16, i32 noundef 65536) #10
  %17 = icmp ult i8 %3, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = mul nuw nsw i32 %6, 3
  %20 = add nuw nsw i32 %19, %4
  %21 = getelementptr [0 x i16], ptr @gSaveGroup3PairFlags, i32 0, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %22) #10
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %4, i32 4
  br label %26

26:                                               ; preds = %18, %1
  %27 = phi i32 [ %4, %1 ], [ %25, %18 ]
  %28 = mul nuw nsw i32 %6, 5
  %29 = add nuw nsw i32 %27, %28
  %30 = getelementptr [0 x ptr], ptr @gSaveGroup3IndicatorAnimations, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef %31) #10
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScanSaveGroup3AvailableFieldPairs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @InsertSaveGroup3PairByFirstByte(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectNextSaveGroup3MaskBit(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  %2 = load i8, ptr @gSaveGroup3Byte3D00, align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %5 = zext nneg i8 %4 to i32
  %6 = lshr i32 %3, %5
  %7 = add i8 %4, 1
  %8 = icmp eq i32 %6, 0
  %9 = select i1 %8, i8 1, i8 %7
  store i8 %9, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %10 = select i1 %8, i32 %3, i32 %6
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1, %13
  %14 = phi i8 [ %17, %13 ], [ %9, %1 ]
  %15 = phi i32 [ %19, %13 ], [ 0, %1 ]
  %16 = phi i32 [ %18, %13 ], [ %10, %1 ]
  %17 = add i8 %14, 1
  %18 = lshr i32 %16, 1
  %19 = add nuw nsw i32 %15, 1
  %20 = icmp ult i32 %15, 15
  %21 = and i32 %16, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %13, label %24

24:                                               ; preds = %13
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  br label %25

25:                                               ; preds = %24, %1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectPreviousSaveGroup3MaskBit(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = icmp ult i8 %2, 2
  %4 = add i8 %2, -1
  %5 = select i1 %3, i8 16, i8 %4
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %6 = load i8, ptr @gSaveGroup3Byte3D00, align 1
  %7 = zext i8 %6 to i32
  %8 = zext i8 %5 to i32
  %9 = sub nsw i32 16, %8
  %10 = shl nuw nsw i32 %7, %9
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i8 16, i8 %5
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %14 = select i1 %12, i32 %7, i32 %11
  %15 = icmp ult i32 %14, 32768
  br i1 %15, label %16, label %29

16:                                               ; preds = %1, %16
  %17 = phi i8 [ %20, %16 ], [ %13, %1 ]
  %18 = phi i32 [ %23, %16 ], [ 0, %1 ]
  %19 = phi i32 [ %22, %16 ], [ %14, %1 ]
  %20 = add i8 %17, -1
  %21 = shl nuw nsw i32 %19, 1
  %22 = and i32 %21, 65534
  %23 = add nuw nsw i32 %18, 1
  %24 = icmp ult i32 %18, 15
  %25 = and i32 %19, 16384
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %16, label %28

28:                                               ; preds = %16
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  br label %29

29:                                               ; preds = %28, %1
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCompareSaveGroup3MaskBits(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  %2 = load i8, ptr @gSaveGroup3Byte3D00, align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 210), align 1
  %4 = and i8 %2, -4
  %5 = zext i8 %4 to i32
  %6 = and i8 %3, -4
  %7 = zext i8 %6 to i32
  %8 = tail call { i32, i32 } asm "", "=r,=r,0,1"(i32 %5, i32 %7) #13, !srcloc !16
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = extractvalue { i32, i32 } %8, 1
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i8
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 210) to i32), i32 -114) to ptr), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRecordSaveGroup3SelectedMaskBit(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = zext i8 %2 to i32
  %4 = add nsw i32 %3, -1
  %5 = shl nuw i32 1, %4
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 210), align 1
  %7 = trunc i32 %5 to i8
  %8 = or i8 %6, %7
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 210), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSaveGroup3Records(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef 216) #10
  %3 = getelementptr i16, ptr %2, i32 54
  br label %4

4:                                                ; preds = %213, %1
  %5 = phi i32 [ 0, %1 ], [ %214, %213 ]
  %6 = phi ptr [ @gSaveGroup3Block3730, %1 ], [ %215, %213 ]
  %7 = shl nuw nsw i32 %5, 1
  %8 = add i32 %7, ptrtoint (ptr @gSaveGroup3RecordTileOffsets to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, 100724736
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %6, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %4
  %17 = getelementptr i16, ptr %13, i32 1
  store i16 -3166, ptr %13, align 2
  %18 = getelementptr i16, ptr %13, i32 2
  store i16 -3166, ptr %17, align 2
  %19 = getelementptr i16, ptr %13, i32 3
  store i16 -3166, ptr %18, align 2
  %20 = getelementptr i16, ptr %13, i32 4
  store i16 -3166, ptr %19, align 2
  %21 = getelementptr i16, ptr %13, i32 5
  store i16 -3166, ptr %20, align 2
  %22 = getelementptr i16, ptr %13, i32 6
  store i16 -3166, ptr %21, align 2
  %23 = getelementptr i16, ptr %13, i32 7
  store i16 -3166, ptr %22, align 2
  %24 = getelementptr i16, ptr %13, i32 8
  store i16 -3166, ptr %23, align 2
  store i16 -3166, ptr %24, align 2
  %25 = getelementptr i16, ptr %13, i32 32
  %26 = getelementptr i16, ptr %13, i32 33
  store i16 -3166, ptr %25, align 2
  %27 = getelementptr i16, ptr %13, i32 34
  store i16 -3166, ptr %26, align 2
  %28 = getelementptr i16, ptr %13, i32 35
  store i16 -3166, ptr %27, align 2
  %29 = getelementptr i16, ptr %13, i32 36
  store i16 -3166, ptr %28, align 2
  %30 = getelementptr i16, ptr %13, i32 37
  store i16 -3166, ptr %29, align 2
  %31 = getelementptr i16, ptr %13, i32 38
  store i16 -3166, ptr %30, align 2
  %32 = getelementptr i16, ptr %13, i32 39
  store i16 -3166, ptr %31, align 2
  %33 = getelementptr i16, ptr %13, i32 40
  store i16 -3166, ptr %32, align 2
  store i16 -3166, ptr %33, align 2
  %34 = getelementptr i16, ptr %13, i32 64
  %35 = getelementptr i16, ptr %13, i32 65
  store i16 -3166, ptr %34, align 2
  %36 = getelementptr i16, ptr %13, i32 66
  store i16 -3166, ptr %35, align 2
  %37 = getelementptr i16, ptr %13, i32 67
  store i16 -3166, ptr %36, align 2
  %38 = getelementptr i16, ptr %13, i32 68
  store i16 -3166, ptr %37, align 2
  %39 = getelementptr i16, ptr %13, i32 69
  store i16 -3166, ptr %38, align 2
  %40 = getelementptr i16, ptr %13, i32 70
  store i16 -3166, ptr %39, align 2
  %41 = getelementptr i16, ptr %13, i32 71
  store i16 -3166, ptr %40, align 2
  %42 = getelementptr i16, ptr %13, i32 72
  store i16 -3166, ptr %41, align 2
  store i16 -3166, ptr %42, align 2
  %43 = getelementptr i16, ptr %13, i32 96
  %44 = getelementptr i16, ptr %13, i32 97
  store i16 -3166, ptr %43, align 2
  %45 = getelementptr i16, ptr %13, i32 98
  store i16 -3166, ptr %44, align 2
  %46 = getelementptr i16, ptr %13, i32 99
  store i16 -3166, ptr %45, align 2
  %47 = getelementptr i16, ptr %13, i32 100
  store i16 -3166, ptr %46, align 2
  %48 = getelementptr i16, ptr %13, i32 101
  store i16 -3166, ptr %47, align 2
  %49 = getelementptr i16, ptr %13, i32 102
  store i16 -3166, ptr %48, align 2
  %50 = getelementptr i16, ptr %13, i32 103
  store i16 -3166, ptr %49, align 2
  %51 = getelementptr i16, ptr %13, i32 104
  store i16 -3166, ptr %50, align 2
  store i16 -3166, ptr %51, align 2
  %52 = getelementptr i16, ptr %13, i32 128
  %53 = getelementptr i16, ptr %13, i32 129
  store i16 -3166, ptr %52, align 2
  %54 = getelementptr i16, ptr %13, i32 130
  store i16 -3166, ptr %53, align 2
  %55 = getelementptr i16, ptr %13, i32 131
  store i16 -3166, ptr %54, align 2
  %56 = getelementptr i16, ptr %13, i32 132
  store i16 -3166, ptr %55, align 2
  %57 = getelementptr i16, ptr %13, i32 133
  store i16 -3166, ptr %56, align 2
  %58 = getelementptr i16, ptr %13, i32 134
  store i16 -3166, ptr %57, align 2
  %59 = getelementptr i16, ptr %13, i32 135
  store i16 -3166, ptr %58, align 2
  %60 = getelementptr i16, ptr %13, i32 136
  store i16 -3166, ptr %59, align 2
  store i16 -3166, ptr %60, align 2
  %61 = getelementptr i16, ptr %13, i32 160
  %62 = getelementptr i16, ptr %13, i32 161
  store i16 -3166, ptr %61, align 2
  %63 = getelementptr i16, ptr %13, i32 162
  store i16 -3166, ptr %62, align 2
  %64 = getelementptr i16, ptr %13, i32 163
  store i16 -3166, ptr %63, align 2
  %65 = getelementptr i16, ptr %13, i32 164
  store i16 -3166, ptr %64, align 2
  %66 = getelementptr i16, ptr %13, i32 165
  store i16 -3166, ptr %65, align 2
  %67 = getelementptr i16, ptr %13, i32 166
  store i16 -3166, ptr %66, align 2
  %68 = getelementptr i16, ptr %13, i32 167
  store i16 -3166, ptr %67, align 2
  %69 = getelementptr i16, ptr %13, i32 168
  store i16 -3166, ptr %68, align 2
  store i16 -3166, ptr %69, align 2
  %70 = add nuw nsw i32 %5, 1
  br label %213

71:                                               ; preds = %4
  %72 = zext i8 %14 to i32
  %73 = add nuw nsw i32 %11, 100726784
  %74 = inttoptr i32 %73 to ptr
  %75 = shl nuw nsw i32 %72, 1
  %76 = add nsw i32 %75, -2
  %77 = getelementptr [0 x ptr], ptr @gSaveGroup3RecordCompressedMaps, i32 0, i32 %76
  %78 = load ptr, ptr %77, align 4
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %78, ptr noundef %2) #10
  %79 = load i8, ptr %6, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 1
  %82 = add nsw i32 %81, -1
  %83 = getelementptr [0 x ptr], ptr @gSaveGroup3RecordCompressedMaps, i32 0, i32 %82
  %84 = load ptr, ptr %83, align 4
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %84, ptr noundef %3) #10
  %85 = trunc i32 %5 to i16
  %86 = shl nuw i16 %85, 13
  %87 = or disjoint i16 %86, 4096
  tail call arm_apcscc void @CopySaveGroup3TileMap(ptr noundef nonnull %13, ptr noundef %2, i16 noundef zeroext %87) #10
  tail call arm_apcscc void @CopySaveGroup3TileMap(ptr noundef nonnull %74, ptr noundef %3, i16 noundef zeroext %86) #10
  %88 = shl nuw nsw i32 %5, 6
  %89 = or disjoint i32 %88, 83886080
  %90 = inttoptr i32 %89 to ptr
  %91 = load i8, ptr %6, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, -1
  %94 = getelementptr [0 x ptr], ptr @gSaveGroup3RecordPalettes, i32 0, i32 %93
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i16, ptr %95, i32 1
  %97 = load i16, ptr %95, align 2
  %98 = getelementptr i16, ptr %90, i32 1
  store i16 %97, ptr %90, align 64
  %99 = getelementptr i16, ptr %95, i32 2
  %100 = load i16, ptr %96, align 2
  %101 = getelementptr i16, ptr %90, i32 2
  store i16 %100, ptr %98, align 2
  %102 = getelementptr i16, ptr %95, i32 3
  %103 = load i16, ptr %99, align 2
  %104 = getelementptr i16, ptr %90, i32 3
  store i16 %103, ptr %101, align 4
  %105 = getelementptr i16, ptr %95, i32 4
  %106 = load i16, ptr %102, align 2
  %107 = getelementptr i16, ptr %90, i32 4
  store i16 %106, ptr %104, align 2
  %108 = getelementptr i16, ptr %95, i32 5
  %109 = load i16, ptr %105, align 2
  %110 = getelementptr i16, ptr %90, i32 5
  store i16 %109, ptr %107, align 8
  %111 = getelementptr i16, ptr %95, i32 6
  %112 = load i16, ptr %108, align 2
  %113 = getelementptr i16, ptr %90, i32 6
  store i16 %112, ptr %110, align 2
  %114 = getelementptr i16, ptr %95, i32 7
  %115 = load i16, ptr %111, align 2
  %116 = getelementptr i16, ptr %90, i32 7
  store i16 %115, ptr %113, align 4
  %117 = getelementptr i16, ptr %95, i32 8
  %118 = load i16, ptr %114, align 2
  %119 = getelementptr i16, ptr %90, i32 8
  store i16 %118, ptr %116, align 2
  %120 = getelementptr i16, ptr %95, i32 9
  %121 = load i16, ptr %117, align 2
  %122 = getelementptr i16, ptr %90, i32 9
  store i16 %121, ptr %119, align 16
  %123 = getelementptr i16, ptr %95, i32 10
  %124 = load i16, ptr %120, align 2
  %125 = getelementptr i16, ptr %90, i32 10
  store i16 %124, ptr %122, align 2
  %126 = getelementptr i16, ptr %95, i32 11
  %127 = load i16, ptr %123, align 2
  %128 = getelementptr i16, ptr %90, i32 11
  store i16 %127, ptr %125, align 4
  %129 = getelementptr i16, ptr %95, i32 12
  %130 = load i16, ptr %126, align 2
  %131 = getelementptr i16, ptr %90, i32 12
  store i16 %130, ptr %128, align 2
  %132 = getelementptr i16, ptr %95, i32 13
  %133 = load i16, ptr %129, align 2
  %134 = getelementptr i16, ptr %90, i32 13
  store i16 %133, ptr %131, align 8
  %135 = getelementptr i16, ptr %95, i32 14
  %136 = load i16, ptr %132, align 2
  %137 = getelementptr i16, ptr %90, i32 14
  store i16 %136, ptr %134, align 2
  %138 = getelementptr i16, ptr %95, i32 15
  %139 = load i16, ptr %135, align 2
  %140 = getelementptr i16, ptr %90, i32 15
  store i16 %139, ptr %137, align 4
  %141 = getelementptr i16, ptr %95, i32 16
  %142 = load i16, ptr %138, align 2
  %143 = getelementptr i16, ptr %90, i32 16
  store i16 %142, ptr %140, align 2
  %144 = getelementptr i16, ptr %95, i32 17
  %145 = load i16, ptr %141, align 2
  %146 = getelementptr i16, ptr %90, i32 17
  store i16 %145, ptr %143, align 32
  %147 = getelementptr i16, ptr %95, i32 18
  %148 = load i16, ptr %144, align 2
  %149 = getelementptr i16, ptr %90, i32 18
  store i16 %148, ptr %146, align 2
  %150 = getelementptr i16, ptr %95, i32 19
  %151 = load i16, ptr %147, align 2
  %152 = getelementptr i16, ptr %90, i32 19
  store i16 %151, ptr %149, align 4
  %153 = getelementptr i16, ptr %95, i32 20
  %154 = load i16, ptr %150, align 2
  %155 = getelementptr i16, ptr %90, i32 20
  store i16 %154, ptr %152, align 2
  %156 = getelementptr i16, ptr %95, i32 21
  %157 = load i16, ptr %153, align 2
  %158 = getelementptr i16, ptr %90, i32 21
  store i16 %157, ptr %155, align 8
  %159 = getelementptr i16, ptr %95, i32 22
  %160 = load i16, ptr %156, align 2
  %161 = getelementptr i16, ptr %90, i32 22
  store i16 %160, ptr %158, align 2
  %162 = getelementptr i16, ptr %95, i32 23
  %163 = load i16, ptr %159, align 2
  %164 = getelementptr i16, ptr %90, i32 23
  store i16 %163, ptr %161, align 4
  %165 = getelementptr i16, ptr %95, i32 24
  %166 = load i16, ptr %162, align 2
  %167 = getelementptr i16, ptr %90, i32 24
  store i16 %166, ptr %164, align 2
  %168 = getelementptr i16, ptr %95, i32 25
  %169 = load i16, ptr %165, align 2
  %170 = getelementptr i16, ptr %90, i32 25
  store i16 %169, ptr %167, align 16
  %171 = getelementptr i16, ptr %95, i32 26
  %172 = load i16, ptr %168, align 2
  %173 = getelementptr i16, ptr %90, i32 26
  store i16 %172, ptr %170, align 2
  %174 = getelementptr i16, ptr %95, i32 27
  %175 = load i16, ptr %171, align 2
  %176 = getelementptr i16, ptr %90, i32 27
  store i16 %175, ptr %173, align 4
  %177 = getelementptr i16, ptr %95, i32 28
  %178 = load i16, ptr %174, align 2
  %179 = getelementptr i16, ptr %90, i32 28
  store i16 %178, ptr %176, align 2
  %180 = getelementptr i16, ptr %95, i32 29
  %181 = load i16, ptr %177, align 2
  %182 = getelementptr i16, ptr %90, i32 29
  store i16 %181, ptr %179, align 8
  %183 = getelementptr i16, ptr %95, i32 30
  %184 = load i16, ptr %180, align 2
  %185 = getelementptr i16, ptr %90, i32 30
  store i16 %184, ptr %182, align 2
  %186 = getelementptr i16, ptr %95, i32 31
  %187 = load i16, ptr %183, align 2
  %188 = getelementptr i16, ptr %90, i32 31
  store i16 %187, ptr %185, align 4
  %189 = load i16, ptr %186, align 2
  store i16 %189, ptr %188, align 2
  %190 = add nuw nsw i32 %5, 1
  %191 = icmp ult i32 %5, 3
  %192 = xor i32 %5, 2
  %193 = select i1 %191, i32 %190, i32 %192
  %194 = and i32 %193, 3
  %195 = mul nuw nsw i32 %194, 5242880
  %196 = add nsw i32 %195, -4980736
  %197 = and i32 %190, 4
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i32 32, i32 88
  %200 = trunc i32 %5 to i8
  %201 = add nuw nsw i8 %200, 25
  %202 = zext nneg i8 %201 to i32
  tail call void asm sideeffect "", "r"(i32 %202) #12, !srcloc !17
  %203 = ashr exact i32 %196, 16
  %204 = load i8, ptr %6, align 1
  %205 = zext i8 %204 to i32
  %206 = add nsw i32 %205, -1
  %207 = getelementptr [0 x ptr], ptr @gSaveGroup3RecordAnimations, i32 0, i32 %206
  %208 = load ptr, ptr %207, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %201, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %203, i32 noundef %199, i32 noundef 0, ptr noundef %208) #10
  %209 = add nuw nsw i8 %200, 19
  %210 = add nsw i32 %195, -2883584
  %211 = ashr exact i32 %210, 16
  %212 = add nuw nsw i32 %199, 25
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %209, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %211, i32 noundef %212, i32 noundef 1, ptr noundef nonnull @gSaveGroup3RecordMarkerAnimation) #10
  br label %213

213:                                              ; preds = %16, %71
  %214 = phi i32 [ %190, %71 ], [ %70, %16 ]
  %215 = getelementptr i8, ptr %6, i32 16
  %216 = icmp ult i32 %214, 6
  br i1 %216, label %4, label %217

217:                                              ; preds = %213
  %218 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %2) #10
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosLZ77VRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @CopySaveGroup3TileMap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPositionSaveGroup3RecordCursor(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %3 = zext i8 %2 to i32
  %4 = icmp ult i8 %2, 3
  %5 = select i1 %4, i32 1, i32 2
  %6 = add nuw nsw i32 %5, %3
  %7 = tail call i32 asm "", "={r2},{r2}"(i32 %3) #13, !srcloc !18
  %8 = and i32 %6, 3
  %9 = mul nuw nsw i32 %8, 80
  %10 = add nsw i32 %9, -78
  %11 = add i32 %7, 1
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 29, i32 85
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 18, i32 noundef %10, i32 noundef %14, i32 noundef 0) #10
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadSaveGroup3RecordValue(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 2
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %9
  %11 = load i8, ptr %0, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %16, %12
  %18 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 4
  %22 = getelementptr i8, ptr @gSaveGroup3Block3730, i32 %21
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %10, align 1
  ret i32 4
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableSaveGroup3Blend(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @DisableBlend() #10
  ret i32 0
}

declare dso_local arm_apcscc void @DisableBlend() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCaptureSaveGroup3SelectedRecord(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %8
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr @gSaveGroup3Byte379C, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = getelementptr i8, ptr @gSaveGroup3Block3730, i32 %12
  %14 = getelementptr i8, ptr %0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or disjoint i32 %20, %16
  %22 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %21
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %13, align 1
  %24 = load i8, ptr @gSaveGroup3SelectedPairIndices, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 1
  %27 = getelementptr i8, ptr @gSaveGroup3PairCatalog0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr i8, ptr %13, i32 1
  store i8 %28, ptr %29, align 1
  %30 = or disjoint i32 %26, 1
  %31 = getelementptr i8, ptr @gSaveGroup3PairCatalog0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr i8, ptr %13, i32 2
  store i8 %32, ptr %33, align 1
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 1), align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = getelementptr i8, ptr @gSaveGroup3PairCatalog1, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr i8, ptr %13, i32 3
  store i8 %38, ptr %39, align 1
  %40 = or disjoint i32 %36, 1
  %41 = getelementptr i8, ptr @gSaveGroup3PairCatalog1, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr i8, ptr %13, i32 4
  store i8 %42, ptr %43, align 1
  %44 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 2), align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 1
  %47 = getelementptr i8, ptr @gSaveGroup3PairCatalog2, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr i8, ptr %13, i32 5
  store i8 %48, ptr %49, align 1
  %50 = or disjoint i32 %46, 1
  %51 = getelementptr i8, ptr @gSaveGroup3PairCatalog2, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr i8, ptr %13, i32 6
  store i8 %52, ptr %53, align 1
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 3), align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 1
  %57 = getelementptr i8, ptr @gSaveGroup3PairCatalog0, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr i8, ptr %13, i32 7
  store i8 %58, ptr %59, align 1
  %60 = or disjoint i32 %56, 1
  %61 = getelementptr i8, ptr @gSaveGroup3PairCatalog0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %13, i32 8
  store i8 %62, ptr %63, align 1
  %64 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 4), align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 1
  %67 = getelementptr i8, ptr @gSaveGroup3PairCatalog1, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr i8, ptr %13, i32 9
  store i8 %68, ptr %69, align 1
  %70 = or disjoint i32 %66, 1
  %71 = getelementptr i8, ptr @gSaveGroup3PairCatalog1, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %13, i32 10
  store i8 %72, ptr %73, align 1
  %74 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3SelectedPairIndices, i32 0, i32 5), align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 1
  %77 = getelementptr i8, ptr @gSaveGroup3PairCatalog2, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr i8, ptr %13, i32 11
  store i8 %78, ptr %79, align 1
  %80 = or disjoint i32 %76, 1
  %81 = getelementptr i8, ptr @gSaveGroup3PairCatalog2, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %13, i32 12
  store i8 %82, ptr %83, align 1
  ret i32 4
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetSaveGroup3BackgroundLayers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  tail call arm_apcscc void @ResetBackgroundLayers(i8 noundef zeroext %2) #10
  ret i32 1
}

declare dso_local arm_apcscc void @ResetBackgroundLayers(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareSaveGroup3PairText(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = add i8 %2, -1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr @gSaveGroup3TextCountOffsets, i32 %3
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i8 [ %15, %8 ], [ %4, %6 ]
  %10 = phi i8 [ %14, %8 ], [ 0, %6 ]
  %11 = phi ptr [ %12, %8 ], [ %7, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -1
  %13 = load i8, ptr %11, align 1
  %14 = add i8 %13, %10
  %15 = add i8 %9, -1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %8
  %18 = zext i8 %14 to i32
  %19 = icmp ult i8 %2, 31
  br i1 %19, label %20, label %29

20:                                               ; preds = %1, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %1 ]
  %22 = getelementptr ptr, ptr @gSaveGroup3PairTextSources, i32 %3
  %23 = getelementptr ptr, ptr %22, i32 -1
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call { i32, ptr } asm "", "=r,={r8},0,{r8}"(i32 %25, ptr nonnull @gTaskTextVariables2BB0) #13, !srcloc !19
  %27 = extractvalue { i32, ptr } %26, 0
  %28 = extractvalue { i32, ptr } %26, 1
  store i32 %27, ptr %28, align 4
  br label %85

29:                                               ; preds = %17
  %30 = getelementptr ptr, ptr @gSaveGroup3PairTextSources, i32 %3
  %31 = getelementptr ptr, ptr %30, i32 -1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, @gDefaultTaskContextScript
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr ptr, ptr %32, i32 %36
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi ptr [ %38, %34 ], [ @gDefaultTaskContextScript, %29 ]
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %39, %73
  %44 = phi i8 [ %74, %73 ], [ %41, %39 ]
  %45 = phi i32 [ %70, %73 ], [ 0, %39 ]
  %46 = phi i32 [ %66, %73 ], [ 0, %39 ]
  %47 = phi ptr [ %48, %73 ], [ %40, %39 ]
  %48 = getelementptr i8, ptr %47, i32 1
  %49 = icmp eq i8 %44, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %52 = icmp eq i8 %51, 3
  br i1 %52, label %60, label %64

53:                                               ; preds = %43
  %54 = icmp eq i32 %46, 0
  %55 = add i8 %44, -97
  %56 = icmp ult i8 %55, 49
  %57 = and i1 %56, %54
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = add i8 %44, -85
  br label %64

60:                                               ; preds = %50, %53
  %61 = add i8 %44, -12
  %62 = icmp ult i8 %61, 49
  %63 = select i1 %62, i32 1, i32 %46
  br label %64

64:                                               ; preds = %60, %50, %58
  %65 = phi i8 [ %59, %58 ], [ 1, %50 ], [ %44, %60 ]
  %66 = phi i32 [ 1, %58 ], [ 0, %50 ], [ %63, %60 ]
  %67 = and i32 %45, 255
  %68 = add i32 %67, ptrtoint (ptr @gSaveGroup3PairTextBuffer to i32)
  %69 = inttoptr i32 %68 to ptr
  store i8 %65, ptr %69, align 1
  %70 = add nuw nsw i32 %67, 1
  %71 = and i32 %70, 255
  %72 = icmp ugt i32 %71, 31
  br i1 %72, label %81, label %73

73:                                               ; preds = %64
  %74 = load i8, ptr %48, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %43

76:                                               ; preds = %73
  %77 = add i32 %71, ptrtoint (ptr @gSaveGroup3PairTextBuffer to i32)
  %78 = inttoptr i32 %77 to ptr
  br label %79

79:                                               ; preds = %39, %76
  %80 = phi ptr [ %78, %76 ], [ @gSaveGroup3PairTextBuffer, %39 ]
  store i8 0, ptr %80, align 1
  br label %81

81:                                               ; preds = %64, %79
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairTextBuffer, i32 0, i32 31), align 1
  %82 = tail call { i32, ptr } asm "", "=r,={r8},0,{r8}"(i32 ptrtoint (ptr @gSaveGroup3CopiedTextScript to i32), ptr nonnull @gTaskTextVariables2BB0) #13, !srcloc !20
  %83 = extractvalue { i32, ptr } %82, 0
  %84 = extractvalue { i32, ptr } %82, 1
  store i32 %83, ptr %84, align 4
  br label %85

85:                                               ; preds = %81, %20
  %86 = phi i32 [ %21, %20 ], [ %18, %81 ]
  %87 = phi ptr [ %28, %20 ], [ %84, %81 ]
  %88 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %89 = zext i8 %88 to i32
  %90 = getelementptr i8, ptr @gSaveGroup3VariationTextIndices, i32 %86
  %91 = getelementptr i8, ptr %90, i32 %89
  %92 = getelementptr i8, ptr %91, i32 -1
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = getelementptr ptr, ptr @gSaveGroup3VariationTextSources, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = ptrtoint ptr %96 to i32
  %98 = tail call { i32, ptr } asm "", "=r,={r8},0,{r8}"(i32 %97, ptr nonnull %87) #13, !srcloc !21
  %99 = extractvalue { i32, ptr } %98, 0
  %100 = extractvalue { i32, ptr } %98, 1
  %101 = getelementptr i32, ptr %100, i32 1
  store i32 %99, ptr %101, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectSaveGroup3PairCount(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gSaveGroup3PairCounts, i32 %3
  %5 = getelementptr i8, ptr %4, i32 -1
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateSaveGroup3CompletedFieldMask(ptr nocapture noundef readnone %0) local_unnamed_addr #9 {
  %2 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull @gSaveGroup3Block1EE40) #13, !srcloc !22
  %3 = tail call i32 asm "", "={r1},{r1}"(i32 60) #13, !srcloc !23
  %4 = add i32 %3, ptrtoint (ptr @gSaveGroup3Block3C50 to i32)
  %5 = inttoptr i32 %4 to ptr
  br label %6

6:                                                ; preds = %170, %1
  %7 = phi ptr [ %5, %1 ], [ %172, %170 ]
  %8 = phi i32 [ 0, %1 ], [ %174, %170 ]
  %9 = phi i32 [ 0, %1 ], [ %171, %170 ]
  %10 = phi ptr [ @gSaveGroup3Block3C50, %1 ], [ %173, %170 ]
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 3
  %13 = load i8, ptr %10, align 1
  %14 = zext i8 %13 to i32
  br i1 %12, label %15, label %76

15:                                               ; preds = %6
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 9), align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %17, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, -1
  %23 = and i32 %22, %14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %170, label %25

25:                                               ; preds = %15
  %26 = getelementptr i8, ptr %10, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 10), align 1
  %30 = zext i8 %29 to i32
  %31 = add i32 %30, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = xor i32 %34, -1
  %36 = and i32 %35, %28
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %170, label %38

38:                                               ; preds = %25
  %39 = getelementptr i8, ptr %10, i32 8
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 11), align 1
  %43 = zext i8 %42 to i32
  %44 = add i32 %43, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, -1
  %49 = and i32 %48, %41
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %170, label %51

51:                                               ; preds = %38
  %52 = load i8, ptr %7, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 24), align 1
  %55 = zext i8 %54 to i32
  %56 = add i32 %55, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %57 = inttoptr i32 %56 to ptr
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, -1
  %61 = and i32 %60, %53
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %170, label %63

63:                                               ; preds = %51
  %64 = getelementptr i8, ptr %7, i32 8
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3DefaultIndices, i32 0, i32 26), align 1
  %68 = zext i8 %67 to i32
  %69 = add i32 %68, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %70 = inttoptr i32 %69 to ptr
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = xor i32 %72, -1
  %74 = and i32 %73, %66
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %170, label %165

76:                                               ; preds = %6
  %77 = mul nuw nsw i32 %11, 3
  %78 = add i32 %77, ptrtoint (ptr @gSaveGroup3DefaultIndices to i32)
  %79 = inttoptr i32 %78 to ptr
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add i32 %81, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %83 = inttoptr i32 %82 to ptr
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = xor i32 %85, -1
  %87 = and i32 %86, %14
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %170, label %89

89:                                               ; preds = %76
  %90 = getelementptr i8, ptr %10, i32 4
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add i32 %77, add (i32 ptrtoint (ptr @gSaveGroup3DefaultIndices to i32), i32 1)
  %94 = inttoptr i32 %93 to ptr
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add i32 %96, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %98 = inttoptr i32 %97 to ptr
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = xor i32 %100, -1
  %102 = and i32 %101, %92
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %170, label %104

104:                                              ; preds = %89
  %105 = getelementptr i8, ptr %10, i32 8
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add i32 %77, add (i32 ptrtoint (ptr @gSaveGroup3DefaultIndices to i32), i32 2)
  %109 = inttoptr i32 %108 to ptr
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = add i32 %111, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %113 = inttoptr i32 %112 to ptr
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = xor i32 %115, -1
  %117 = and i32 %116, %107
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %170, label %119

119:                                              ; preds = %104
  %120 = load i8, ptr %7, align 1
  %121 = zext i8 %120 to i32
  %122 = add i32 %77, add (i32 ptrtoint (ptr @gSaveGroup3DefaultIndices to i32), i32 15)
  %123 = inttoptr i32 %122 to ptr
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add i32 %125, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %127 = inttoptr i32 %126 to ptr
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = xor i32 %129, -1
  %131 = and i32 %130, %121
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %170, label %133

133:                                              ; preds = %119
  %134 = getelementptr i8, ptr %7, i32 4
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = add i32 %77, add (i32 ptrtoint (ptr @gSaveGroup3DefaultIndices to i32), i32 16)
  %138 = inttoptr i32 %137 to ptr
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = add i32 %140, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %142 = inttoptr i32 %141 to ptr
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = xor i32 %144, -1
  %146 = and i32 %145, %136
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %133
  %149 = getelementptr i8, ptr %7, i32 8
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = add i32 %77, add (i32 ptrtoint (ptr @gSaveGroup3DefaultIndices to i32), i32 17)
  %153 = inttoptr i32 %152 to ptr
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add i32 %155, ptrtoint (ptr @gSaveGroup3DefaultValues to i32)
  %157 = inttoptr i32 %156 to ptr
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = xor i32 %159, -1
  %161 = and i32 %160, %151
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %148
  %164 = getelementptr [0 x i8], ptr @gSaveGroup3CompletedFieldMaskBits, i32 0, i32 %11
  br label %165

165:                                              ; preds = %63, %163
  %166 = phi ptr [ %164, %163 ], [ getelementptr ([0 x i8], ptr @gSaveGroup3CompletedFieldMaskBits, i32 0, i32 3), %63 ]
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %9, %168
  br label %170

170:                                              ; preds = %165, %63, %51, %38, %25, %15, %76, %89, %104, %119, %133, %148
  %171 = phi i32 [ %9, %15 ], [ %9, %25 ], [ %9, %38 ], [ %9, %51 ], [ %9, %63 ], [ %9, %148 ], [ %9, %133 ], [ %9, %119 ], [ %9, %104 ], [ %9, %89 ], [ %9, %76 ], [ %169, %165 ]
  %172 = getelementptr i8, ptr %7, i32 12
  %173 = getelementptr i8, ptr %10, i32 12
  %174 = add nuw nsw i32 %11, 1
  %175 = and i32 %174, 255
  %176 = icmp ult i32 %175, 5
  br i1 %176, label %6, label %177

177:                                              ; preds = %170
  %178 = load i8, ptr %2, align 1
  %179 = icmp eq i8 %178, 2
  br i1 %179, label %192, label %180

180:                                              ; preds = %177
  %181 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull %2) #13, !srcloc !24
  %182 = ptrtoint ptr %181 to i32
  br label %189

183:                                              ; preds = %189
  %184 = add nuw nsw i32 %190, 1
  %185 = add i32 %184, %182
  %186 = inttoptr i32 %185 to ptr
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, 2
  br i1 %188, label %192, label %189

189:                                              ; preds = %180, %183
  %190 = phi i32 [ 0, %180 ], [ %184, %183 ]
  %191 = icmp eq i32 %190, 31
  br i1 %191, label %195, label %183

192:                                              ; preds = %183, %177
  %193 = and i32 %171, 127
  %194 = or disjoint i32 %193, 128
  br label %195

195:                                              ; preds = %189, %192
  %196 = phi i32 [ %194, %192 ], [ %171, %189 ]
  %197 = load i8, ptr @gSaveGroup3Byte3D00, align 1
  %198 = zext i8 %197 to i32
  %199 = xor i32 %198, -1
  %200 = and i32 %196, %199
  %201 = trunc i32 %200 to i8
  store i8 %201, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %202 = or i8 %197, %201
  store i8 %202, ptr @gSaveGroup3Byte3D00, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSaveGroup3SelectedPairs(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 3
  %5 = getelementptr i8, ptr @gSaveGroup3SelectedPairIndices, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = getelementptr [0 x i8], ptr @gSaveGroup3PairCatalog0, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr i8, ptr %5, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 1
  %15 = getelementptr [0 x i8], ptr @gSaveGroup3PairCatalog1, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp ne i8 %16, -1
  %18 = getelementptr i8, ptr %5, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 1
  %22 = getelementptr [0 x i8], ptr @gSaveGroup3PairCatalog2, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, %10
  %25 = icmp ne i8 %24, -1
  %26 = select i1 %17, i1 true, i1 %25
  %27 = zext i1 %26 to i8
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 5753}
!5 = !{i64 9247}
!6 = !{i64 10850}
!7 = !{i64 11424}
!8 = !{i64 13331}
!9 = !{i64 14193}
!10 = !{i64 23633}
!11 = !{i64 24342}
!12 = !{i64 24833}
!13 = !{i64 25288}
!14 = !{i64 25723}
!15 = !{i64 26321}
!16 = !{i64 28087}
!17 = !{i64 31163}
!18 = !{i64 32172}
!19 = !{i64 35045}
!20 = !{i64 36569}
!21 = !{i64 36819}
!22 = !{i64 37780}
!23 = !{i64 37943}
!24 = !{i64 43876}
