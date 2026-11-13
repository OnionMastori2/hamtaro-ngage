; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveGroup3ListDescriptor = type { ptr, i8, i8, i8, i8, [2 x i8], [3 x i16], ptr, ptr }
%struct.GameRecordPalettePair = type { i32 }

@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gSaveGroup3ListDescriptors = external dso_local constant [0 x %struct.SaveGroup3ListDescriptor], align 4
@gSaveGroup3ListNumberFields = external dso_local constant [0 x i16], align 2
@gGameRecordHeaderGraphics = external dso_local constant [0 x i8], align 1
@gGameRecordDigitSheetGraphics = external dso_local constant [0 x i8], align 1
@gGameRecordSmallFrameGraphics = external dso_local constant [0 x i8], align 1
@gGameRecordNumberTiles = external dso_local constant [0 x i8], align 1
@gGameCounterLocalizedGraphics = external dso_local local_unnamed_addr global [0 x [5 x ptr]], align 4
@gGameRecordLabelTileBuffer = external dso_local global [0 x i32], align 4
@gGameRecordOtherStatusPalette = external dso_local constant [0 x i8], align 1
@gGameRecordTrailingPalette = external dso_local constant [0 x i8], align 1
@gGameRecordSelectionSlotPairs = external dso_local local_unnamed_addr constant [0 x [6 x i8]], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc zeroext i16 @SelectUnusedGameRecordCandidate(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = trunc i32 %1 to i16
  %5 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext %4) #4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i16, ptr %2, i32 %6
  %8 = load i16, ptr %7, align 2
  %9 = and i32 %0, 65535
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = trunc i32 %0 to i16
  br label %17

13:                                               ; preds = %17
  %14 = add nuw i16 %19, 1
  %15 = zext i16 %14 to i32
  %16 = icmp ult i16 %14, %12
  br i1 %16, label %17, label %24

17:                                               ; preds = %11, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %11 ]
  %19 = phi i16 [ %14, %13 ], [ 0, %11 ]
  %20 = add nuw nsw i32 %18, 35
  %21 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, %8
  br i1 %23, label %24, label %13

24:                                               ; preds = %17, %13, %3
  %25 = phi i16 [ %8, %3 ], [ %8, %13 ], [ 0, %17 ]
  ret i16 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareCounterGameRecordSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca [80 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #5
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %4 = zext i8 %3 to i32
  %5 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 1), align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = shl nuw nsw i32 %4, 2
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %129

11:                                               ; preds = %1
  store i8 1, ptr %8, align 1
  %12 = zext i8 %3 to i16
  %13 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  br label %14

14:                                               ; preds = %78, %11
  %15 = phi i16 [ %13, %11 ], [ %79, %78 ]
  %16 = phi i32 [ 1, %11 ], [ %83, %78 ]
  %17 = phi i32 [ 0, %11 ], [ %81, %78 ]
  %18 = phi i32 [ 0, %11 ], [ %82, %78 ]
  %19 = icmp eq i16 %15, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %16, i32 3
  %22 = load i8, ptr %21, align 2
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i8 %22, 2
  br i1 %24, label %78, label %25

25:                                               ; preds = %20, %14
  %26 = icmp eq i32 %16, 40
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 134) #4
  %29 = icmp eq i32 %28, 0
  %30 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  br i1 %29, label %78, label %31

31:                                               ; preds = %27, %25
  %32 = phi i16 [ %30, %27 ], [ %15, %25 ]
  %33 = mul nuw nsw i32 %16, 24
  %34 = add i32 %33, ptrtoint (ptr @gSaveGroup3ListNumberFields to i32)
  %35 = trunc i32 %16 to i16
  %36 = inttoptr i32 %34 to ptr
  %37 = load i16, ptr %36, align 2
  %38 = lshr i16 %37, 7
  %39 = and i16 %38, 127
  %40 = icmp eq i16 %39, %12
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = add i32 %18, 1
  %43 = and i32 %42, 65535
  %44 = getelementptr [80 x i16], ptr %2, i32 0, i32 %18
  store i16 %35, ptr %44, align 2
  %45 = select i1 %26, i32 1, i32 %17
  br label %46

46:                                               ; preds = %41, %31
  %47 = phi i32 [ %45, %41 ], [ %17, %31 ]
  %48 = phi i32 [ %43, %41 ], [ %18, %31 ]
  %49 = add i32 %33, add (i32 ptrtoint (ptr @gSaveGroup3ListNumberFields to i32), i32 2)
  %50 = inttoptr i32 %49 to ptr
  %51 = load i16, ptr %50, align 2
  %52 = lshr i16 %51, 7
  %53 = and i16 %52, 127
  %54 = icmp eq i16 %53, %12
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = add i32 %48, 1
  %57 = and i32 %56, 65535
  %58 = getelementptr [80 x i16], ptr %2, i32 0, i32 %48
  store i16 %35, ptr %58, align 2
  %59 = select i1 %26, i32 1, i32 %47
  br label %60

60:                                               ; preds = %55, %46
  %61 = phi i32 [ %59, %55 ], [ %47, %46 ]
  %62 = phi i32 [ %57, %55 ], [ %48, %46 ]
  %63 = add i32 %33, add (i32 ptrtoint (ptr @gSaveGroup3ListNumberFields to i32), i32 4)
  %64 = inttoptr i32 %63 to ptr
  %65 = load i16, ptr %64, align 2
  %66 = lshr i16 %65, 7
  %67 = and i16 %66, 127
  %68 = icmp eq i16 %67, %12
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = add i32 %62, 1
  %71 = and i32 %70, 65535
  %72 = getelementptr [80 x i16], ptr %2, i32 0, i32 %62
  store i16 %35, ptr %72, align 2
  %73 = select i1 %26, i32 1, i32 %61
  br label %74

