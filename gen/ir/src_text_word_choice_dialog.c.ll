; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.WordChoiceRecord = type { i32, i32, ptr }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.WordChoiceDescriptor = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8 }
%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gWordChoiceDescriptorFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gWordChoiceFamily = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceState = external dso_local local_unnamed_addr global i16, align 2
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gWordChoiceCount = external dso_local local_unnamed_addr global i8, align 1
@gWordExpressionCursor = external dso_local local_unnamed_addr global ptr, align 4
@gWordChoiceRecords = external dso_local global [0 x %struct.WordChoiceRecord], align 4
@gWordChoiceOptionFlags = external dso_local local_unnamed_addr global i16, align 2
@gWordChoiceFlags = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gWordChoiceInitialGraphicsScript = external dso_local constant [0 x i8], align 1
@gWordChoiceTaskTiles = external dso_local global [0 x i8], align 1
@gTaskTextPairScriptsFirst = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gTaskTextBundles = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gWordChoiceRow = external dso_local global i8, align 1
@gWordChoiceColumn = external dso_local local_unnamed_addr global i8, align 1
@gPendingScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gWordChoiceCloseDelay = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @UpdateWordChoiceDialog(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gWordChoiceFamily, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x ptr], ptr @gWordChoiceDescriptorFamilies, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr @gWordChoiceState, align 2
  switch i16 %8, label %370 [
    i16 0, label %9
    i16 1, label %173
    i16 2, label %184
    i16 3, label %341
    i16 5, label %349
    i16 6, label %353
  ]

9:                                                ; preds = %3
  %10 = load ptr, ptr @gRenderStates, align 4
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %370

14:                                               ; preds = %9
  store i8 0, ptr @gWordChoiceCount, align 1
  %15 = inttoptr i32 %2 to ptr
  store ptr %15, ptr @gWordExpressionCursor, align 4
  %16 = and i32 %0, 255
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14, %35
  %19 = phi i32 [ %24, %35 ], [ 0, %14 ]
  %20 = load ptr, ptr @gWordExpressionCursor, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %21) #2
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i32 %19, 1
  br i1 %23, label %35, label %25

