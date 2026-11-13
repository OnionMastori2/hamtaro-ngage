; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.GameCounterDescriptor = type { ptr, i8, i8, [6 x i8], ptr, ptr }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RecordSelectionMarkerCoordinates = type { i8, i8, i8, i8 }
%struct.SaveGroup3ListDescriptor = type { ptr, i8, i8, i8, i8, [2 x i8], [3 x i16], ptr, ptr }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gSaveGroup01Block1CC20 = external dso_local global [0 x i8], align 1
@gGameCounterDescriptorsD0D8 = external dso_local constant [0 x %struct.GameCounterDescriptor], align 4
@gGameCounterDisplayBuffer = external dso_local global [0 x i8], align 1
@gRecordSelectionAnimation088F9994 = external dso_local constant [0 x i8], align 1
@gTaskTextLeadingDigitDefaultAnimation = external dso_local constant [0 x i8], align 1
@gRecordSelectionTextTiles4C36 = external dso_local global [0 x i16], align 2
@gTaskTextPairContexts = external dso_local global [0 x ptr], align 4
@gRecordSelectionTextBundles7FAC = external dso_local constant [0 x [5 x ptr]], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4
@gRasterScanlineValue = external dso_local global i16, align 2
@gRecordSelectionMarkerCoordinates7F94 = external dso_local constant [0 x %struct.RecordSelectionMarkerCoordinates], align 1
@gRecordSelectionAnimation088F9BC3 = external dso_local constant [0 x i8], align 1
@gRecordSelectionMarkerAnimations7F7C = external dso_local constant [0 x ptr], align 4
@gRecordSelectionAnimation088F9BEA = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9A9D = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9B37 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9A50 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9AEA = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9A03 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9B84 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F98D0 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9905 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F993D = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F994A = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9C08 = external dso_local constant [0 x i8], align 1
@gRecordSelectionBackground088FA2E4 = external dso_local constant [0 x i8], align 1
@gRecordSelectionBackground088FA2F3 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F98DD = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F990D = external dso_local constant [0 x i8], align 1
@gRecordSelectionBackground088FA2C6 = external dso_local constant [0 x i8], align 1
@gRecordSelectionBackground088FA2D5 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F98F1 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9921 = external dso_local constant [0 x i8], align 1
@gRecordSelectionDigitAnimations7F54 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gRecordSelectionAnimation088F9984 = external dso_local constant [0 x i8], align 1
@gRecordSelectionBackground088FA302 = external dso_local constant [0 x i8], align 1
@gRecordSelectionRows7DEC = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gRecordSelectionAnimation088F9C60 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9C90 = external dso_local constant [0 x i8], align 1
@gRecordSelectionForwardRows7E64 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gRecordSelectionAnimation088F9C68 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9C98 = external dso_local constant [0 x i8], align 1
@gRecordSelectionBackwardRows7EDC = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gRecordSelectionAnimation088F9C7C = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088F9CAC = external dso_local constant [0 x i8], align 1
@gRecordSelectionHighlightAnimations8204 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gRecordSelectionAnimation088FA30C = external dso_local constant [0 x i8], align 1
@gSaveGroup3Block1EE40 = external dso_local global [0 x i8], align 1
@gSaveGroup3ListDescriptors = external dso_local constant [0 x %struct.SaveGroup3ListDescriptor], align 4
@gSaveGroup3ListCursorAnimation = external dso_local constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeRecordSelectionFromControl(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 138), align 1
  %3 = icmp eq i8 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %10

5:                                                ; preds = %1
  %6 = add i8 %2, -1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 384) to ptr), align 1
  %7 = icmp ult i8 %2, 26
  %8 = add i8 %2, -25
  %9 = select i1 %7, i8 0, i8 %8
  br label %10

10:                                               ; preds = %5, %4
  %11 = phi i8 [ %9, %5 ], [ 0, %4 ]
  %12 = phi i8 [ 1, %5 ], [ 0, %4 ]
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackLoadRecordSelectionDetail(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i16
  %4 = add nuw nsw i16 %3, 1
  store i16 %4, ptr @gScriptResult, align 2
  %5 = zext i8 %2 to i32
  %6 = add nuw nsw i32 %5, 1
  %7 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = mul nuw nsw i32 %6, 20
  %12 = add i32 %11, add (i32 ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32), i32 12)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %14, ptr noundef nonnull @gGameCounterDisplayBuffer, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #5
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %16 = zext i8 %15 to i32
  %17 = mul nuw nsw i32 %16, 20
  %18 = add i32 %17, add (i32 ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32), i32 36)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %20, ptr noundef inttoptr (i32 sub (i32 ptrtoint (ptr @gGameCounterDisplayBuffer to i32), i32 4096) to ptr)) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 10, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @gRecordSelectionAnimation088F9994) #5
  br label %22

