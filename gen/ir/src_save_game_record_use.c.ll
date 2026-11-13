; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

%struct.GameRecordDescriptor = type { i32 }
%struct.GameRecordTextBanks = type { [4 x ptr] }
%struct.GameRecordResult = type { ptr, i8, i8, i8, i8, i8 }
%struct.GameRecordAccumulatorEntry = type { ptr, i8, i8, i8, i8 }
%union.GameRecordSlot = type { %struct.anon }
%struct.anon = type { i32 }
%struct.GameRecordRenderResources = type { ptr, ptr }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gGameRecordClassWords5CBF80 = external dso_local constant [0 x i16], align 2
@gGameRecordCategoryOffsets5CBF8C = external dso_local constant [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gGameRecordSpecialTextTables = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gGameRecordText3CE0 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gGameRecordTextTables = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gGameRecordTextTarget00AE0 = external dso_local global [0 x i8], align 1
@gGameCounterTextTables = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gGameRecordDescriptorsCFE8 = external dso_local local_unnamed_addr constant [0 x %struct.GameRecordDescriptor], align 1
@gSaveGroup2Block1CB20 = external dso_local global [0 x i8], align 1
@gGameRecordTileBuffer1BE60 = external dso_local global [0 x i8], align 1
@gGameRecordRenderBanks = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gGameRecordTransferDestinations = external dso_local local_unnamed_addr global [0 x i32], align 4
@gGameRecordRenderIndexBanks = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gGameRecordSingleCountTextBanks = external dso_local local_unnamed_addr constant %struct.GameRecordTextBanks, align 4
@gGameRecordOtherCountTextBanks = external dso_local local_unnamed_addr constant %struct.GameRecordTextBanks, align 4
@gGameRecordRemainingCountGraphics = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gGameRecordTransferBufferF720 = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConsumeSelectedGameRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GameRecordResult, align 4
  %3 = alloca [6 x i16], align 2
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = call arm_apcscc ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull @gGameRecordClassWords5CBF80, i32 noundef 12) #9
  %6 = call arm_apcscc ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull @gGameRecordCategoryOffsets5CBF8C, i32 noundef 4) #9
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %8 = load i8, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  %9 = add i8 %8, 1
  %10 = call arm_apcscc i32 @ConsumeGameRecord(i16 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef nonnull %2) #9
  switch i32 %10, label %18 [
    i32 0, label %11
    i32 -1, label %19
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 515
  %15 = trunc i16 %13 to i8
  %16 = lshr i16 %13, 8
  %17 = trunc i16 %16 to i8
  br i1 %14, label %19, label %25

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %1, %11, %18
  %20 = phi i16 [ 2, %18 ], [ 1, %11 ], [ 0, %1 ]
  store i16 %20, ptr @gScriptResult, align 2
  %21 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 44), align 1
  %23 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 45), align 1
  br label %216

25:                                               ; preds = %11
  store i16 3, ptr @gScriptResult, align 2
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 44), align 1
  %26 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 2
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 45), align 1
  %27 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 1), align 4
  %28 = and i16 %13, 255
  %29 = zext nneg i16 %28 to i32
  %30 = getelementptr [4 x i8], ptr %4, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 9
  %34 = add i32 %33, %27
  %35 = inttoptr i32 %34 to ptr
  %36 = load ptr, ptr %2, align 4
  br label %37