25:                                               ; preds = %18
  %26 = load i8, ptr @gWordChoiceCount, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr [0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 %27
  store i32 %24, ptr %28, align 4
  %29 = load i16, ptr @gWordChoiceOptionFlags, align 2
  %30 = zext i16 %29 to i32
  %31 = lshr i32 %30, %19
  %32 = and i32 %31, 1
  %33 = getelementptr [0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 %27, i32 1
  store i32 %32, ptr %33, align 4
  %34 = add i8 %26, 1
  store i8 %34, ptr @gWordChoiceCount, align 1
  br label %35

35:                                               ; preds = %18, %25
  %36 = icmp eq i32 %24, %16
  br i1 %36, label %37, label %18

37:                                               ; preds = %35
  %38 = load i8, ptr @gWordChoiceCount, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ult i8 %38, 9
  br i1 %40, label %41, label %48

41:                                               ; preds = %14, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %14 ]
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i32 [ %46, %43 ], [ %42, %41 ]
  %45 = getelementptr [0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 %44
  store i32 0, ptr %45, align 4
  %46 = add nuw nsw i32 %44, 1
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %43

48:                                               ; preds = %43, %37
  %49 = phi i32 [ %39, %37 ], [ %42, %43 ]
  %50 = getelementptr ptr, ptr %7, i32 %49
  %51 = getelementptr ptr, ptr %50, i32 -1
  %52 = load ptr, ptr %51, align 4
  %53 = load i8, ptr @gWordChoiceFlags, align 1
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  tail call arm_apcscc void @SetLeaderIdleRenderAnimations() #2
  %57 = load i8, ptr @gRenderClassSlots1, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call arm_apcscc void @RefreshWordChoiceAnimations() #2
  br label %60

60:                                               ; preds = %56, %59, %48
  %61 = load ptr, ptr %52, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 136, ptr noundef %61) #2
  %62 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %52, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, ptr @gWordChoiceInitialGraphicsScript, ptr %63
  tail call arm_apcscc void @InitializeGraphicsScript(i8 noundef zeroext 0, ptr noundef nonnull %65) #2
  tail call void asm sideeffect "", "{r4}"(ptr nonnull @gWordChoiceRecords) #3, !srcloc !4
  tail call void asm sideeffect "", "{r0}"(i32 1) #3, !srcloc !5
  %66 = getelementptr i8, ptr %1, i32 -1
  %67 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %52, i32 0, i32 6
  %68 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %52, i32 0, i32 7
  br label %69

69:                                               ; preds = %60, %162
  %70 = phi i32 [ 0, %60 ], [ %170, %162 ]
  %71 = phi i32 [ 0, %60 ], [ %167, %162 ]
  %72 = phi ptr [ @gWordChoiceRecords, %60 ], [ %169, %162 ]
  %73 = phi ptr [ inttoptr (i32 add (i32 ptrtoint (ptr @gWordChoiceRecords to i32), i32 8) to ptr), %60 ], [ %165, %162 ]
  %74 = phi i32 [ 0, %60 ], [ %166, %162 ]
  %75 = tail call ptr asm "", "={r1},{r1}"(ptr %72) #4, !srcloc !6
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  %78 = load i8, ptr %67, align 2
  %79 = zext i8 %78 to i32
  %80 = tail call arm_apcscc ptr @AllocateTaskContext(i32 noundef %79) #2
  store ptr %80, ptr %73, align 4
  %81 = load i8, ptr %67, align 2
  %82 = zext i8 %81 to i32
  %83 = mul i32 %71, %82
  %84 = add i32 %83, ptrtoint (ptr @gWordChoiceTaskTiles to i32)
  %85 = getelementptr inbounds %struct.TaskContext, ptr %80, i32 0, i32 15
  store i32 %84, ptr %85, align 4
  %86 = load i8, ptr @gWordChoiceFlags, align 1
  %87 = and i8 %86, 32
  %88 = icmp eq i8 %87, 0
  %89 = load i8, ptr %67, align 2
  %90 = zext i8 %89 to i32
  %91 = load i8, ptr %68, align 1
  %92 = zext i8 %91 to i32
  br i1 %77, label %155, label %93

93:                                               ; preds = %69
  br i1 %88, label %106, label %94

94:                                               ; preds = %93
  tail call void asm sideeffect "", "r"(i32 1) #3, !srcloc !7
  %95 = tail call i32 asm "", "=r,0"(i32 ptrtoint (ptr @gWordChoiceRecords to i32)) #4, !srcloc !8
  %96 = add nuw nsw i32 %74, 4
  %97 = add i32 %96, %95
  %98 = inttoptr i32 %97 to ptr
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 3, i32 2
  %102 = load i8, ptr %67, align 2
  %103 = zext i8 %102 to i32
  %104 = mul i32 %71, %103
  %105 = add i32 %104, 100663328
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef nonnull %80, i32 noundef %90, i32 noundef 2, i32 noundef %92, i32 noundef 1, i32 noundef 0, i32 noundef %101, i32 noundef %105, i32 noundef 100709664) #2
  br label %116

106:                                              ; preds = %93
  %107 = tail call i32 asm "", "=r,0"(i32 ptrtoint (ptr @gWordChoiceRecords to i32)) #4, !srcloc !9
  %108 = add nuw nsw i32 %74, 4
  %109 = add i32 %108, %107
  %110 = inttoptr i32 %109 to ptr
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 3, i32 2
  %114 = mul i32 %71, %90
  %115 = add i32 %114, 100663328
  tail call arm_apcscc void @ConfigureTaskContextExtended(ptr noundef nonnull %80, i32 noundef %90, i32 noundef 2, i32 noundef %92, i32 noundef 1, i32 noundef 0, i32 noundef %113, i32 noundef %115, i32 noundef 100709664) #2
  br label %116

116:                                              ; preds = %106, %94
  %117 = add i32 %74, ptrtoint (ptr @gWordChoiceRecords to i32)
  %118 = inttoptr i32 %117 to ptr
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %66, i32 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ult i8 %121, 87
  br i1 %123, label %124, label %139