74:                                               ; preds = %69, %60
  %75 = phi i32 [ %73, %69 ], [ %61, %60 ]
  %76 = phi i32 [ %71, %69 ], [ %62, %60 ]
  %77 = add nuw nsw i32 %16, 1
  br label %78

78:                                               ; preds = %74, %27, %20
  %79 = phi i16 [ 3, %20 ], [ %30, %27 ], [ %32, %74 ]
  %80 = phi i32 [ %23, %20 ], [ 41, %27 ], [ %77, %74 ]
  %81 = phi i32 [ %17, %20 ], [ %17, %27 ], [ %75, %74 ]
  %82 = phi i32 [ %18, %20 ], [ %18, %27 ], [ %76, %74 ]
  %83 = and i32 %80, 65535
  %84 = icmp ult i32 %83, 81
  br i1 %84, label %14, label %85

85:                                               ; preds = %78
  %86 = icmp eq i32 %81, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %85
  %88 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 194) #4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  store i16 40, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %91 = getelementptr i8, ptr %8, i32 1
  store i8 40, ptr %91, align 1
  br label %92

92:                                               ; preds = %87, %90, %85
  %93 = phi i32 [ 1, %90 ], [ 0, %85 ], [ 0, %87 ]
  %94 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %95 = zext i16 %94 to i32
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %92
  %98 = trunc i32 %82 to i16
  br label %99

99:                                               ; preds = %97, %120
  %100 = phi i32 [ %125, %120 ], [ %93, %97 ]
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %100, 65535
  br label %103

103:                                              ; preds = %117, %99
  %104 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext %98) #4
  %105 = zext i16 %104 to i32
  %106 = getelementptr i16, ptr %2, i32 %105
  %107 = load i16, ptr %106, align 2
  br i1 %101, label %117, label %111

108:                                              ; preds = %111
  %109 = add nuw nsw i32 %112, 1
  %110 = icmp eq i32 %109, %102
  br i1 %110, label %117, label %111

111:                                              ; preds = %103, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %103 ]
  %113 = add nuw nsw i32 %112, 35
  %114 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %113
  %115 = load i16, ptr %114, align 2
  %116 = icmp eq i16 %115, %107
  br i1 %116, label %117, label %108

117:                                              ; preds = %108, %111, %103
  %118 = phi i16 [ %107, %103 ], [ 0, %111 ], [ %107, %108 ]
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %103, label %120

120:                                              ; preds = %117
  %121 = add nuw nsw i32 %100, 1
  %122 = getelementptr i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), i32 %100
  store i16 %118, ptr %122, align 2
  %123 = trunc i16 %118 to i8
  %124 = getelementptr i8, ptr %8, i32 %121
  store i8 %123, ptr %124, align 1
  %125 = and i32 %121, 65535
  %126 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %127 = zext i16 %126 to i32
  %128 = icmp ult i32 %125, %127
  br i1 %128, label %99, label %144

129:                                              ; preds = %1
  %130 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %129, %132
  %133 = phi i32 [ %136, %132 ], [ 0, %129 ]
  %134 = shl nuw nsw i32 %133, 1
  %135 = add i32 %134, add (i32 ptrtoint (ptr @gAnimationClassValues to i32), i32 70)
  %136 = add nuw nsw i32 %133, 1
  %137 = getelementptr i8, ptr %8, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i16
  %140 = inttoptr i32 %135 to ptr
  store i16 %139, ptr %140, align 2
  %141 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %142 = zext i16 %141 to i32
  %143 = icmp ult i32 %136, %142
  br i1 %143, label %132, label %144