37:                                               ; preds = %69, %25
  %38 = phi i32 [ 0, %25 ], [ %70, %69 ]
  %39 = phi ptr [ %35, %25 ], [ %71, %69 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  store ptr %36, ptr %39, align 4
  %43 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %39, i32 0, i32 1
  store i8 %15, ptr %43, align 4
  %44 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %39, i32 0, i32 2
  store i8 %17, ptr %44, align 1
  %45 = icmp eq i8 %15, 0
  %46 = icmp eq i8 %17, 6
  %47 = and i1 %45, %46
  %48 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %39, i32 0, i32 3
  br i1 %47, label %49, label %50

49:                                               ; preds = %42
  store i8 10, ptr %48, align 2
  br label %73

50:                                               ; preds = %42
  store i8 1, ptr %48, align 2
  br label %73

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %39, i32 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, %15
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %39, i32 0, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, %17
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = icmp eq i8 %15, 0
  %61 = icmp eq i8 %17, 6
  %62 = and i1 %60, %61
  %63 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %39, i32 0, i32 3
  %64 = load i8, ptr %63, align 2
  br i1 %62, label %65, label %67

65:                                               ; preds = %59
  %66 = add i8 %64, 10
  store i8 %66, ptr %63, align 2
  br label %73

67:                                               ; preds = %59
  %68 = add i8 %64, 1
  store i8 %68, ptr %63, align 2
  br label %73

69:                                               ; preds = %55, %51
  %70 = add nuw nsw i32 %38, 1
  %71 = getelementptr %struct.GameRecordAccumulatorEntry, ptr %39, i32 1
  %72 = icmp eq i32 %70, 64
  br i1 %72, label %73, label %37

73:                                               ; preds = %69, %49, %50, %65, %67
  %74 = load i8, ptr %12, align 4
  switch i8 %74, label %216 [
    i8 0, label %75
    i8 1, label %144
    i8 2, label %150
  ]

75:                                               ; preds = %73
  %76 = load i8, ptr %26, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, -1
  %79 = getelementptr [6 x i16], ptr %3, i32 0, i32 %78
  %80 = load i16, ptr %79, align 2
  store i16 %80, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %81 = icmp eq i8 %76, 6
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load ptr, ptr getelementptr ([0 x ptr], ptr @gGameRecordSpecialTextTables, i32 0, i32 6), align 4
  %84 = icmp eq ptr %83, @gDefaultTaskContextScript
  %85 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  br i1 %84, label %90, label %86

86:                                               ; preds = %82
  %87 = zext i8 %85 to i32
  %88 = getelementptr ptr, ptr %83, i32 %87
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %82, %86
  %91 = phi ptr [ %89, %86 ], [ @gDefaultTaskContextScript, %82 ]
  %92 = icmp eq i8 %85, 3
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  store i8 15, ptr @gGameRecordText3CE0, align 1
  store i8 101, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 1), align 1
  store i8 115, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 2), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 3), align 1
  br label %107

94:                                               ; preds = %75
  %95 = getelementptr [0 x ptr], ptr @gGameRecordTextTables, i32 0, i32 %77
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, @gDefaultTaskContextScript
  %98 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  br i1 %97, label %103, label %99

99:                                               ; preds = %94
  %100 = zext i8 %98 to i32
  %101 = getelementptr ptr, ptr %96, i32 %100
  %102 = load ptr, ptr %101, align 4
  br label %103

103:                                              ; preds = %94, %99
  %104 = phi ptr [ %102, %99 ], [ @gDefaultTaskContextScript, %94 ]
  %105 = icmp ne i8 %98, 3
  %106 = zext i1 %105 to i8
  br label %107

107:                                              ; preds = %90, %93, %103
  %108 = phi i32 [ 0, %103 ], [ 0, %90 ], [ 4, %93 ]
  %109 = phi ptr [ %104, %103 ], [ %91, %90 ], [ %91, %93 ]
  %110 = phi i8 [ %106, %103 ], [ 0, %90 ], [ 0, %93 ]
  %111 = phi i8 [ 0, %103 ], [ 1, %90 ], [ 1, %93 ]
  br label %112

112:                                              ; preds = %107, %136
  %113 = phi i32 [ %141, %136 ], [ %108, %107 ]
  %114 = phi ptr [ %117, %136 ], [ %109, %107 ]
  %115 = phi i8 [ %138, %136 ], [ %110, %107 ]
  %116 = phi i8 [ %137, %136 ], [ %111, %107 ]
  %117 = getelementptr i8, ptr %114, i32 1
  %118 = load i8, ptr %114, align 1
  switch i8 %118, label %125 [
    i8 0, label %119
    i8 1, label %121
  ]