124:                                              ; preds = %116
  %125 = load ptr, ptr %73, align 4
  %126 = getelementptr [0 x ptr], ptr @gTaskTextPairScriptsFirst, i32 0, i32 %122
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, @gDefaultTaskContextScript
  br i1 %128, label %137, label %129

129:                                              ; preds = %124
  %130 = tail call i32 asm "", "=r,0"(i32 ptrtoint (ptr @gRasterScriptControlBytes to i32)) #4, !srcloc !10
  %131 = add i32 %130, 235
  %132 = inttoptr i32 %131 to ptr
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = getelementptr ptr, ptr %127, i32 %134
  %136 = load ptr, ptr %135, align 4
  br label %137

137:                                              ; preds = %129, %124
  %138 = phi ptr [ %136, %129 ], [ @gDefaultTaskContextScript, %124 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %125, ptr noundef %138) #2
  br label %162

139:                                              ; preds = %116
  %140 = tail call i32 asm "", "=r,0"(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 0, i32 2) to i32)) #4, !srcloc !11
  %141 = add i32 %140, %74
  %142 = inttoptr i32 %141 to ptr
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr [0 x ptr], ptr @gTaskTextBundles, i32 0, i32 %122
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, @gDefaultTaskContextScript
  br i1 %146, label %152, label %147

147:                                              ; preds = %139
  %148 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 235) to ptr), align 1
  %149 = zext i8 %148 to i32
  %150 = getelementptr ptr, ptr %145, i32 %149
  %151 = load ptr, ptr %150, align 4
  br label %152

152:                                              ; preds = %139, %147
  %153 = phi ptr [ %151, %147 ], [ @gDefaultTaskContextScript, %139 ]
  %154 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitial(ptr noundef %153, i32 noundef %70) #2
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %143, ptr noundef %154) #2
  br label %162

155:                                              ; preds = %69
  %156 = mul i32 %71, %90
  %157 = add i32 %156, 100663328
  br i1 %88, label %159, label %158

158:                                              ; preds = %155
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef nonnull %80, i32 noundef %90, i32 noundef 2, i32 noundef %92, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef %157, i32 noundef 100709664) #2
  br label %160

159:                                              ; preds = %155
  tail call arm_apcscc void @ConfigureTaskContextExtended(ptr noundef nonnull %80, i32 noundef %90, i32 noundef 2, i32 noundef %92, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef %157, i32 noundef 100709664) #2
  br label %160

160:                                              ; preds = %159, %158
  %161 = load ptr, ptr %73, align 4
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %161, ptr noundef nonnull @gDefaultTaskContextScript) #2
  br label %162

162:                                              ; preds = %137, %152, %160
  %163 = ptrtoint ptr %73 to i32
  %164 = add i32 %163, 12
  %165 = inttoptr i32 %164 to ptr
  %166 = add nuw nsw i32 %74, 12
  %167 = add nuw nsw i32 %71, 64
  %168 = tail call ptr asm "", "={r4},{r4}"(ptr %72) #4, !srcloc !12
  %169 = getelementptr %struct.WordChoiceRecord, ptr %168, i32 1
  %170 = add nuw nsw i32 %70, 1
  %171 = icmp eq i32 %170, 9
  br i1 %171, label %172, label %69

172:                                              ; preds = %162
  tail call arm_apcscc void @SetKeyRepeatDelays(i16 noundef zeroext 30, i16 noundef zeroext 8) #2
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 306) #2
  store i16 1, ptr @gWordChoiceState, align 2
  br label %370

173:                                              ; preds = %3
  %174 = load ptr, ptr @gRenderStates, align 4
  %175 = getelementptr inbounds %struct.BackgroundRenderState, ptr %174, i32 0, i32 9
  %176 = load i8, ptr %175, align 4
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %370