144:                                              ; preds = %132, %120, %129, %92
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #5
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @HalveGameRecordPaletteChannels(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 1
  %3 = lshr i32 %2, 1
  %4 = and i32 %2, -2147450880
  %5 = and i32 %3, 1039089135
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 1
  %7 = getelementptr %struct.GameRecordPalettePair, ptr %0, i32 1
  %8 = load i32, ptr %7, align 1
  %9 = lshr i32 %8, 1
  %10 = and i32 %8, -2147450880
  %11 = and i32 %9, 1039089135
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %7, align 1
  %13 = getelementptr %struct.GameRecordPalettePair, ptr %0, i32 2
  %14 = load i32, ptr %13, align 1
  %15 = lshr i32 %14, 1
  %16 = and i32 %14, -2147450880
  %17 = and i32 %15, 1039089135
  %18 = or disjoint i32 %17, %16
  store i32 %18, ptr %13, align 1
  %19 = getelementptr %struct.GameRecordPalettePair, ptr %0, i32 3
  %20 = load i32, ptr %19, align 1
  %21 = lshr i32 %20, 1
  %22 = and i32 %20, -2147450880
  %23 = and i32 %21, 1039089135
  %24 = or disjoint i32 %23, %22
  store i32 %24, ptr %19, align 1
  %25 = getelementptr %struct.GameRecordPalettePair, ptr %0, i32 4
  %26 = load i32, ptr %25, align 1
  %27 = lshr i32 %26, 1
  %28 = and i32 %26, -2147450880
  %29 = and i32 %27, 1039089135
  %30 = or disjoint i32 %29, %28
  store i32 %30, ptr %25, align 1
  %31 = getelementptr %struct.GameRecordPalettePair, ptr %0, i32 5
  %32 = load i32, ptr %31, align 1
  %33 = lshr i32 %32, 1
  %34 = and i32 %32, -2147450880
  %35 = and i32 %33, 1039089135
  %36 = or disjoint i32 %35, %34
  store i32 %36, ptr %31, align 1
  %37 = getelementptr %struct.GameRecordPalettePair, ptr %0, i32 6
  %38 = load i32, ptr %37, align 1
  %39 = lshr i32 %38, 1
  %40 = and i32 %38, -2147450880
  %41 = and i32 %39, 1039089135
  %42 = or disjoint i32 %41, %40
  store i32 %42, ptr %37, align 1
  %43 = getelementptr %struct.GameRecordPalettePair, ptr %0, i32 7
  %44 = load i32, ptr %43, align 1
  %45 = lshr i32 %44, 1
  %46 = and i32 %44, -2147450880
  %47 = and i32 %45, 1039089135
  %48 = or disjoint i32 %47, %46
  store i32 %48, ptr %43, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @WriteRecordCounterStatusFromArguments(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 35
  %5 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %4
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr i8, ptr %0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr i8, ptr %0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr i8, ptr %0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or disjoint i32 %21, %24
  %26 = inttoptr i32 %25 to ptr
  tail call arm_apcscc void @WriteRecordCounterStatusPalette(ptr noundef %26, i32 noundef %7) #4
  ret i32 5
}

declare dso_local arm_apcscc void @WriteRecordCounterStatusPalette(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackBuildGameRecordSelectionGraphics(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #5
  %3 = getelementptr i8, ptr %0, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %17 = load i8, ptr %0, align 1
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %16, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call ptr asm "", "={r0},{r0}"(ptr %20) #6, !srcloc !4
  %22 = getelementptr i8, ptr %20, i32 4096
  %23 = tail call ptr asm "", "={r1},{r1}"(ptr %22) #6, !srcloc !5
  %24 = getelementptr i8, ptr %20, i32 2048
  store ptr %23, ptr %2, align 4
  %25 = getelementptr i8, ptr %20, i32 18432
  %26 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %20, i32 18688
  %28 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %20, i32 16800
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef nonnull @gGameRecordHeaderGraphics, ptr noundef %29, i32 noundef 608, i32 noundef 2, i32 noundef 1024) #4
  %30 = getelementptr i8, ptr %20, i32 18944
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef nonnull @gGameRecordDigitSheetGraphics, ptr noundef %30, i32 noundef 512, i32 noundef 8, i32 noundef 1024) #4
  %31 = getelementptr i8, ptr %20, i32 14528
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef nonnull @gGameRecordSmallFrameGraphics, ptr noundef %31, i32 noundef 64, i32 noundef 2, i32 noundef 1024) #4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull @gGameRecordNumberTiles, ptr noundef %24) #4
  %32 = getelementptr i8, ptr %20, i32 2112
  %33 = getelementptr i8, ptr %20, i32 2464
  br label %34

34:                                               ; preds = %34, %1
  %35 = phi ptr [ %33, %1 ], [ %49, %34 ]
  %36 = phi ptr [ %32, %1 ], [ %48, %34 ]
  %37 = phi i32 [ 0, %1 ], [ %50, %34 ]
  %38 = load i32, ptr %36, align 4
  %39 = add i32 %38, -858993459
  store i32 %39, ptr %36, align 4
  %40 = getelementptr i32, ptr %36, i32 16
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1717986918
  store i32 %42, ptr %40, align 4
  %43 = load i32, ptr %35, align 4
  %44 = add i32 %43, -858993459
  store i32 %44, ptr %35, align 4
  %45 = getelementptr i32, ptr %35, i32 16
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1717986918
  store i32 %47, ptr %45, align 4
  %48 = getelementptr i32, ptr %36, i32 1
  %49 = getelementptr i32, ptr %35, i32 1
  %50 = add nuw nsw i32 %37, 1
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %34

52:                                               ; preds = %34
  %53 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %451, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %20, i32 32
  %57 = getelementptr i8, ptr %20, i32 2400
  %58 = getelementptr i8, ptr %20, i32 2368
  %59 = getelementptr i8, ptr %20, i32 2372
  %60 = getelementptr i8, ptr %20, i32 2376
  %61 = getelementptr i8, ptr %20, i32 2380
  %62 = getelementptr i8, ptr %20, i32 2384
  %63 = getelementptr i8, ptr %20, i32 2388
  %64 = getelementptr i8, ptr %20, i32 2392
  %65 = getelementptr i8, ptr %20, i32 2396
  br label %66

66:                                               ; preds = %55, %369
  %67 = phi i32 [ 0, %55 ], [ %74, %369 ]
  %68 = phi i32 [ 0, %55 ], [ %120, %369 ]
  %69 = phi ptr [ %56, %55 ], [ %365, %369 ]
  %70 = add nuw nsw i32 %67, 35
  %71 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %70
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = add nuw nsw i32 %67, 1
  %75 = mul nuw nsw i32 %73, 24
  %76 = add i32 %75, ptrtoint (ptr getelementptr inbounds ([0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 0, i32 6, i32 0) to i32)
  br label %77

77:                                               ; preds = %357, %66
  %78 = phi i32 [ 0, %66 ], [ %362, %357 ]
  %79 = phi i32 [ %68, %66 ], [ %120, %357 ]
  %80 = icmp slt i32 %79, 4
  %81 = shl i32 %79, 11
  %82 = getelementptr i8, ptr %23, i32 %81
  %83 = select i1 %80, i32 256, i32 -7552
  %84 = getelementptr i8, ptr %82, i32 %83
  %85 = shl nuw nsw i32 %78, 1
  %86 = add i32 %76, %85
  %87 = inttoptr i32 %86 to ptr
  %88 = load i16, ptr %87, align 2
  %89 = lshr i16 %88, 7
  %90 = and i16 %89, 127
  %91 = mul nuw nsw i16 %90, 5
  %92 = zext nneg i16 %91 to i32
  %93 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %94 = zext i8 %93 to i32
  %95 = getelementptr ptr, ptr @gGameCounterLocalizedGraphics, i32 %92
  %96 = getelementptr ptr, ptr %95, i32 %94
  %97 = load ptr, ptr %96, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %97, ptr noundef nonnull @gGameRecordLabelTileBuffer) #4
  %98 = mul nuw nsw i32 %78, 858993459
  br label %99