119:                                              ; preds = %112
  %120 = getelementptr [0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 %113
  store i8 0, ptr %120, align 1
  br label %143

121:                                              ; preds = %112
  %122 = icmp ne i8 %116, 0
  %123 = zext i1 %122 to i8
  %124 = add i8 %116, 1
  br label %136

125:                                              ; preds = %112
  %126 = icmp eq i8 %115, 0
  %127 = add i8 %118, -97
  %128 = icmp ult i8 %127, 49
  %129 = and i1 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = add i8 %118, -85
  br label %136

132:                                              ; preds = %125
  %133 = add i8 %118, -12
  %134 = icmp ult i8 %133, 49
  %135 = select i1 %134, i8 1, i8 %115
  br label %136

136:                                              ; preds = %132, %130, %121
  %137 = phi i8 [ %124, %121 ], [ %116, %130 ], [ %116, %132 ]
  %138 = phi i8 [ %123, %121 ], [ 1, %130 ], [ %135, %132 ]
  %139 = phi i8 [ 1, %121 ], [ %131, %130 ], [ %118, %132 ]
  %140 = getelementptr [0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 %113
  store i8 %139, ptr %140, align 1
  %141 = add nuw nsw i32 %113, 1
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %143, label %112

143:                                              ; preds = %136, %119
  store i8 0, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 31), align 1
  store i32 ptrtoint (ptr @gGameRecordTextTarget00AE0 to i32), ptr @gTaskTextVariables2BB0, align 4
  br label %216

144:                                              ; preds = %73
  %145 = load i8, ptr %26, align 1
  %146 = zext i8 %145 to i16
  %147 = add nuw nsw i16 %146, 157
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext %147, i32 noundef 1) #9
  %148 = load ptr, ptr %2, align 4
  %149 = ptrtoint ptr %148 to i32
  store i32 %149, ptr @gTaskTextVariables2BB0, align 4
  br label %216

150:                                              ; preds = %73
  %151 = load i8, ptr %26, align 1
  %152 = call arm_apcscc zeroext i8 @QueryGameCounter(i8 noundef zeroext %151) #9
  %153 = icmp eq i8 %152, -1
  %154 = zext i1 %153 to i32
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext 301, i32 noundef %154) #9
  %155 = load i8, ptr %26, align 1
  %156 = call arm_apcscc i32 @AdjustGameCounter(i8 noundef zeroext %155, i32 noundef 1) #9
  %157 = load i8, ptr %26, align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr [0 x ptr], ptr @gGameCounterTextTables, i32 0, i32 %158
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, @gDefaultTaskContextScript
  br i1 %161, label %167, label %162

162:                                              ; preds = %150
  %163 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %164 = zext i8 %163 to i32
  %165 = getelementptr ptr, ptr %160, i32 %164
  %166 = load ptr, ptr %165, align 4
  br label %167

167:                                              ; preds = %150, %162
  %168 = phi ptr [ %166, %162 ], [ @gDefaultTaskContextScript, %150 ]
  br label %169

169:                                              ; preds = %167, %196
  %170 = phi i32 [ %201, %196 ], [ 0, %167 ]
  %171 = phi ptr [ %174, %196 ], [ %168, %167 ]
  %172 = phi i8 [ %198, %196 ], [ 1, %167 ]
  %173 = phi i8 [ %197, %196 ], [ 0, %167 ]
  %174 = getelementptr i8, ptr %171, i32 1
  %175 = load i8, ptr %171, align 1
  switch i8 %175, label %185 [
    i8 0, label %176
    i8 1, label %178
  ]