178:                                              ; preds = %173
  %179 = load i8, ptr @gWordChoiceCount, align 1
  %180 = zext i8 %179 to i32
  %181 = getelementptr ptr, ptr %7, i32 %180
  %182 = getelementptr ptr, ptr %181, i32 -1
  %183 = load ptr, ptr %182, align 4
  tail call arm_apcscc void @InitializeWordChoiceSelection(ptr noundef %183) #2
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 0, i32 noundef 1) #2
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef 1) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 1, i32 noundef 1) #2
  tail call arm_apcscc void @UpdateWordChoiceSelectionDisplay(ptr noundef %183) #2
  store i16 2, ptr @gWordChoiceState, align 2
  br label %370

184:                                              ; preds = %3
  %185 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 3, i8 noundef zeroext 1) #2
  %186 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 240, i8 noundef zeroext 2) #2
  %187 = or i16 %186, %185
  %188 = load i8, ptr @gWordChoiceCount, align 1
  %189 = zext i8 %188 to i32
  %190 = getelementptr ptr, ptr %7, i32 %189
  %191 = getelementptr ptr, ptr %190, i32 -1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %192, i32 0, i32 4
  %194 = load i8, ptr %193, align 4
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %195, -1
  %197 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %192, i32 0, i32 5
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = zext i16 %187 to i32
  %201 = and i32 %200, 1
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %223, label %203

203:                                              ; preds = %184
  %204 = load i8, ptr @gWordChoiceRow, align 1
  %205 = zext i8 %204 to i32
  %206 = mul nuw nsw i32 %205, %195
  %207 = load i8, ptr @gWordChoiceColumn, align 1
  %208 = zext i8 %207 to i32
  %209 = add nuw nsw i32 %206, %208
  %210 = getelementptr [0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 %209
  %211 = load i32, ptr %210, align 4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 0, i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 1, i32 noundef 0) #2
  %212 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %192, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 136, ptr noundef %213) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 8), align 4
  %214 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 8, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %214) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 7), align 4
  %215 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 7, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %215) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 6), align 4
  %216 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 6, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %216) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 5), align 4
  %217 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 5, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %217) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 4), align 4
  %218 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 4, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %218) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 3), align 4
  %219 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 3, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %219) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 2), align 4
  %220 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 2, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %220) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 1), align 4
  %221 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 1, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %221) #2
  store i32 0, ptr @gWordChoiceRecords, align 4
  %222 = load ptr, ptr getelementptr inbounds ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 0, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %222) #2
  tail call arm_apcscc void @InitializeKeys() #2
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 304) #2
  store i16 3, ptr @gWordChoiceState, align 2
  br label %370

223:                                              ; preds = %184
  %224 = load i8, ptr @gWordChoiceFlags, align 1
  %225 = zext i8 %224 to i32
  %226 = and i32 %225, 16
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = and i32 %225, 1
  %230 = icmp ne i32 %229, 0
  %231 = and i32 %200, 2
  %232 = icmp eq i32 %231, 0
  %233 = or i1 %232, %230
  br i1 %233, label %241, label %234

234:                                              ; preds = %228, %223
  %235 = load i16, ptr @gPendingScriptResult, align 2
  %236 = zext i16 %235 to i32
  %237 = icmp eq i16 %235, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  tail call arm_apcscc void @SetWordChoiceSelectionDisplay(ptr noundef nonnull %192, i32 noundef %236) #2
  store i32 8, ptr @gWordChoiceCloseDelay, align 4
  br label %239

239:                                              ; preds = %234, %238
  %240 = phi i16 [ 5, %238 ], [ 6, %234 ]
  store i16 %240, ptr @gWordChoiceState, align 2
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 307) #2
  br label %370

241:                                              ; preds = %228
  %242 = and i8 %224, 1
  %243 = icmp eq i8 %242, 0
  %244 = or i1 %232, %243
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 301) #2
  br label %246

246:                                              ; preds = %245, %241
  %247 = and i32 %200, 16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %246
  %250 = load i8, ptr @gWordChoiceColumn, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp sgt i32 %196, %251
  br i1 %252, label %253, label %318

253:                                              ; preds = %249
  %254 = add i8 %250, 1
  store i8 %254, ptr @gWordChoiceColumn, align 1
  br label %317

255:                                              ; preds = %246
  %256 = and i32 %200, 32
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = load i8, ptr @gWordChoiceColumn, align 1
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %318, label %261