21:                                               ; preds = %1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 10, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @gTaskTextLeadingDigitDefaultAnimation) #5
  br label %22

22:                                               ; preds = %21, %10
  %23 = phi i8 [ 3, %21 ], [ 0, %10 ]
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 9, i8 noundef zeroext %23) #5
  ret i32 0
}

declare dso_local arm_apcscc void @DecompressStridedRows(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCreateRecordSelectionText(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  store i16 0, ptr @gScriptResult, align 2
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 1
  %5 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, -1
  br i1 %7, label %89, label %8

8:                                                ; preds = %1
  store i16 1, ptr @gScriptResult, align 2
  tail call void asm sideeffect "", "r"(i32 709) #6, !srcloc !4
  store i16 709, ptr @gRecordSelectionTextTiles4C36, align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 32), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 1), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 33), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 2), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 34), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 3), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 35), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 4), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 36), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 5), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 37), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 6), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 38), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 7), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 39), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 8), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 40), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 9), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 41), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 10), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 42), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 11), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 43), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 12), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 44), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 13), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 45), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 14), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 46), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 15), align 2
  store i16 709, ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 47), align 2
  store i16 709, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 64), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 2), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 66), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 4), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 68), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 6), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 70), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 8), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 72), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 10), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 74), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 12), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 76), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 14), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 78), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 16), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 80), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 18), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 82), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 20), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 84), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 22), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 86), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 24), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 88), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 26), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 90), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 28), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 92), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 30), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 128) to ptr), i32 94), align 2
  store i16 709, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 64), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 2), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 66), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 4), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 68), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 6), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 70), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 8), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 72), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 10), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 74), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 12), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 76), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 14), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 78), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 16), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 80), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 18), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 82), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 20), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 84), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 22), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 86), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 24), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 88), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 26), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 90), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 28), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 92), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 30), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 256) to ptr), i32 94), align 2
  store i16 709, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 64), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 2), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 66), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 4), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 68), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 6), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 70), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 8), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 72), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 10), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 74), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 12), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 76), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 14), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 78), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 16), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 80), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 18), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 82), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 20), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 84), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 22), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 86), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 24), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 88), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 26), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 90), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 28), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 92), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 30), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 384) to ptr), i32 94), align 2
  store i16 709, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 64), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 2), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 66), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 4), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 68), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 6), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 70), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 8), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 72), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 10), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 74), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 12), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 76), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 14), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 78), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 16), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 80), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 18), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 82), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 20), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 84), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 22), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 86), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 24), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 88), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 26), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 90), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 28), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 92), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 30), align 2
  store i16 709, ptr getelementptr (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRecordSelectionTextTiles4C36 to i32), i32 512) to ptr), i32 94), align 2
  tail call void asm sideeffect "", "r"(i32 15) #6, !srcloc !5
  %9 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %9, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %9, i32 noundef 15, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100685824, i32 noundef ptrtoint (ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 1) to i32)) #5
  %10 = load ptr, ptr @gTaskTextPairContexts, align 4
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %12, 20
  %14 = add i32 %13, ptrtoint (ptr @gRecordSelectionTextBundles7FAC to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @gDefaultTaskContextScript
  br i1 %17, label %23, label %18

18:                                               ; preds = %8
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr ptr, ptr %16, i32 %20
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %8, %18
  %24 = phi ptr [ %22, %18 ], [ @gDefaultTaskContextScript, %8 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %10, ptr noundef %24) #5
  tail call void asm sideeffect "", "r"(i32 15) #6, !srcloc !5
  %25 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %25, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 4) to ptr), align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %25, i32 noundef 15, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100686848, i32 noundef add (i32 ptrtoint (ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 1) to i32), i32 128)) #5
  %26 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 4) to ptr), align 4
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %28, 20
  %30 = add i32 %29, add (i32 ptrtoint (ptr @gRecordSelectionTextBundles7FAC to i32), i32 4)
  %31 = inttoptr i32 %30 to ptr
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, @gDefaultTaskContextScript
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr ptr, ptr %32, i32 %36
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %34, %23
  %40 = phi ptr [ %38, %34 ], [ @gDefaultTaskContextScript, %23 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %26, ptr noundef %40) #5
  tail call void asm sideeffect "", "r"(i32 15) #6, !srcloc !5
  %41 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %41, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 8) to ptr), align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %41, i32 noundef 15, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100687872, i32 noundef add (i32 ptrtoint (ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 1) to i32), i32 256)) #5
  %42 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 8) to ptr), align 4
  %43 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, 20
  %46 = add i32 %45, add (i32 ptrtoint (ptr @gRecordSelectionTextBundles7FAC to i32), i32 8)
  %47 = inttoptr i32 %46 to ptr
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, @gDefaultTaskContextScript
  br i1 %49, label %55, label %50