99:                                               ; preds = %99, %77
  %100 = phi i32 [ %106, %99 ], [ 0, %77 ]
  %101 = phi ptr [ %105, %99 ], [ %84, %77 ]
  %102 = getelementptr i32, ptr @gGameRecordLabelTileBuffer, i32 %100
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, %98
  %105 = getelementptr i32, ptr %101, i32 1
  store i32 %104, ptr %101, align 4
  %106 = add nuw nsw i32 %100, 1
  %107 = icmp eq i32 %106, 80
  br i1 %107, label %108, label %99

108:                                              ; preds = %99
  %109 = getelementptr i8, ptr %84, i32 1024
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i32 [ 80, %108 ], [ %117, %110 ]
  %112 = phi ptr [ %109, %108 ], [ %116, %110 ]
  %113 = getelementptr i32, ptr @gGameRecordLabelTileBuffer, i32 %111
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %98
  %116 = getelementptr i32, ptr %112, i32 1
  store i32 %115, ptr %112, align 4
  %117 = add nuw nsw i32 %111, 1
  %118 = icmp eq i32 %117, 160
  br i1 %118, label %119, label %110

119:                                              ; preds = %110
  %120 = add i32 %79, 1
  %121 = load i16, ptr %87, align 2
  %122 = and i16 %121, 127
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %263, label %124

124:                                              ; preds = %119
  %125 = zext nneg i16 %122 to i32
  %126 = tail call arm_apcscc i32 @__udivsi3(i32 noundef %125, i32 noundef 10) #4
  %127 = shl i32 %126, 5
  %128 = and i32 %127, 2097120
  %129 = getelementptr i8, ptr %24, i32 %128
  %130 = getelementptr i8, ptr %84, i32 320
  %131 = load i32, ptr %129, align 4
  %132 = add i32 %131, %98
  %133 = getelementptr i8, ptr %84, i32 324
  store i32 %132, ptr %130, align 4
  %134 = getelementptr i32, ptr %129, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, %98
  %137 = getelementptr i8, ptr %84, i32 328
  store i32 %136, ptr %133, align 4
  %138 = getelementptr i32, ptr %129, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, %98
  %141 = getelementptr i8, ptr %84, i32 332
  store i32 %140, ptr %137, align 4
  %142 = getelementptr i32, ptr %129, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, %98
  %145 = getelementptr i8, ptr %84, i32 336
  store i32 %144, ptr %141, align 4
  %146 = getelementptr i32, ptr %129, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, %98
  %149 = getelementptr i8, ptr %84, i32 340
  store i32 %148, ptr %145, align 4
  %150 = getelementptr i32, ptr %129, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, %98
  %153 = getelementptr i8, ptr %84, i32 344
  store i32 %152, ptr %149, align 4
  %154 = getelementptr i32, ptr %129, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, %98
  %157 = getelementptr i8, ptr %84, i32 348
  store i32 %156, ptr %153, align 4
  %158 = getelementptr i32, ptr %129, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, %98
  %161 = getelementptr i8, ptr %84, i32 352
  store i32 %160, ptr %157, align 4
  %162 = tail call arm_apcscc i32 @__umodsi3(i32 noundef %125, i32 noundef 10) #4
  %163 = shl i32 %162, 5
  %164 = and i32 %163, 2097120
  %165 = getelementptr i8, ptr %24, i32 %164
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, %98
  %168 = getelementptr i8, ptr %84, i32 356
  store i32 %167, ptr %161, align 4
  %169 = getelementptr i32, ptr %165, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %98
  %172 = getelementptr i8, ptr %84, i32 360
  store i32 %171, ptr %168, align 4
  %173 = getelementptr i32, ptr %165, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, %98
  %176 = getelementptr i8, ptr %84, i32 364
  store i32 %175, ptr %172, align 4
  %177 = getelementptr i32, ptr %165, i32 3
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, %98
  %180 = getelementptr i8, ptr %84, i32 368
  store i32 %179, ptr %176, align 4
  %181 = getelementptr i32, ptr %165, i32 4
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, %98
  %184 = getelementptr i8, ptr %84, i32 372
  store i32 %183, ptr %180, align 4
  %185 = getelementptr i32, ptr %165, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, %98
  %188 = getelementptr i8, ptr %84, i32 376
  store i32 %187, ptr %184, align 4
  %189 = getelementptr i32, ptr %165, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, %98
  %192 = getelementptr i8, ptr %84, i32 380
  store i32 %191, ptr %188, align 4
  %193 = getelementptr i32, ptr %165, i32 7
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, %98
  store i32 %195, ptr %192, align 4
  %196 = tail call arm_apcscc i32 @__udivsi3(i32 noundef %125, i32 noundef 10) #4
  %197 = shl i32 %196, 5
  %198 = and i32 %197, 2097120
  %199 = getelementptr i8, ptr %57, i32 %198
  %200 = getelementptr i8, ptr %84, i32 1344
  %201 = load i32, ptr %199, align 4
  %202 = add i32 %201, %98
  %203 = getelementptr i8, ptr %84, i32 1348
  store i32 %202, ptr %200, align 4
  %204 = getelementptr i32, ptr %199, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %205, %98
  %207 = getelementptr i8, ptr %84, i32 1352
  store i32 %206, ptr %203, align 4
  %208 = getelementptr i32, ptr %199, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, %98
  %211 = getelementptr i8, ptr %84, i32 1356
  store i32 %210, ptr %207, align 4
  %212 = getelementptr i32, ptr %199, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %98
  %215 = getelementptr i8, ptr %84, i32 1360
  store i32 %214, ptr %211, align 4
  %216 = getelementptr i32, ptr %199, i32 4
  %217 = load i32, ptr %216, align 4
  %218 = add i32 %217, %98
  %219 = getelementptr i8, ptr %84, i32 1364
  store i32 %218, ptr %215, align 4
  %220 = getelementptr i32, ptr %199, i32 5
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, %98
  %223 = getelementptr i8, ptr %84, i32 1368
  store i32 %222, ptr %219, align 4
  %224 = getelementptr i32, ptr %199, i32 6
  %225 = load i32, ptr %224, align 4
  %226 = add i32 %225, %98
  %227 = getelementptr i8, ptr %84, i32 1372
  store i32 %226, ptr %223, align 4
  %228 = getelementptr i32, ptr %199, i32 7
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, %98
  %231 = getelementptr i8, ptr %84, i32 1376
  store i32 %230, ptr %227, align 4
  %232 = tail call arm_apcscc i32 @__umodsi3(i32 noundef %125, i32 noundef 10) #4
  %233 = shl i32 %232, 5
  %234 = and i32 %233, 2097120
  %235 = getelementptr i8, ptr %57, i32 %234
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, %98
  %238 = getelementptr i8, ptr %84, i32 1380
  store i32 %237, ptr %231, align 4
  %239 = getelementptr i32, ptr %235, i32 1
  %240 = load i32, ptr %239, align 4
  %241 = add i32 %240, %98
  %242 = getelementptr i8, ptr %84, i32 1384
  store i32 %241, ptr %238, align 4
  %243 = getelementptr i32, ptr %235, i32 2
  %244 = load i32, ptr %243, align 4
  %245 = add i32 %244, %98
  %246 = getelementptr i8, ptr %84, i32 1388
  store i32 %245, ptr %242, align 4
  %247 = getelementptr i32, ptr %235, i32 3
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, %98
  %250 = getelementptr i8, ptr %84, i32 1392
  store i32 %249, ptr %246, align 4
  %251 = getelementptr i32, ptr %235, i32 4
  %252 = load i32, ptr %251, align 4
  %253 = add i32 %252, %98
  %254 = getelementptr i8, ptr %84, i32 1396
  store i32 %253, ptr %250, align 4
  %255 = getelementptr i32, ptr %235, i32 5
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, %98
  %258 = getelementptr i8, ptr %84, i32 1400
  store i32 %257, ptr %254, align 4
  %259 = getelementptr i32, ptr %235, i32 6
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, %98
  store i32 %261, ptr %258, align 4
  %262 = getelementptr i32, ptr %235, i32 7
  br label %357