261:                                              ; preds = %258
  %262 = add i8 %259, -1
  store i8 %262, ptr @gWordChoiceColumn, align 1
  br label %317

263:                                              ; preds = %255
  %264 = and i32 %200, 128
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %291, label %266

266:                                              ; preds = %263
  %267 = load i8, ptr @gWordChoiceRow, align 1
  %268 = zext i8 %267 to i32
  %269 = xor i32 %268, -1
  %270 = add nsw i32 %269, %199
  %271 = load i8, ptr %193, align 4
  %272 = zext i8 %271 to i32
  %273 = icmp sgt i32 %270, 0
  br i1 %273, label %274, label %318

274:                                              ; preds = %266
  %275 = load i8, ptr @gWordChoiceColumn, align 1
  %276 = zext i8 %275 to i32
  tail call void asm sideeffect "", "r"(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 0, i32 1) to i32)) #3, !srcloc !13
  br label %277

277:                                              ; preds = %288, %274
  %278 = phi i32 [ 1, %274 ], [ %289, %288 ]
  tail call void asm sideeffect "", "{r1}"(i32 %268) #3, !srcloc !14
  %279 = add nuw nsw i32 %278, %268
  %280 = mul i32 %279, %272
  %281 = add i32 %280, %276
  %282 = mul i32 %281, 3
  %283 = getelementptr i32, ptr getelementptr inbounds ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 0, i32 1), i32 %282
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %277
  tail call void asm sideeffect "", "{r4}"(i32 ptrtoint (ptr @gWordChoiceRow to i32)) #3, !srcloc !15
  %287 = trunc i32 %279 to i8
  store i8 %287, ptr @gWordChoiceRow, align 1
  br label %317

288:                                              ; preds = %277
  %289 = add nuw nsw i32 %278, 1
  %290 = icmp slt i32 %278, %270
  br i1 %290, label %277, label %318

291:                                              ; preds = %263
  %292 = and i32 %200, 64
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %318, label %294

294:                                              ; preds = %291
  %295 = load i8, ptr @gWordChoiceRow, align 1
  %296 = zext i8 %295 to i32
  %297 = load i8, ptr %193, align 4
  %298 = zext i8 %297 to i32
  %299 = icmp eq i8 %295, 0
  br i1 %299, label %318, label %300

300:                                              ; preds = %294
  %301 = load i8, ptr @gWordChoiceColumn, align 1
  %302 = zext i8 %301 to i32
  br label %303

303:                                              ; preds = %314, %300
  %304 = phi i32 [ 1, %300 ], [ %315, %314 ]
  %305 = sub nsw i32 %296, %304
  %306 = mul i32 %305, %298
  %307 = add i32 %306, %302
  %308 = mul i32 %307, 3
  %309 = getelementptr i32, ptr getelementptr inbounds ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 0, i32 1), i32 %308
  %310 = load i32, ptr %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %303
  %313 = trunc i32 %305 to i8
  store i8 %313, ptr @gWordChoiceRow, align 1
  br label %317

314:                                              ; preds = %303
  %315 = add nuw nsw i32 %304, 1
  %316 = icmp eq i32 %304, %296
  br i1 %316, label %318, label %303

317:                                              ; preds = %253, %261, %286, %312
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #2
  br label %318

318:                                              ; preds = %288, %314, %317, %294, %266, %258, %291, %249
  %319 = phi i1 [ true, %249 ], [ true, %258 ], [ true, %291 ], [ true, %266 ], [ true, %294 ], [ false, %317 ], [ true, %314 ], [ true, %288 ]
  %320 = load i8, ptr @gWordChoiceRow, align 1
  %321 = zext i8 %320 to i32
  %322 = load i8, ptr %193, align 4
  %323 = zext i8 %322 to i32
  %324 = mul nuw nsw i32 %323, %321
  %325 = load i8, ptr @gWordChoiceColumn, align 1
  %326 = zext i8 %325 to i32
  %327 = getelementptr %struct.WordChoiceRecord, ptr @gWordChoiceRecords, i32 %324
  %328 = getelementptr %struct.WordChoiceRecord, ptr %327, i32 %326
  %329 = load i32, ptr %328, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %318, %331
  %332 = phi i8 [ %333, %331 ], [ %325, %318 ]
  %333 = add i8 %332, -1
  %334 = zext i8 %333 to i32
  %335 = getelementptr %struct.WordChoiceRecord, ptr %327, i32 %334
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %331, label %339