50:                                               ; preds = %39
  %51 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr ptr, ptr %48, i32 %52
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %50, %39
  %56 = phi ptr [ %54, %50 ], [ @gDefaultTaskContextScript, %39 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %42, ptr noundef %56) #5
  tail call void asm sideeffect "", "r"(i32 15) #6, !srcloc !5
  %57 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %57, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 12) to ptr), align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %57, i32 noundef 15, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100688896, i32 noundef add (i32 ptrtoint (ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 1) to i32), i32 384)) #5
  %58 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 12) to ptr), align 4
  %59 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %60 = zext i8 %59 to i32
  %61 = mul nuw nsw i32 %60, 20
  %62 = add i32 %61, add (i32 ptrtoint (ptr @gRecordSelectionTextBundles7FAC to i32), i32 12)
  %63 = inttoptr i32 %62 to ptr
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, @gDefaultTaskContextScript
  br i1 %65, label %71, label %66

66:                                               ; preds = %55
  %67 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr ptr, ptr %64, i32 %68
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %66, %55
  %72 = phi ptr [ %70, %66 ], [ @gDefaultTaskContextScript, %55 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %58, ptr noundef %72) #5
  tail call void asm sideeffect "", "r"(i32 15) #6, !srcloc !5
  %73 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %73, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 16) to ptr), align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %73, i32 noundef 15, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100689920, i32 noundef add (i32 ptrtoint (ptr getelementptr ([0 x i16], ptr @gRecordSelectionTextTiles4C36, i32 0, i32 1) to i32), i32 512)) #5
  %74 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 16) to ptr), align 4
  %75 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %76 = zext i8 %75 to i32
  %77 = mul nuw nsw i32 %76, 20
  %78 = add i32 %77, add (i32 ptrtoint (ptr @gRecordSelectionTextBundles7FAC to i32), i32 16)
  %79 = inttoptr i32 %78 to ptr
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, @gDefaultTaskContextScript
  br i1 %81, label %87, label %82

82:                                               ; preds = %71
  %83 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr ptr, ptr %80, i32 %84
  %86 = load ptr, ptr %85, align 4
  br label %87

87:                                               ; preds = %82, %71
  %88 = phi ptr [ %86, %82 ], [ @gDefaultTaskContextScript, %71 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %74, ptr noundef %88) #5
  br label %89

89:                                               ; preds = %87, %1
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveRecordSelectionText(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 1
  %5 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 16) to ptr), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %9) #5
  %10 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 12) to ptr), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %10) #5
  %11 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 8) to ptr), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %11) #5
  %12 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskTextPairContexts to i32), i32 4) to ptr), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %12) #5
  %13 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %13) #5
  br label %14

14:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureRecordSelectionWindow(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %3 = or i16 %2, 32512
  store i16 %3, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %4 = load i32, ptr @gVideoState, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr @gVideoState, align 4
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i16 3099, i16 6924
  store volatile i16 %8, ptr inttoptr (i32 67108936 to ptr), align 8
  store volatile i16 31, ptr inttoptr (i32 67108938 to ptr), align 2
  store volatile i16 20704, ptr inttoptr (i32 67108928 to ptr), align 64
  store volatile i16 160, ptr inttoptr (i32 67108932 to ptr), align 4
  store volatile i16 20704, ptr inttoptr (i32 67108930 to ptr), align 2
  store volatile i16 160, ptr inttoptr (i32 67108934 to ptr), align 2
  store i16 20704, ptr @gRasterScanlineValue, align 2
  store volatile i32 ptrtoint (ptr @gRasterScanlineValue to i32), ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 67108928, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i16 1, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i16 -27840, ptr inttoptr (i32 67109050 to ptr), align 2
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdvanceRecordSelectionWindow(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "r"(i32 1024) #6, !srcloc !6
  %2 = load i16, ptr @gRasterScanlineValue, align 2
  %3 = add i16 %2, 1024
  store i16 %3, ptr @gRasterScanlineValue, align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %4 = icmp ugt i16 %3, -8193
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureRecordSelectionMarkers(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 13, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #5
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 1
  %5 = getelementptr [0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 %4, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %38
  %9 = phi i32 [ %7, %1 ], [ %39, %38 ]
  %10 = phi i32 [ 0, %1 ], [ %40, %38 ]
  %11 = and i32 %9, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %8
  %14 = trunc i32 %10 to i8
  %15 = add nuw nsw i8 %14, 10
  %16 = zext nneg i8 %15 to i32
  tail call void asm sideeffect "", "r"(i32 %16) #6, !srcloc !7
  %17 = shl nuw nsw i32 %10, 2
  %18 = add i32 %17, ptrtoint (ptr @gRecordSelectionMarkerCoordinates7F94 to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add i32 %17, ptrtoint (ptr getelementptr inbounds ([0 x %struct.RecordSelectionMarkerCoordinates], ptr @gRecordSelectionMarkerCoordinates7F94, i32 0, i32 0, i32 1) to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %15, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %21, i32 noundef 0, i32 noundef %25, ptr noundef nonnull @gRecordSelectionAnimation088F9BC3) #5
  %26 = or disjoint i8 %14, 16
  %27 = add i32 %17, ptrtoint (ptr getelementptr inbounds ([0 x %struct.RecordSelectionMarkerCoordinates], ptr @gRecordSelectionMarkerCoordinates7F94, i32 0, i32 0, i32 2) to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = add i32 %17, ptrtoint (ptr getelementptr inbounds ([0 x %struct.RecordSelectionMarkerCoordinates], ptr @gRecordSelectionMarkerCoordinates7F94, i32 0, i32 0, i32 3) to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add i32 %17, ptrtoint (ptr @gRecordSelectionMarkerAnimations7F7C to i32)
  %36 = inttoptr i32 %35 to ptr
  %37 = load ptr, ptr %36, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %26, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %30, i32 noundef 0, i32 noundef %34, ptr noundef %37) #5
  br label %38

38:                                               ; preds = %13, %8
  %39 = lshr i32 %9, 1
  %40 = add nuw nsw i32 %10, 1
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %8

42:                                               ; preds = %38
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetRecordSelectionMarkerAnimations(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gRecordSelectionAnimation088F9BEA) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 11, ptr noundef nonnull @gRecordSelectionAnimation088F9BEA) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 12, ptr noundef nonnull @gRecordSelectionAnimation088F9BEA) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gRecordSelectionAnimation088F9BEA) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 14, ptr noundef nonnull @gRecordSelectionAnimation088F9BEA) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 15, ptr noundef nonnull @gRecordSelectionAnimation088F9BEA) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gRecordSelectionAnimation088F9A9D) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 17, ptr noundef nonnull @gRecordSelectionAnimation088F9B37) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 18, ptr noundef nonnull @gRecordSelectionAnimation088F9A50) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull @gRecordSelectionAnimation088F9AEA) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 20, ptr noundef nonnull @gRecordSelectionAnimation088F9A03) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 21, ptr noundef nonnull @gRecordSelectionAnimation088F9B84) #5
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureRecordSelectionCursor(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 24
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 107, i32 noundef %4, i32 noundef 9, ptr noundef nonnull @gRecordSelectionAnimation088F98D0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 216944
  %8 = lshr i32 %7, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 84, i32 noundef %8, i32 noundef 24, ptr noundef nonnull @gRecordSelectionAnimation088F9905) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 148, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gRecordSelectionAnimation088F993D) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 11, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 148, i32 noundef 0, i32 noundef 152, ptr noundef nonnull @gRecordSelectionAnimation088F994A) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 12, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 108, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gRecordSelectionAnimation088F9C08) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 13, i8 noundef zeroext 1) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 108, i32 noundef 0, i32 noundef 152, ptr noundef nonnull @gRecordSelectionAnimation088F9C08) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 14, i8 noundef zeroext 1) #5
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackNavigateRecordSelection(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  store i16 0, ptr @gScriptResult, align 2
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 1
  %5 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp ne i8 %6, -1
  %8 = zext i1 %7 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 255, i32 noundef %8) #5
  %9 = load i8, ptr %0, align 1
  switch i8 %9, label %64 [
    i8 0, label %10
    i8 1, label %34
  ]