263:                                              ; preds = %119
  %264 = getelementptr i8, ptr %84, i32 320
  %265 = load i32, ptr %58, align 4
  %266 = add i32 %265, %98
  %267 = getelementptr i8, ptr %84, i32 324
  store i32 %266, ptr %264, align 4
  %268 = load i32, ptr %59, align 4
  %269 = add i32 %268, %98
  %270 = getelementptr i8, ptr %84, i32 328
  store i32 %269, ptr %267, align 4
  %271 = load i32, ptr %60, align 4
  %272 = add i32 %271, %98
  %273 = getelementptr i8, ptr %84, i32 332
  store i32 %272, ptr %270, align 4
  %274 = load i32, ptr %61, align 4
  %275 = add i32 %274, %98
  %276 = getelementptr i8, ptr %84, i32 336
  store i32 %275, ptr %273, align 4
  %277 = load i32, ptr %62, align 4
  %278 = add i32 %277, %98
  %279 = getelementptr i8, ptr %84, i32 340
  store i32 %278, ptr %276, align 4
  %280 = load i32, ptr %63, align 4
  %281 = add i32 %280, %98
  %282 = getelementptr i8, ptr %84, i32 344
  store i32 %281, ptr %279, align 4
  %283 = load i32, ptr %64, align 4
  %284 = add i32 %283, %98
  %285 = getelementptr i8, ptr %84, i32 348
  store i32 %284, ptr %282, align 4
  %286 = load i32, ptr %65, align 4
  %287 = add i32 %286, %98
  %288 = getelementptr i8, ptr %84, i32 352
  store i32 %287, ptr %285, align 4
  %289 = load i32, ptr %58, align 4
  %290 = add i32 %289, %98
  %291 = getelementptr i8, ptr %84, i32 356
  store i32 %290, ptr %288, align 4
  %292 = load i32, ptr %59, align 4
  %293 = add i32 %292, %98
  %294 = getelementptr i8, ptr %84, i32 360
  store i32 %293, ptr %291, align 4
  %295 = load i32, ptr %60, align 4
  %296 = add i32 %295, %98
  %297 = getelementptr i8, ptr %84, i32 364
  store i32 %296, ptr %294, align 4
  %298 = load i32, ptr %61, align 4
  %299 = add i32 %298, %98
  %300 = getelementptr i8, ptr %84, i32 368
  store i32 %299, ptr %297, align 4
  %301 = load i32, ptr %62, align 4
  %302 = add i32 %301, %98
  %303 = getelementptr i8, ptr %84, i32 372
  store i32 %302, ptr %300, align 4
  %304 = load i32, ptr %63, align 4
  %305 = add i32 %304, %98
  %306 = getelementptr i8, ptr %84, i32 376
  store i32 %305, ptr %303, align 4
  %307 = load i32, ptr %64, align 4
  %308 = add i32 %307, %98
  %309 = getelementptr i8, ptr %84, i32 380
  store i32 %308, ptr %306, align 4
  %310 = load i32, ptr %65, align 4
  %311 = add i32 %310, %98
  store i32 %311, ptr %309, align 4
  %312 = getelementptr i8, ptr %84, i32 1344
  %313 = load i32, ptr %58, align 4
  %314 = add i32 %313, %98
  %315 = getelementptr i8, ptr %84, i32 1348
  store i32 %314, ptr %312, align 4
  %316 = load i32, ptr %59, align 4
  %317 = add i32 %316, %98
  %318 = getelementptr i8, ptr %84, i32 1352
  store i32 %317, ptr %315, align 4
  %319 = load i32, ptr %60, align 4
  %320 = add i32 %319, %98
  %321 = getelementptr i8, ptr %84, i32 1356
  store i32 %320, ptr %318, align 4
  %322 = load i32, ptr %61, align 4
  %323 = add i32 %322, %98
  %324 = getelementptr i8, ptr %84, i32 1360
  store i32 %323, ptr %321, align 4
  %325 = load i32, ptr %62, align 4
  %326 = add i32 %325, %98
  %327 = getelementptr i8, ptr %84, i32 1364
  store i32 %326, ptr %324, align 4
  %328 = load i32, ptr %63, align 4
  %329 = add i32 %328, %98
  %330 = getelementptr i8, ptr %84, i32 1368
  store i32 %329, ptr %327, align 4
  %331 = load i32, ptr %64, align 4
  %332 = add i32 %331, %98
  %333 = getelementptr i8, ptr %84, i32 1372
  store i32 %332, ptr %330, align 4
  %334 = load i32, ptr %65, align 4
  %335 = add i32 %334, %98
  %336 = getelementptr i8, ptr %84, i32 1376
  store i32 %335, ptr %333, align 4
  %337 = load i32, ptr %58, align 4
  %338 = add i32 %337, %98
  %339 = getelementptr i8, ptr %84, i32 1380
  store i32 %338, ptr %336, align 4
  %340 = load i32, ptr %59, align 4
  %341 = add i32 %340, %98
  %342 = getelementptr i8, ptr %84, i32 1384
  store i32 %341, ptr %339, align 4
  %343 = load i32, ptr %60, align 4
  %344 = add i32 %343, %98
  %345 = getelementptr i8, ptr %84, i32 1388
  store i32 %344, ptr %342, align 4
  %346 = load i32, ptr %61, align 4
  %347 = add i32 %346, %98
  %348 = getelementptr i8, ptr %84, i32 1392
  store i32 %347, ptr %345, align 4
  %349 = load i32, ptr %62, align 4
  %350 = add i32 %349, %98
  %351 = getelementptr i8, ptr %84, i32 1396
  store i32 %350, ptr %348, align 4
  %352 = load i32, ptr %63, align 4
  %353 = add i32 %352, %98
  %354 = getelementptr i8, ptr %84, i32 1400
  store i32 %353, ptr %351, align 4
  %355 = load i32, ptr %64, align 4
  %356 = add i32 %355, %98
  store i32 %356, ptr %354, align 4
  br label %357