338:                                              ; preds = %318
  br i1 %319, label %370, label %340

339:                                              ; preds = %331
  store i8 %333, ptr @gWordChoiceColumn, align 1
  br label %340

340:                                              ; preds = %339, %338
  tail call arm_apcscc void @UpdateWordChoiceSelectionDisplay(ptr noundef nonnull %192) #2
  br label %370

341:                                              ; preds = %3
  %342 = load ptr, ptr @gRenderStates, align 4
  %343 = getelementptr inbounds %struct.BackgroundRenderState, ptr %342, i32 0, i32 9
  %344 = load i8, ptr %343, align 4
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %346, label %370

346:                                              ; preds = %341
  %347 = load i8, ptr @gWordChoiceFlags, align 1
  %348 = and i8 %347, -17
  store i8 %348, ptr @gWordChoiceFlags, align 1
  store i16 4, ptr @gWordChoiceState, align 2
  br label %370

349:                                              ; preds = %3
  %350 = load i32, ptr @gWordChoiceCloseDelay, align 4
  %351 = add i32 %350, -1
  store i32 %351, ptr @gWordChoiceCloseDelay, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %370

353:                                              ; preds = %349, %3
  %354 = load i8, ptr @gWordChoiceCount, align 1
  %355 = zext i8 %354 to i32
  %356 = getelementptr ptr, ptr %7, i32 %355
  %357 = getelementptr ptr, ptr %356, i32 -1
  %358 = load ptr, ptr %357, align 4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 0, i32 noundef 0) #2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 1, i32 noundef 0) #2
  %359 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %358, i32 0, i32 1
  %360 = load ptr, ptr %359, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 136, ptr noundef %360) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 8), align 4
  %361 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 8, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %361) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 7), align 4
  %362 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 7, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %362) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 6), align 4
  %363 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 6, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %363) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 5), align 4
  %364 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 5, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %364) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 4), align 4
  %365 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 4, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %365) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 3), align 4
  %366 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 3, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %366) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 2), align 4
  %367 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 2, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %367) #2
  store i32 0, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 1), align 4
  %368 = load ptr, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 1, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %368) #2
  store i32 0, ptr @gWordChoiceRecords, align 4
  %369 = load ptr, ptr getelementptr inbounds ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 0, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %369) #2
  tail call arm_apcscc void @InitializeKeys() #2
  store i16 3, ptr @gWordChoiceState, align 2
  br label %370

370:                                              ; preds = %203, %239, %340, %338, %349, %341, %346, %173, %9, %3, %353, %178, %172
  %371 = phi i32 [ 0, %3 ], [ 0, %353 ], [ 0, %349 ], [ 0, %346 ], [ 0, %341 ], [ 0, %173 ], [ 0, %178 ], [ 0, %9 ], [ 0, %172 ], [ %211, %203 ], [ %236, %239 ], [ 0, %340 ], [ 0, %338 ]
  ret i32 %371
}

declare dso_local arm_apcscc i32 @EvaluateWordExpression(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetLeaderIdleRenderAnimations() local_unnamed_addr #1

declare dso_local arm_apcscc void @RefreshWordChoiceAnimations() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeGraphicsScript(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureTaskContextExtended(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @CopyTaskTextAdjustedInitial(ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetKeyRepeatDelays(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeWordChoiceSelection(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ResetRenderSlot(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @UpdateWordChoiceSelectionDisplay(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeKeys() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetWordChoiceSelectionDisplay(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2600}
!5 = !{i64 2744}
!6 = !{i64 3020}
!7 = !{i64 3709}
!8 = !{i64 3860}
!9 = !{i64 4548}
!10 = !{i64 5939}
!11 = !{i64 6395}
!12 = !{i64 8668}
!13 = !{i64 12452}
!14 = !{i64 12740}
!15 = !{i64 13034}