10:                                               ; preds = %1
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i8 30, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i8 [ 30, %13 ], [ %11, %10 ]
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = and i8 %15, 1
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, ptr @gRecordSelectionBackground088FA2E4, ptr @gRecordSelectionBackground088FA2F3
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 130, ptr noundef nonnull %21) #5
  %22 = tail call arm_apcscc i32 @ConfigureRecordSelectionBackwardRows(i32 poison) #7
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 12, ptr noundef nonnull @gRecordSelectionAnimation088F994A) #5
  br label %26

23:                                               ; preds = %14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 0, ptr noundef nonnull @gRecordSelectionAnimation088F98DD) #5
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %25 = add i8 %24, -1
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %28 = icmp eq i8 %27, 30
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 84, i32 noundef 96, i32 noundef 24, ptr noundef nonnull @gRecordSelectionAnimation088F9905) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  br label %31

30:                                               ; preds = %26
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gRecordSelectionAnimation088F990D) #5
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %33 = add i8 %32, -1
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  store i16 1, ptr @gScriptResult, align 2
  br label %69

34:                                               ; preds = %1
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i8 %35, 29
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call i32 asm "", "=r,0"(i32 255) #8, !srcloc !8
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i8 [ %40, %38 ], [ %35, %34 ]
  %43 = phi i32 [ %39, %38 ], [ %36, %34 ]
  %44 = icmp eq i32 %43, 29
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %47 = icmp eq i8 %46, 5
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = and i8 %42, 1
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, ptr @gRecordSelectionBackground088FA2D5, ptr @gRecordSelectionBackground088FA2C6
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 130, ptr noundef nonnull %51) #5
  %52 = tail call arm_apcscc i32 @ConfigureRecordSelectionForwardRows(i32 poison) #7
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 11, ptr noundef nonnull @gRecordSelectionAnimation088F993D) #5
  br label %56

53:                                               ; preds = %45
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 0, ptr noundef nonnull @gRecordSelectionAnimation088F98F1) #5
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %55 = add i8 %54, 1
  store i8 %55, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %58 = icmp eq i8 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 84, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gRecordSelectionAnimation088F9905) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  br label %61

60:                                               ; preds = %56
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gRecordSelectionAnimation088F9921) #5
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %63 = add i8 %62, 1
  store i8 %63, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  store i16 1, ptr @gScriptResult, align 2
  br label %69

64:                                               ; preds = %41, %1
  %65 = load i16, ptr @gScriptResult, align 2
  %66 = icmp eq i16 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %69

69:                                               ; preds = %67, %31, %61
  %70 = phi i8 [ %68, %67 ], [ %33, %31 ], [ %63, %61 ]
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %71, 1
  %73 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %72
  %74 = load i8, ptr %73, align 1
  %75 = icmp ne i8 %74, -1
  %76 = zext i1 %75 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 256, i32 noundef %76) #5
  br label %77

77:                                               ; preds = %69, %64
  ret i32 1
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureRecordSelectionBackwardRows(i32 %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %4 = xor i8 %3, -1
  %5 = add i8 %2, %4
  br label %6

6:                                                ; preds = %1, %35
  %7 = phi i32 [ 0, %1 ], [ %36, %35 ]
  %8 = phi i8 [ %5, %1 ], [ %16, %35 ]
  %9 = icmp ugt i8 %8, 79
  %10 = add i8 %8, 30
  %11 = select i1 %9, i8 %10, i8 %8
  %12 = icmp ugt i8 %11, 29
  %13 = add i8 %11, -30
  %14 = select i1 %12, i8 %13, i8 %11
  %15 = zext i8 %14 to i32
  %16 = add i8 %14, 1
  %17 = add i32 %15, add (i32 ptrtoint (ptr @gSaveGroup01Block1CC20 to i32), i32 1)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, -1
  %21 = trunc i32 %7 to i8
  %22 = add i8 %21, 20
  br i1 %20, label %28, label %23

23:                                               ; preds = %6
  %24 = mul nuw nsw i32 %7, 24
  %25 = add nsw i32 %24, -12
  %26 = getelementptr [0 x ptr], ptr @gRecordSelectionBackwardRows7EDC, i32 0, i32 %15
  %27 = load ptr, ptr %26, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %25, ptr noundef %27) #5
  br label %35

28:                                               ; preds = %6
  %29 = and i32 %15, 1
  %30 = icmp eq i32 %29, 0
  %31 = mul nuw nsw i32 %7, 24
  %32 = add nsw i32 %31, -12
  br i1 %30, label %33, label %34