357:                                              ; preds = %124, %263
  %358 = phi ptr [ %262, %124 ], [ %65, %263 ]
  %359 = getelementptr i8, ptr %84, i32 1404
  %360 = load i32, ptr %358, align 4
  %361 = add i32 %360, %98
  store i32 %361, ptr %359, align 4
  %362 = add nuw nsw i32 %78, 1
  %363 = icmp eq i32 %362, 3
  br i1 %363, label %364, label %77

364:                                              ; preds = %357
  %365 = getelementptr i8, ptr %69, i32 64
  %366 = icmp eq i32 %67, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %364
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull @gGameRecordOtherStatusPalette, ptr noundef %69) #4
  br label %369

368:                                              ; preds = %364
  tail call arm_apcscc void @WriteRecordCounterStatusPalette(ptr noundef %69, i32 noundef %73) #4
  br label %369

369:                                              ; preds = %368, %367
  %370 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %371 = zext i16 %370 to i32
  %372 = icmp ult i32 %74, %371
  br i1 %372, label %66, label %373

373:                                              ; preds = %369
  %374 = icmp eq i16 %370, 0
  br i1 %374, label %451, label %375

375:                                              ; preds = %373, %438
  %376 = phi ptr [ %446, %438 ], [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), %373 ]
  %377 = phi ptr [ %444, %438 ], [ %2, %373 ]
  %378 = phi ptr [ %440, %438 ], [ %21, %373 ]
  %379 = phi i32 [ %447, %438 ], [ 0, %373 ]
  %380 = load i16, ptr %376, align 2
  %381 = zext i16 %380 to i32
  %382 = mul nuw nsw i32 %381, 3
  %383 = tail call i32 asm "", "={r0},{r0}"(i32 %382) #6, !srcloc !6
  %384 = shl i32 %383, 3
  %385 = add i32 %384, ptrtoint (ptr getelementptr inbounds ([0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 0, i32 8) to i32)
  %386 = inttoptr i32 %385 to ptr
  %387 = load ptr, ptr %386, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %387, ptr noundef %378) #4
  %388 = tail call i32 asm "", "=r,0"(i32 %379) #6, !srcloc !7
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %438, label %390