176:                                              ; preds = %169
  %177 = getelementptr [0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 %170
  store i8 0, ptr %177, align 1
  br label %203

178:                                              ; preds = %169
  %179 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %180 = icmp eq i8 %179, 3
  %181 = icmp ne i8 %173, 0
  %182 = select i1 %180, i1 %181, i1 false
  %183 = zext i1 %182 to i8
  %184 = add i8 %173, 1
  br label %196

185:                                              ; preds = %169
  %186 = icmp eq i8 %172, 0
  %187 = add i8 %175, -97
  %188 = icmp ult i8 %187, 49
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = add i8 %175, -85
  br label %196

192:                                              ; preds = %185
  %193 = add i8 %175, -12
  %194 = icmp ult i8 %193, 49
  %195 = select i1 %194, i8 1, i8 %172
  br label %196

196:                                              ; preds = %192, %190, %178
  %197 = phi i8 [ %184, %178 ], [ %173, %190 ], [ %173, %192 ]
  %198 = phi i8 [ %183, %178 ], [ 1, %190 ], [ %195, %192 ]
  %199 = phi i8 [ 1, %178 ], [ %191, %190 ], [ %175, %192 ]
  %200 = getelementptr [0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 %170
  store i8 %199, ptr %200, align 1
  %201 = add nuw nsw i32 %170, 1
  %202 = icmp eq i32 %201, 32
  br i1 %202, label %203, label %169

203:                                              ; preds = %196, %176
  store i8 0, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 31), align 1
  store i32 ptrtoint (ptr @gGameRecordTextTarget00AE0 to i32), ptr @gTaskTextVariables2BB0, align 4
  %204 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %205 = icmp eq i8 %204, 3
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = load i8, ptr @gGameRecordText3CE0, align 1
  switch i8 %207, label %216 [
    i8 117, label %208
    i8 100, label %212
  ]

208:                                              ; preds = %206
  %209 = load i8, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 1), align 1
  %210 = icmp eq i8 %209, 110
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  store i8 32, ptr @gGameRecordText3CE0, align 1
  br label %216

212:                                              ; preds = %206
  %213 = load i8, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 1), align 1
  %214 = icmp eq i8 %213, 117
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i8 15, ptr @gGameRecordText3CE0, align 1
  br label %216