33:                                               ; preds = %28
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %32, ptr noundef nonnull @gRecordSelectionAnimation088F9C7C) #5
  br label %35

34:                                               ; preds = %28
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %32, ptr noundef nonnull @gRecordSelectionAnimation088F9CAC) #5
  br label %35

35:                                               ; preds = %33, %34, %23
  %36 = add nuw nsw i32 %7, 1
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %6

38:                                               ; preds = %35
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureRecordSelectionForwardRows(i32 %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %4 = sub i8 %2, %3
  br label %5

5:                                                ; preds = %1, %34
  %6 = phi i32 [ 0, %1 ], [ %35, %34 ]
  %7 = phi i8 [ %4, %1 ], [ %15, %34 ]
  %8 = icmp ugt i8 %7, 79
  %9 = add i8 %7, 30
  %10 = select i1 %8, i8 %9, i8 %7
  %11 = icmp ugt i8 %10, 29
  %12 = add i8 %10, -30
  %13 = select i1 %11, i8 %12, i8 %10
  %14 = zext i8 %13 to i32
  %15 = add i8 %13, 1
  %16 = add i32 %14, add (i32 ptrtoint (ptr @gSaveGroup01Block1CC20 to i32), i32 1)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, -1
  %20 = trunc i32 %6 to i8
  %21 = add i8 %20, 20
  br i1 %19, label %27, label %22

22:                                               ; preds = %5
  %23 = mul nuw nsw i32 %6, 24
  %24 = add nuw nsw i32 %23, 12
  %25 = getelementptr [0 x ptr], ptr @gRecordSelectionForwardRows7E64, i32 0, i32 %14
  %26 = load ptr, ptr %25, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %21, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %24, ptr noundef %26) #5
  br label %34

27:                                               ; preds = %5
  %28 = and i32 %14, 1
  %29 = icmp eq i32 %28, 0
  %30 = mul nuw nsw i32 %6, 24
  %31 = add nuw nsw i32 %30, 12
  br i1 %29, label %32, label %33

32:                                               ; preds = %27
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %21, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %31, ptr noundef nonnull @gRecordSelectionAnimation088F9C68) #5
  br label %34

33:                                               ; preds = %27
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %21, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %31, ptr noundef nonnull @gRecordSelectionAnimation088F9C98) #5
  br label %34

34:                                               ; preds = %32, %33, %22
  %35 = add nuw nsw i32 %6, 1
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %37, label %5

37:                                               ; preds = %34
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderRecordSelectionCount(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gSaveGroup01Block1CC20 to i32), i32 1)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %7 = icmp eq i8 %6, -1
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = freeze i8 %6
  %10 = udiv i8 %9, 10
  %11 = zext nneg i8 %10 to i32
  %12 = getelementptr ptr, ptr @gRecordSelectionDigitAnimations7F54, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 8, i32 noundef 0, i32 noundef 80, ptr noundef %13) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  %14 = mul i8 %10, 10
  %15 = sub i8 %9, %14
  %16 = zext nneg i8 %15 to i32
  %17 = getelementptr ptr, ptr @gRecordSelectionDigitAnimations7F54, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 16, i32 noundef 0, i32 noundef 80, ptr noundef %18) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 3, i8 noundef zeroext 0) #5
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr %struct.GameCounterDescriptor, ptr @gGameCounterDescriptorsD0D8, i32 %20
  %22 = getelementptr %struct.GameCounterDescriptor, ptr %21, i32 1, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %8, %25
  %26 = phi i32 [ %31, %25 ], [ 0, %8 ]
  %27 = trunc i32 %26 to i8
  %28 = add i8 %27, 4
  %29 = mul nuw nsw i32 %26, 12
  %30 = add nuw nsw i32 %29, 9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %28, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %30, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @gRecordSelectionAnimation088F9984) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %28, i8 noundef zeroext 0) #5
  %31 = add nuw nsw i32 %26, 1
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr %struct.GameCounterDescriptor, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 1, i32 1), i32 %33
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = icmp ult i32 %31, %36
  br i1 %37, label %25, label %38

38:                                               ; preds = %25
  %39 = icmp ult i32 %26, 4
  br i1 %39, label %40, label %50