390:                                              ; preds = %375
  %391 = load i32, ptr %378, align 1
  %392 = lshr i32 %391, 1
  %393 = and i32 %391, -2147450880
  %394 = and i32 %392, 1039089135
  %395 = or disjoint i32 %394, %393
  store i32 %395, ptr %378, align 1
  %396 = getelementptr %struct.GameRecordPalettePair, ptr %378, i32 1
  %397 = load i32, ptr %396, align 1
  %398 = lshr i32 %397, 1
  %399 = and i32 %397, -2147450880
  %400 = and i32 %398, 1039089135
  %401 = or disjoint i32 %400, %399
  store i32 %401, ptr %396, align 1
  %402 = getelementptr %struct.GameRecordPalettePair, ptr %378, i32 2
  %403 = load i32, ptr %402, align 1
  %404 = lshr i32 %403, 1
  %405 = and i32 %403, -2147450880
  %406 = and i32 %404, 1039089135
  %407 = or disjoint i32 %406, %405
  store i32 %407, ptr %402, align 1
  %408 = getelementptr %struct.GameRecordPalettePair, ptr %378, i32 3
  %409 = load i32, ptr %408, align 1
  %410 = lshr i32 %409, 1
  %411 = and i32 %409, -2147450880
  %412 = and i32 %410, 1039089135
  %413 = or disjoint i32 %412, %411
  store i32 %413, ptr %408, align 1
  %414 = getelementptr %struct.GameRecordPalettePair, ptr %378, i32 4
  %415 = load i32, ptr %414, align 1
  %416 = lshr i32 %415, 1
  %417 = and i32 %415, -2147450880
  %418 = and i32 %416, 1039089135
  %419 = or disjoint i32 %418, %417
  store i32 %419, ptr %414, align 1
  %420 = getelementptr %struct.GameRecordPalettePair, ptr %378, i32 5
  %421 = load i32, ptr %420, align 1
  %422 = lshr i32 %421, 1
  %423 = and i32 %421, -2147450880
  %424 = and i32 %422, 1039089135
  %425 = or disjoint i32 %424, %423
  store i32 %425, ptr %420, align 1
  %426 = getelementptr %struct.GameRecordPalettePair, ptr %378, i32 6
  %427 = load i32, ptr %426, align 1
  %428 = lshr i32 %427, 1
  %429 = and i32 %427, -2147450880
  %430 = and i32 %428, 1039089135
  %431 = or disjoint i32 %430, %429
  store i32 %431, ptr %426, align 1
  %432 = getelementptr %struct.GameRecordPalettePair, ptr %378, i32 7
  %433 = load i32, ptr %432, align 1
  %434 = lshr i32 %433, 1
  %435 = and i32 %433, -2147450880
  %436 = and i32 %434, 1039089135
  %437 = or disjoint i32 %436, %435
  store i32 %437, ptr %432, align 1
  br label %438

438:                                              ; preds = %390, %375
  %439 = tail call i32 asm "", "={r1},{r1}"(i32 64) #6, !srcloc !8
  %440 = getelementptr i8, ptr %378, i32 %439
  %441 = add i32 %384, ptrtoint (ptr getelementptr inbounds ([0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 0, i32 7) to i32)
  %442 = inttoptr i32 %441 to ptr
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr ptr, ptr %377, i32 1
  %445 = load ptr, ptr %377, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %443, ptr noundef %445, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #4
  %446 = getelementptr i16, ptr %376, i32 1
  %447 = add nuw nsw i32 %379, 1
  %448 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %449 = zext i16 %448 to i32
  %450 = icmp ult i32 %447, %449
  br i1 %450, label %375, label %451

451:                                              ; preds = %438, %52, %373
  %452 = phi ptr [ %21, %373 ], [ %21, %52 ], [ %440, %438 ]
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull @gGameRecordTrailingPalette, ptr noundef %452) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #5
  ret i32 4
}

declare dso_local arm_apcscc void @DecompressStridedRows(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @__udivsi3(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @__umodsi3(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshGameRecordSelectionPalettes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 3
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr i8, ptr %0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %16 = load i8, ptr %0, align 1
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %15, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, 35
  %23 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %22
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  br label %26

26:                                               ; preds = %1, %87
  %27 = phi i32 [ 0, %1 ], [ %89, %87 ]
  %28 = phi ptr [ %19, %1 ], [ %88, %87 ]
  %29 = add nuw nsw i32 %27, 35
  %30 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %29
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %32, i32 8
  %34 = load ptr, ptr %33, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %34, ptr noundef %28) #4
  %35 = icmp eq i32 %27, %21
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %28, i32 32
  tail call arm_apcscc void @WriteRecordCounterStatusPalette(ptr noundef %37, i32 noundef %25) #4
  br label %87

38:                                               ; preds = %26
  %39 = load i32, ptr %28, align 1
  %40 = lshr i32 %39, 1
  %41 = and i32 %39, -2147450880
  %42 = and i32 %40, 1039089135
  %43 = or disjoint i32 %42, %41
  store i32 %43, ptr %28, align 1
  %44 = getelementptr %struct.GameRecordPalettePair, ptr %28, i32 1
  %45 = load i32, ptr %44, align 1
  %46 = lshr i32 %45, 1
  %47 = and i32 %45, -2147450880
  %48 = and i32 %46, 1039089135
  %49 = or disjoint i32 %48, %47
  store i32 %49, ptr %44, align 1
  %50 = getelementptr %struct.GameRecordPalettePair, ptr %28, i32 2
  %51 = load i32, ptr %50, align 1
  %52 = lshr i32 %51, 1
  %53 = and i32 %51, -2147450880
  %54 = and i32 %52, 1039089135
  %55 = or disjoint i32 %54, %53
  store i32 %55, ptr %50, align 1
  %56 = getelementptr %struct.GameRecordPalettePair, ptr %28, i32 3
  %57 = load i32, ptr %56, align 1
  %58 = lshr i32 %57, 1
  %59 = and i32 %57, -2147450880
  %60 = and i32 %58, 1039089135
  %61 = or disjoint i32 %60, %59
  store i32 %61, ptr %56, align 1
  %62 = getelementptr %struct.GameRecordPalettePair, ptr %28, i32 4
  %63 = load i32, ptr %62, align 1
  %64 = lshr i32 %63, 1
  %65 = and i32 %63, -2147450880
  %66 = and i32 %64, 1039089135
  %67 = or disjoint i32 %66, %65
  store i32 %67, ptr %62, align 1
  %68 = getelementptr %struct.GameRecordPalettePair, ptr %28, i32 5
  %69 = load i32, ptr %68, align 1
  %70 = lshr i32 %69, 1
  %71 = and i32 %69, -2147450880
  %72 = and i32 %70, 1039089135
  %73 = or disjoint i32 %72, %71
  store i32 %73, ptr %68, align 1
  %74 = getelementptr %struct.GameRecordPalettePair, ptr %28, i32 6
  %75 = load i32, ptr %74, align 1
  %76 = lshr i32 %75, 1
  %77 = and i32 %75, -2147450880
  %78 = and i32 %76, 1039089135
  %79 = or disjoint i32 %78, %77
  store i32 %79, ptr %74, align 1
  %80 = getelementptr %struct.GameRecordPalettePair, ptr %28, i32 7
  %81 = load i32, ptr %80, align 1
  %82 = lshr i32 %81, 1
  %83 = and i32 %81, -2147450880
  %84 = and i32 %82, 1039089135
  %85 = or disjoint i32 %84, %83
  store i32 %85, ptr %80, align 1
  %86 = getelementptr i8, ptr %28, i32 32
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull @gGameRecordOtherStatusPalette, ptr noundef %86) #4
  br label %87

87:                                               ; preds = %38, %36
  %88 = getelementptr i8, ptr %28, i32 64
  %89 = add nuw nsw i32 %27, 1
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %26

91:                                               ; preds = %87
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPreparePreviousGameRecordSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x [6 x i8]], ptr @gGameRecordSelectionSlotPairs, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %5, i16 noundef signext -5632, i16 noundef signext 512, i16 noundef signext -512) #4
  %6 = add i8 %5, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %6, i16 noundef signext -5632, i16 noundef signext 512, i16 noundef signext -512) #4
  %7 = getelementptr i8, ptr %4, i32 2
  %8 = load i8, ptr %7, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %8, i16 noundef signext 3072, i16 noundef signext 0, i16 noundef signext 0) #4
  %9 = add i8 %8, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %9, i16 noundef signext 3072, i16 noundef signext 0, i16 noundef signext 0) #4
  %10 = getelementptr i8, ptr %4, i32 4
  %11 = load i8, ptr %10, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %11, i16 noundef signext 2560, i16 noundef signext -512, i16 noundef signext 512) #4
  %12 = add i8 %11, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %12, i16 noundef signext 2560, i16 noundef signext -512, i16 noundef signext 512) #4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectPreviousGameRecordCandidate(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x [6 x i8]], ptr @gGameRecordSelectionSlotPairs, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %5, i16 noundef signext 2560, i16 noundef signext 512, i16 noundef signext -512) #4
  %6 = add i8 %5, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %6, i16 noundef signext 2560, i16 noundef signext 512, i16 noundef signext -512) #4
  %7 = getelementptr i8, ptr %4, i32 2
  %8 = load i8, ptr %7, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %8, i16 noundef signext 3072, i16 noundef signext 0, i16 noundef signext 0) #4
  %9 = add i8 %8, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %9, i16 noundef signext 3072, i16 noundef signext 0, i16 noundef signext 0) #4
  %10 = getelementptr i8, ptr %4, i32 4
  %11 = load i8, ptr %10, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %11, i16 noundef signext -5632, i16 noundef signext -512, i16 noundef signext 512) #4
  %12 = add i8 %11, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %12, i16 noundef signext -5632, i16 noundef signext -512, i16 noundef signext 512) #4
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %16 = add i8 %15, -1
  br label %17