216:                                              ; preds = %206, %208, %19, %143, %144, %73, %211, %215, %212, %203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ConsumeGameRecord(i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AccumulateGameRecordEntry(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
  br label %5

5:                                                ; preds = %4, %37
  %6 = phi i32 [ 0, %4 ], [ %38, %37 ]
  %7 = phi ptr [ %0, %4 ], [ %39, %37 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  store ptr %1, ptr %7, align 4
  %11 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %7, i32 0, i32 1
  store i8 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %7, i32 0, i32 2
  store i8 %3, ptr %12, align 1
  %13 = icmp eq i8 %2, 0
  %14 = icmp eq i8 %3, 6
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %7, i32 0, i32 3
  br i1 %15, label %17, label %18

17:                                               ; preds = %10
  store i8 10, ptr %16, align 2
  br label %41

18:                                               ; preds = %10
  store i8 1, ptr %16, align 2
  br label %41

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %7, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, %2
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %7, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, %3
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = icmp eq i8 %2, 0
  %29 = icmp eq i8 %3, 6
  %30 = and i1 %28, %29
  %31 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %7, i32 0, i32 3
  %32 = load i8, ptr %31, align 2
  br i1 %30, label %33, label %35

33:                                               ; preds = %27
  %34 = add i8 %32, 10
  store i8 %34, ptr %31, align 2
  br label %41

35:                                               ; preds = %27
  %36 = add i8 %32, 1
  store i8 %36, ptr %31, align 2
  br label %41

37:                                               ; preds = %23, %19
  %38 = add nuw nsw i32 %6, 1
  %39 = getelementptr %struct.GameRecordAccumulatorEntry, ptr %7, i32 1
  %40 = icmp eq i32 %38, 64
  br i1 %40, label %41, label %5

41:                                               ; preds = %37, %33, %35, %17, %18
  ret void
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc zeroext i8 @QueryGameCounter(i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @AdjustGameCounter(i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectNextGameRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  br label %11

3:                                                ; preds = %15
  store i16 %13, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %4 = and i16 %19, 127
  %5 = zext nneg i16 %4 to i32
  %6 = getelementptr [0 x %struct.GameRecordDescriptor], ptr @gGameRecordDescriptorsCFE8, i32 0, i32 %5
  %7 = load i32, ptr %6, align 1
  %8 = trunc i32 %7 to i16
  %9 = lshr i16 %8, 9
  %10 = and i16 %9, 3
  store i16 %10, ptr @gScriptResult, align 2
  br label %23

11:                                               ; preds = %15, %1
  %12 = phi i16 [ %13, %15 ], [ %2, %1 ]
  %13 = add i16 %12, 1
  %14 = icmp slt i16 %13, 64
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = sext i16 %13 to i32
  %17 = shl nsw i32 %16, 2
  %18 = getelementptr i8, ptr @gSaveGroup2Block1CB20, i32 %17
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, 3968
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %11, label %3

22:                                               ; preds = %11
  store i16 -1, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  br label %23

23:                                               ; preds = %22, %3
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectPreviousGameRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %3 = zext i16 %2 to i32
  br label %12

4:                                                ; preds = %17
  store i16 %15, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %5 = and i16 %21, 127
  %6 = zext nneg i16 %5 to i32
  %7 = getelementptr [0 x %struct.GameRecordDescriptor], ptr @gGameRecordDescriptorsCFE8, i32 0, i32 %6
  %8 = load i32, ptr %7, align 1
  %9 = trunc i32 %8 to i16
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 3
  store i16 %11, ptr @gScriptResult, align 2
  br label %26

12:                                               ; preds = %17, %1
  %13 = phi i32 [ %24, %17 ], [ %3, %1 ]
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, -1
  %16 = icmp sgt i16 %15, -1
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = zext nneg i16 %15 to i32
  %19 = shl nuw nsw i32 %18, 2
  %20 = getelementptr i8, ptr @gSaveGroup2Block1CB20, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, 3968
  %23 = icmp eq i16 %22, 0
  %24 = add nsw i32 %13, -1
  br i1 %23, label %12, label %4

25:                                               ; preds = %12
  store i16 -1, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  br label %26

26:                                               ; preds = %25, %4
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectCurrentOrNextGameRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %3 = icmp sgt i16 %2, 63
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 asm "", "={r3},{r3}"(i32 -1) #10, !srcloc !4
  br label %30

6:                                                ; preds = %1, %25
  %7 = phi i16 [ %26, %25 ], [ %2, %1 ]
  %8 = sext i16 %7 to i32
  %9 = shl nsw i32 %8, 2
  %10 = add i32 %9, ptrtoint (ptr @gSaveGroup2Block1CB20 to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 3968
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %6
  %16 = shl i16 %12, 2
  %17 = and i16 %16, 508
  %18 = or disjoint i16 %17, 1
  %19 = zext nneg i16 %18 to i32
  %20 = getelementptr i8, ptr @gGameRecordDescriptorsCFE8, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 3
  %24 = zext nneg i8 %23 to i32
  br label %30

25:                                               ; preds = %6
  %26 = add i16 %7, 1
  store i16 %26, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %27 = icmp slt i16 %26, 64
  br i1 %27, label %6, label %28

28:                                               ; preds = %25
  %29 = tail call i32 asm "", "={r1},{r1}"(i32 -1) #10, !srcloc !5
  br label %30

30:                                               ; preds = %4, %28, %15
  %31 = phi i32 [ %5, %4 ], [ %24, %15 ], [ %29, %28 ]
  %32 = phi ptr [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), %4 ], [ @gScriptResult, %15 ], [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), %28 ]
  %33 = trunc i32 %31 to i16
  store i16 %33, ptr %32, align 2
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectLastGameRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %1, %17
  %3 = phi i16 [ 63, %1 ], [ %18, %17 ]
  %4 = zext nneg i16 %3 to i32
  %5 = getelementptr %union.GameRecordSlot, ptr @gSaveGroup2Block1CB20, i32 %4
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 3968
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  store i16 %3, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %10 = and i16 %6, 127
  %11 = zext nneg i16 %10 to i32
  %12 = getelementptr [0 x %struct.GameRecordDescriptor], ptr @gGameRecordDescriptorsCFE8, i32 0, i32 %11
  %13 = load i32, ptr %12, align 1
  %14 = trunc i32 %13 to i16
  %15 = lshr i16 %14, 9
  %16 = and i16 %15, 3
  store i16 %16, ptr @gScriptResult, align 2
  br label %21

17:                                               ; preds = %2
  %18 = add nsw i16 %3, -1
  %19 = icmp eq i16 %3, 0
  br i1 %19, label %20, label %2

20:                                               ; preds = %17
  store i16 -1, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  br label %21

21:                                               ; preds = %20, %9
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackQueueSelectedGameRecordGraphics(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 44), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x ptr], ptr @gGameRecordRenderBanks, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 45), align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr %struct.GameRecordRenderResources, ptr %5, i32 %7
  %9 = getelementptr %struct.GameRecordRenderResources, ptr %8, i32 -1
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %10, ptr noundef nonnull @gGameRecordTileBuffer1BE60) #9
  tail call arm_apcscc void @QueueDmaTileRows(i32 noundef ptrtoint (ptr @gGameRecordTileBuffer1BE60 to i32), i32 noundef 100759360, i32 noundef 3, i32 noundef 3) #9
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 44), align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x ptr], ptr @gGameRecordRenderBanks, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 45), align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = getelementptr ptr, ptr %14, i32 %17
  %19 = getelementptr ptr, ptr %18, i32 -1
  %20 = load ptr, ptr %19, align 4
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %20, ptr noundef inttoptr (i32 sub (i32 ptrtoint (ptr @gGameRecordTileBuffer1BE60 to i32), i32 51008) to ptr)) #9
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 44), align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr [0 x ptr], ptr @gGameRecordRenderIndexBanks, i32 0, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 45), align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = getelementptr i8, ptr %27, i32 -1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr [0 x i32], ptr @gGameRecordTransferDestinations, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef sub (i32 ptrtoint (ptr @gGameRecordTileBuffer1BE60 to i32), i32 51008), i32 noundef %32, i32 noundef 10) #9
  ret i32 0
}