40:                                               ; preds = %8, %38
  %41 = phi i32 [ 0, %8 ], [ %31, %38 ]
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i32 [ %46, %42 ], [ %41, %40 ]
  %44 = trunc i32 %43 to i8
  %45 = add nuw nsw i8 %44, 4
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext %45, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %45, i8 noundef zeroext 0) #5
  %46 = add nuw nsw i32 %43, 1
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %42

48:                                               ; preds = %42
  %49 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi i8 [ %49, %48 ], [ %32, %38 ]
  %52 = zext i8 %51 to i16
  %53 = add nuw nsw i16 %52, 1
  br label %56

54:                                               ; preds = %1
  %55 = load ptr, ptr @gRecordSelectionDigitAnimations7F54, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 8, i32 noundef 0, i32 noundef 80, ptr noundef %55) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 16, i32 noundef 0, i32 noundef 80, ptr noundef %55) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 3, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 5, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i16 [ %53, %50 ], [ 0, %54 ]
  store i16 %57, ptr @gScriptResult, align 2
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureRecordSelectionRows(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %4 = sub i8 %2, %3
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 130, ptr noundef nonnull @gRecordSelectionBackground088FA302) #5
  br label %8

8:                                                ; preds = %7, %1
  br label %9

9:                                                ; preds = %8, %38
  %10 = phi i32 [ %39, %38 ], [ 0, %8 ]
  %11 = phi i8 [ %19, %38 ], [ %4, %8 ]
  %12 = icmp ugt i8 %11, 79
  %13 = add i8 %11, 30
  %14 = select i1 %12, i8 %13, i8 %11
  %15 = icmp ugt i8 %14, 29
  %16 = add i8 %14, -30
  %17 = select i1 %15, i8 %16, i8 %14
  %18 = zext i8 %17 to i32
  %19 = add i8 %17, 1
  %20 = add i32 %18, add (i32 ptrtoint (ptr @gSaveGroup01Block1CC20 to i32), i32 1)
  %21 = inttoptr i32 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, -1
  %24 = trunc i32 %10 to i8
  %25 = add i8 %24, 20
  br i1 %23, label %31, label %26

26:                                               ; preds = %9
  %27 = mul nuw nsw i32 %10, 24
  %28 = add nuw nsw i32 %27, 12
  %29 = getelementptr [0 x ptr], ptr @gRecordSelectionRows7DEC, i32 0, i32 %18
  %30 = load ptr, ptr %29, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %25, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %28, ptr noundef %30) #5
  br label %38

31:                                               ; preds = %9
  %32 = and i32 %18, 1
  %33 = icmp eq i32 %32, 0
  %34 = mul nuw nsw i32 %10, 24
  %35 = add nuw nsw i32 %34, 12
  br i1 %33, label %36, label %37

36:                                               ; preds = %31
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %25, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %35, ptr noundef nonnull @gRecordSelectionAnimation088F9C60) #5
  br label %38

37:                                               ; preds = %31
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %25, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %35, ptr noundef nonnull @gRecordSelectionAnimation088F9C90) #5
  br label %38

38:                                               ; preds = %36, %37, %26
  %39 = add nuw nsw i32 %10, 1
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %9

41:                                               ; preds = %38
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackClearRecordSelectionDetail(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 10, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @gTaskTextLeadingDigitDefaultAnimation) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 9, i8 noundef zeroext 3) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 5, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %6 = zext i8 %5 to i32
  %7 = add i8 %5, 20
  %8 = mul nuw nsw i32 %6, 24
  %9 = add nuw nsw i32 %8, 12
  %10 = select i1 %4, ptr @gRecordSelectionAnimation088F9C60, ptr @gRecordSelectionAnimation088F9C90
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 116, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %10) #5
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackHighlightRecordSelectionCount(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.GameCounterDescriptor, ptr @gGameCounterDescriptorsD0D8, i32 %3
  %5 = getelementptr %struct.GameCounterDescriptor, ptr %4, i32 1, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @gRecordSelectionHighlightAnimations8204, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 9, i32 noundef 0, i32 noundef 107, ptr noundef %9) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.GameCounterDescriptor, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 1, i32 1), i32 %11
  %13 = load i8, ptr %12, align 4
  %14 = icmp ugt i8 %13, 1
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr ([0 x ptr], ptr @gRecordSelectionHighlightAnimations8204, i32 0, i32 1), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 21, i32 noundef 0, i32 noundef 107, ptr noundef %16) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 5, i8 noundef zeroext 0) #5
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr %struct.GameCounterDescriptor, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 1, i32 1), i32 %18
  %20 = load i8, ptr %19, align 4
  %21 = icmp ugt i8 %20, 2
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load ptr, ptr getelementptr ([0 x ptr], ptr @gRecordSelectionHighlightAnimations8204, i32 0, i32 2), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 6, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 33, i32 noundef 0, i32 noundef 107, ptr noundef %23) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.GameCounterDescriptor, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 1, i32 1), i32 %25
  %27 = load i8, ptr %26, align 4
  %28 = icmp ugt i8 %27, 3
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load ptr, ptr getelementptr ([0 x ptr], ptr @gRecordSelectionHighlightAnimations8204, i32 0, i32 3), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 45, i32 noundef 0, i32 noundef 107, ptr noundef %30) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr %struct.GameCounterDescriptor, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 1, i32 1), i32 %32
  %34 = load i8, ptr %33, align 4
  %35 = icmp ugt i8 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load ptr, ptr getelementptr ([0 x ptr], ptr @gRecordSelectionHighlightAnimations8204, i32 0, i32 4), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 57, i32 noundef 0, i32 noundef 107, ptr noundef %37) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  br label %38