17:                                               ; preds = %1, %14
  %18 = phi i8 [ %16, %14 ], [ 2, %1 ]
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  tail call arm_apcscc void @RefreshGameRecordSelectionPalettes(ptr noundef %0) #7
  ret i32 4
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareNextGameRecordSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x [6 x i8]], ptr @gGameRecordSelectionSlotPairs, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %5, i16 noundef signext 5632, i16 noundef signext 512, i16 noundef signext -512) #4
  %6 = add i8 %5, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %6, i16 noundef signext 5632, i16 noundef signext 512, i16 noundef signext -512) #4
  %7 = getelementptr i8, ptr %4, i32 2
  %8 = load i8, ptr %7, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %8, i16 noundef signext -2560, i16 noundef signext -512, i16 noundef signext 512) #4
  %9 = add i8 %8, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %9, i16 noundef signext -2560, i16 noundef signext -512, i16 noundef signext 512) #4
  %10 = getelementptr i8, ptr %4, i32 4
  %11 = load i8, ptr %10, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %11, i16 noundef signext -3072, i16 noundef signext 0, i16 noundef signext 0) #4
  %12 = add i8 %11, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %12, i16 noundef signext -3072, i16 noundef signext 0, i16 noundef signext 0) #4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectNextGameRecordCandidate(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x [6 x i8]], ptr @gGameRecordSelectionSlotPairs, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %5, i16 noundef signext -2560, i16 noundef signext 512, i16 noundef signext -512) #4
  %6 = add i8 %5, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %6, i16 noundef signext -2560, i16 noundef signext 512, i16 noundef signext -512) #4
  %7 = getelementptr i8, ptr %4, i32 2
  %8 = load i8, ptr %7, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %8, i16 noundef signext 5632, i16 noundef signext -512, i16 noundef signext 512) #4
  %9 = add i8 %8, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %9, i16 noundef signext 5632, i16 noundef signext -512, i16 noundef signext 512) #4
  %10 = getelementptr i8, ptr %4, i32 4
  %11 = load i8, ptr %10, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %11, i16 noundef signext -3072, i16 noundef signext 0, i16 noundef signext 0) #4
  %12 = add i8 %11, 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %12, i16 noundef signext -3072, i16 noundef signext 0, i16 noundef signext 0) #4
  %13 = icmp eq i8 %2, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %16 = add i8 %15, 1
  br label %17

17:                                               ; preds = %1, %14
  %18 = phi i8 [ %16, %14 ], [ 0, %1 ]
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  tail call arm_apcscc void @RefreshGameRecordSelectionPalettes(ptr noundef %0) #7
  ret i32 4
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 7031}
!5 = !{i64 7120}
!6 = !{i64 14012}
!7 = !{i64 14330}
!8 = !{i64 14576}