declare dso_local arm_apcscc void @BiosLZ77VRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @QueueDmaTileRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPresentNextAccumulatedGameRecord(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %8
  %10 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 1), align 4
  %11 = load i8, ptr %9, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 9
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  br label %92

16:                                               ; preds = %146, %132, %118, %104, %92
  %17 = phi ptr [ %93, %92 ], [ %105, %104 ], [ %119, %118 ], [ %133, %132 ], [ %147, %146 ]
  %18 = phi i8 [ %95, %92 ], [ %107, %104 ], [ %121, %118 ], [ %135, %132 ], [ %149, %146 ]
  %19 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %17, i32 0, i32 2
  %20 = zext i8 %18 to i32
  %21 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %17, i32 0, i32 3
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 1
  %24 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %17, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  br i1 %23, label %33, label %27

27:                                               ; preds = %16
  %28 = getelementptr [4 x ptr], ptr @gGameRecordOtherCountTextBanks, i32 0, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 %20
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, @gDefaultTaskContextScript
  br i1 %32, label %45, label %39

33:                                               ; preds = %16
  %34 = getelementptr [4 x ptr], ptr @gGameRecordSingleCountTextBanks, i32 0, i32 %26
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr ptr, ptr %35, i32 %20
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @gDefaultTaskContextScript
  br i1 %38, label %45, label %39

39:                                               ; preds = %33, %27
  %40 = phi ptr [ %31, %27 ], [ %37, %33 ]
  %41 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr ptr, ptr %40, i32 %42
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %39, %33, %27
  %46 = phi ptr [ @gDefaultTaskContextScript, %27 ], [ @gDefaultTaskContextScript, %33 ], [ %44, %39 ]
  %47 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %17, i32 0, i32 1
  br label %48