38:                                               ; preds = %8, %15, %22, %29, %36, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeSaveListSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 138), align 1
  %3 = icmp eq i8 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 5, i32 noundef 0, i32 noundef 79, ptr noundef nonnull @gRecordSelectionAnimation088FA30C) #5
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %34

5:                                                ; preds = %1
  %6 = load i8, ptr @gSaveGroup3Block1EE40, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %11
  %9 = phi i32 [ %12, %11 ], [ 0, %5 ]
  %10 = icmp eq i32 %9, 29
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = add nuw nsw i32 %9, 1
  %13 = add i32 %9, add (i32 ptrtoint (ptr @gSaveGroup3Block1EE40 to i32), i32 1)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %11
  %18 = trunc i32 %9 to i8
  br label %19

19:                                               ; preds = %8, %17, %5
  %20 = phi i8 [ -1, %5 ], [ %18, %17 ], [ 29, %8 ]
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %21 = freeze i8 %20
  %22 = udiv i8 %21, 10
  %23 = mul i8 %22, 10
  %24 = sub i8 %21, %23
  %25 = zext nneg i8 %24 to i32
  %26 = mul nuw nsw i32 %25, 22
  %27 = add nuw nsw i32 %26, 5
  %28 = zext nneg i8 %22 to i32
  %29 = mul nuw nsw i32 %28, 1310720
  %30 = add nuw nsw i32 %29, 5177344
  %31 = lshr exact i32 %30, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %27, i32 noundef 0, i32 noundef %31, ptr noundef nonnull @gRecordSelectionAnimation088FA30C) #5
  %32 = tail call ptr asm sideeffect "", "=r,0"(ptr nonnull @gRasterScriptControlBytes) #6, !srcloc !9
  %33 = getelementptr i8, ptr %32, i32 96
  store i8 1, ptr %33, align 1
  br label %34

34:                                               ; preds = %19, %4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackLoadSaveListSelectionDetail(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = tail call i8 @llvm.smax.i8(i8 %2, i8 -1)
  %4 = zext i8 %3 to i32
  %5 = add i32 %4, ptrtoint (ptr @gSaveGroup3Block1EE40 to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = icmp sgt i8 %2, -1
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = zext i8 %7 to i32
  %13 = mul nuw nsw i32 %12, 24
  %14 = add i32 %13, add (i32 ptrtoint (ptr @gSaveGroup3ListDescriptors to i32), i32 16)
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %16, ptr noundef nonnull @gGameCounterDisplayBuffer, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #5
  %17 = load i8, ptr %6, align 1
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 24
  %20 = add i32 %19, add (i32 ptrtoint (ptr @gSaveGroup3ListDescriptors to i32), i32 20)
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr %21, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %22, ptr noundef inttoptr (i32 sub (i32 ptrtoint (ptr @gGameCounterDisplayBuffer to i32), i32 4096) to ptr)) #5
  br label %23

23:                                               ; preds = %1, %11
  %24 = phi ptr [ @gSaveGroup3ListCursorAnimation, %11 ], [ @gTaskTextLeadingDigitDefaultAnimation, %1 ]
  %25 = phi i8 [ 2, %11 ], [ 3, %1 ]
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 12, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %24) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 12, i8 noundef zeroext %25) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 4677}
!5 = !{i64 5449}
!6 = !{i64 8107}
!7 = !{i64 9542}
!8 = !{i64 14226}
!9 = !{i64 24793}