48:                                               ; preds = %45, %81
  %49 = phi i32 [ 0, %45 ], [ %86, %81 ]
  %50 = phi i32 [ 1, %45 ], [ %84, %81 ]
  %51 = phi i8 [ 0, %45 ], [ %82, %81 ]
  %52 = phi ptr [ %46, %45 ], [ %53, %81 ]
  %53 = getelementptr i8, ptr %52, i32 1
  %54 = load i8, ptr %52, align 1
  switch i8 %54, label %70 [
    i8 0, label %55
    i8 1, label %57
  ]

55:                                               ; preds = %48
  %56 = getelementptr [0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 %49
  store i8 0, ptr %56, align 1
  br label %88

57:                                               ; preds = %48
  %58 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %59 = icmp eq i8 %58, 3
  %60 = icmp ne i32 %50, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i8, ptr %47, align 4
  %64 = icmp ne i8 %63, 2
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %57, %62
  %67 = phi i8 [ %65, %62 ], [ 1, %57 ]
  %68 = add i32 %50, 1
  %69 = and i32 %68, 255
  br label %81

70:                                               ; preds = %48
  %71 = icmp eq i8 %51, 0
  %72 = add i8 %54, -97
  %73 = icmp ult i8 %72, 49
  %74 = and i1 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = add i8 %54, -85
  br label %81

77:                                               ; preds = %70
  %78 = add i8 %54, -12
  %79 = icmp ult i8 %78, 49
  %80 = select i1 %79, i8 1, i8 %51
  br label %81

81:                                               ; preds = %77, %75, %66
  %82 = phi i8 [ %67, %66 ], [ 1, %75 ], [ %80, %77 ]
  %83 = phi i8 [ 1, %66 ], [ %76, %75 ], [ %54, %77 ]
  %84 = phi i32 [ %69, %66 ], [ %50, %75 ], [ %50, %77 ]
  %85 = getelementptr [0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 %49
  store i8 %83, ptr %85, align 1
  %86 = add nuw nsw i32 %49, 1
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %48

88:                                               ; preds = %81, %55
  store i8 0, ptr getelementptr ([0 x i8], ptr @gGameRecordText3CE0, i32 0, i32 31), align 1
  store i32 ptrtoint (ptr @gGameRecordTextTarget00AE0 to i32), ptr @gTaskTextVariables2BB0, align 4
  %89 = load i8, ptr %21, align 2
  store i8 %89, ptr @gRasterScriptControlBytes, align 1
  br label %156

90:                                               ; preds = %92
  %91 = getelementptr %struct.GameRecordAccumulatorEntry, ptr %93, i32 1
  br label %92

92:                                               ; preds = %1, %90
  %93 = phi ptr [ %91, %90 ], [ %15, %1 ]
  %94 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %93, i32 0, i32 2
  %95 = load i8, ptr %94, align 1
  switch i8 %95, label %16 [
    i8 0, label %96
    i8 -1, label %90
  ]

96:                                               ; preds = %92
  %97 = add i8 %11, 1
  store i8 %97, ptr %9, align 1
  %98 = icmp ult i8 %97, 4
  br i1 %98, label %99, label %156

99:                                               ; preds = %96
  %100 = zext nneg i8 %97 to i32
  %101 = shl nuw nsw i32 %100, 9
  %102 = add i32 %101, %10
  %103 = inttoptr i32 %102 to ptr
  br label %104

104:                                              ; preds = %108, %99
  %105 = phi ptr [ %109, %108 ], [ %103, %99 ]
  %106 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %105, i32 0, i32 2
  %107 = load i8, ptr %106, align 1
  switch i8 %107, label %16 [
    i8 0, label %110
    i8 -1, label %108
  ]

108:                                              ; preds = %104
  %109 = getelementptr %struct.GameRecordAccumulatorEntry, ptr %105, i32 1
  br label %104

110:                                              ; preds = %104
  %111 = add i8 %11, 2
  store i8 %111, ptr %9, align 1
  %112 = icmp ult i8 %111, 4
  br i1 %112, label %113, label %156

113:                                              ; preds = %110
  %114 = zext nneg i8 %111 to i32
  %115 = shl nuw nsw i32 %114, 9
  %116 = add i32 %115, %10
  %117 = inttoptr i32 %116 to ptr
  br label %118

118:                                              ; preds = %122, %113
  %119 = phi ptr [ %123, %122 ], [ %117, %113 ]
  %120 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %119, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  switch i8 %121, label %16 [
    i8 0, label %124
    i8 -1, label %122
  ]

122:                                              ; preds = %118
  %123 = getelementptr %struct.GameRecordAccumulatorEntry, ptr %119, i32 1
  br label %118

124:                                              ; preds = %118
  %125 = add i8 %11, 3
  store i8 %125, ptr %9, align 1
  %126 = icmp ult i8 %125, 4
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = zext nneg i8 %125 to i32
  %129 = shl nuw nsw i32 %128, 9
  %130 = add i32 %129, %10
  %131 = inttoptr i32 %130 to ptr
  br label %132

132:                                              ; preds = %136, %127
  %133 = phi ptr [ %137, %136 ], [ %131, %127 ]
  %134 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %133, i32 0, i32 2
  %135 = load i8, ptr %134, align 1
  switch i8 %135, label %16 [
    i8 0, label %138
    i8 -1, label %136
  ]

136:                                              ; preds = %132
  %137 = getelementptr %struct.GameRecordAccumulatorEntry, ptr %133, i32 1
  br label %132

138:                                              ; preds = %132
  %139 = add i8 %11, 4
  store i8 %139, ptr %9, align 1
  %140 = icmp ugt i8 %11, -5
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = zext nneg i8 %139 to i32
  %143 = shl nuw nsw i32 %142, 9
  %144 = add i32 %143, %10
  %145 = inttoptr i32 %144 to ptr
  br label %146

146:                                              ; preds = %150, %141
  %147 = phi ptr [ %151, %150 ], [ %145, %141 ]
  %148 = getelementptr inbounds %struct.GameRecordAccumulatorEntry, ptr %147, i32 0, i32 2
  %149 = load i8, ptr %148, align 1
  switch i8 %149, label %16 [
    i8 0, label %152
    i8 -1, label %150
  ]

150:                                              ; preds = %146
  %151 = getelementptr %struct.GameRecordAccumulatorEntry, ptr %147, i32 1
  br label %146

152:                                              ; preds = %146
  %153 = add nsw i8 %11, 5
  store i8 %153, ptr %9, align 1
  %154 = icmp ult i8 %153, 4
  %155 = xor i1 %154, true
  call void @llvm.assume(i1 %155)
  br label %156

156:                                              ; preds = %96, %110, %124, %138, %152, %88
  %157 = phi ptr [ %19, %88 ], [ %9, %152 ], [ %9, %138 ], [ %9, %124 ], [ %9, %110 ], [ %9, %96 ]
  store i8 -1, ptr %157, align 1
  ret i32 2
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackQueueRemainingGameRecordGraphics(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GameRecordResult, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 33), align 2
  %4 = trunc i16 %3 to i8
  %5 = call arm_apcscc i32 @QueryGameRecord(i8 noundef zeroext %4, ptr noundef nonnull %2) #9
  %6 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 %8, %11
  %13 = getelementptr [0 x ptr], ptr @gGameRecordRemainingCountGraphics, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  call arm_apcscc void @BiosLZ77VRAM(ptr noundef %14, ptr noundef nonnull @gGameRecordTransferBufferF720) #9
  call arm_apcscc void @QueueDmaTransfer(i32 noundef ptrtoint (ptr @gGameRecordTransferBufferF720 to i32), i32 noundef 83887020, i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  ret i32 0
}

declare dso_local arm_apcscc i32 @QueryGameRecord(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @GameRecordInitializationNoop() local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 7835}
!5 = !{i64 8584}
