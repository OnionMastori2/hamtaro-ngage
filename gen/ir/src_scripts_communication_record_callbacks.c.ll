; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.IndexedCommunicationResource = type { ptr, ptr, ptr, i32, i16, i16, i16, i8, [5 x i8] }
%struct.CommunicationExchangeStorage = type { i8, [16 x i8], %struct.CommunicationExchangeState }
%struct.CommunicationExchangeState = type { i8, i8, i8 }
%struct.CommunicationRecordPrefix = type { i8, i8, i8, [12 x i8], i8, i8 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gCommunicationContextPointer = external dso_local global ptr, align 4
@gCommunicationReceivedRecord = external dso_local global [0 x i8], align 1
@gTaskFlagsFirst = external dso_local global [0 x i8], align 1
@gIndexedCommunicationResources = external dso_local local_unnamed_addr constant [0 x %struct.IndexedCommunicationResource], align 4
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gCommunicationRecordFlags = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationExchangeStorage = external dso_local local_unnamed_addr global %struct.CommunicationExchangeStorage, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationRenderSlotIndices = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationRecordAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gReceivedCommunicationAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gCommunicationLayoutPositions0 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationLayoutPositions1 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationLayoutPositions2 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationLayoutPositions3 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationLayoutPositions4 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationLayoutPositionsDefault = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCommunicationLayoutSlotIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateSelectedCommunicationRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca [9 x i8], align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #5
  tail call void asm sideeffect "", "{r6}"(ptr nonnull @gCommunicationContextPointer) #5, !srcloc !4
  store i8 0, ptr %2, align 1
  %4 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 2
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 3
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 4
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 5
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 6
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 7
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds [9 x i8], ptr %2, i32 0, i32 8
  store i8 0, ptr %11, align 1
  %12 = load i8, ptr @gCommunicationReceivedRecord, align 1
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load i8, ptr @gTaskFlagsFirst, align 1
  store i8 %15, ptr %2, align 1
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  store i8 %16, ptr %4, align 1
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  store i8 %17, ptr %5, align 1
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  store i8 %18, ptr %6, align 1
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  store i8 %19, ptr %7, align 1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  store i8 %20, ptr %8, align 1
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  store i8 %21, ptr %9, align 1
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 7), align 1
  store i8 %22, ptr %10, align 1
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), align 1
  store i8 %23, ptr %11, align 1
  br label %39

24:                                               ; preds = %1
  %25 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 2), align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %24
  %28 = zext i8 %25 to i32
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i32 [ 0, %27 ], [ %35, %29 ]
  %31 = add nuw nsw i32 %30, 2
  %32 = getelementptr [12 x i8], ptr getelementptr inbounds ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3), i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr [9 x i8], ptr %2, i32 0, i32 %30
  store i8 %33, ptr %34, align 1
  %35 = add nuw nsw i32 %30, 1
  %36 = icmp eq i32 %35, %28
  br i1 %36, label %37, label %29

37:                                               ; preds = %29
  %38 = load i8, ptr %2, align 1
  br label %39

39:                                               ; preds = %14, %37
  %40 = phi i8 [ %15, %14 ], [ %38, %37 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load i8, ptr %4, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i8, ptr %5, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr %6, align 1
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i8 3, i8 4
  br label %52

52:                                               ; preds = %48, %24, %45, %42, %39
  %53 = phi i1 [ true, %39 ], [ false, %42 ], [ false, %45 ], [ true, %24 ], [ false, %48 ]
  %54 = phi i8 [ 0, %39 ], [ 1, %42 ], [ 2, %45 ], [ 0, %24 ], [ %51, %48 ]
  %55 = tail call ptr asm "", "=r,0"(ptr nonnull @gCommunicationContextPointer) #6, !srcloc !5
  %56 = load ptr, ptr %55, align 4
  %57 = zext i8 %3 to i32
  %58 = mul nuw nsw i32 %57, 1100
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = zext nneg i8 %54 to i32
  br label %77

61:                                               ; preds = %126
  %62 = ptrtoint ptr %59 to i32
  %63 = zext nneg i8 %54 to i32
  %64 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %59, i32 0, i32 1
  %65 = add i32 %62, 220
  %66 = inttoptr i32 %65 to ptr
  %67 = zext nneg i8 %54 to i32
  %68 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %66, i32 0, i32 1
  %69 = add i32 %62, 440
  %70 = inttoptr i32 %69 to ptr
  %71 = zext nneg i8 %54 to i32
  %72 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %70, i32 0, i32 1
  %73 = add i32 %62, 660
  %74 = inttoptr i32 %73 to ptr
  %75 = zext nneg i8 %54 to i32
  %76 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %74, i32 0, i32 1
  br label %130

77:                                               ; preds = %52, %126
  %78 = phi i32 [ 0, %52 ], [ %85, %126 ]
  %79 = phi i8 [ 1, %52 ], [ %128, %126 ]
  %80 = phi i32 [ 0, %52 ], [ %127, %126 ]
  %81 = mul nuw nsw i32 %78, 220
  %82 = getelementptr i8, ptr %59, i32 %81
  %83 = tail call ptr asm "", "=r,0"(ptr %82) #6, !srcloc !6
  %84 = load i8, ptr %83, align 1
  %85 = add nuw nsw i32 %78, 1
  %86 = icmp eq i8 %84, 0
  br i1 %86, label %126, label %87

87:                                               ; preds = %77
  br i1 %53, label %101, label %88

88:                                               ; preds = %87, %97
  %89 = phi i32 [ %99, %97 ], [ 0, %87 ]
  %90 = phi i8 [ %98, %97 ], [ 0, %87 ]
  %91 = add nuw nsw i32 %89, 2
  %92 = getelementptr %struct.CommunicationRecordPrefix, ptr %83, i32 0, i32 3, i32 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr [9 x i8], ptr %2, i32 0, i32 %89
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = add nuw nsw i8 %90, 1
  %99 = add nuw nsw i32 %89, 1
  %100 = icmp eq i32 %99, %60
  br i1 %100, label %104, label %88

101:                                              ; preds = %88, %87
  %102 = phi i8 [ 0, %87 ], [ %90, %88 ]
  %103 = icmp eq i8 %102, %54
  br i1 %103, label %104, label %126

104:                                              ; preds = %97, %101
  %105 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %83, i32 0, i32 5
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ult i32 %80, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %83, i32 0, i32 1
  %111 = load i8, ptr %110, align 1
  br label %126

112:                                              ; preds = %104
  %113 = icmp eq i32 %80, %107
  %114 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %83, i32 0, i32 1
  %115 = load i8, ptr %114, align 1
  br i1 %113, label %116, label %122

116:                                              ; preds = %112
  %117 = zext i8 %115 to i32
  %118 = tail call i32 asm "", "={r1},0"(i32 %117) #6, !srcloc !7
  %119 = zext i8 %79 to i32
  %120 = icmp ugt i32 %118, %119
  %121 = select i1 %120, i8 %115, i8 %79
  br label %126

122:                                              ; preds = %112
  %123 = icmp eq i8 %79, %115
  %124 = zext i1 %123 to i8
  %125 = add i8 %79, %124
  br label %126

126:                                              ; preds = %122, %101, %116, %109, %77
  %127 = phi i32 [ %80, %77 ], [ %107, %109 ], [ %80, %116 ], [ %80, %101 ], [ %80, %122 ]
  %128 = phi i8 [ %79, %77 ], [ %111, %109 ], [ %121, %116 ], [ %79, %101 ], [ %125, %122 ]
  tail call void asm sideeffect "", "r"(i32 %85) #5, !srcloc !8
  %129 = icmp eq i32 %85, 4
  br i1 %129, label %61, label %77

130:                                              ; preds = %61, %226
  %131 = phi i8 [ %128, %61 ], [ %227, %226 ]
  %132 = phi i8 [ 0, %61 ], [ %228, %226 ]
  tail call void asm sideeffect "", "{r2}"(ptr %59) #5, !srcloc !9
  %133 = load i8, ptr %59, align 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %157, label %135

135:                                              ; preds = %130
  br i1 %53, label %149, label %136

136:                                              ; preds = %135, %145
  %137 = phi i32 [ %147, %145 ], [ 0, %135 ]
  %138 = phi i8 [ %146, %145 ], [ 0, %135 ]
  %139 = add nuw nsw i32 %137, 2
  %140 = getelementptr %struct.CommunicationRecordPrefix, ptr %59, i32 0, i32 3, i32 %139
  %141 = load i8, ptr %140, align 1
  %142 = getelementptr [9 x i8], ptr %2, i32 0, i32 %137
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %141, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = add nuw nsw i8 %138, 1
  %147 = add nuw nsw i32 %137, 1
  %148 = icmp eq i32 %147, %63
  br i1 %148, label %152, label %136

149:                                              ; preds = %136, %135
  %150 = phi i8 [ 0, %135 ], [ %138, %136 ]
  %151 = icmp eq i8 %150, %54
  br i1 %151, label %152, label %157

152:                                              ; preds = %145, %149
  %153 = load i8, ptr %64, align 1
  %154 = icmp eq i8 %131, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %223, %200, %177, %152
  %156 = add i8 %131, 1
  br label %226

157:                                              ; preds = %130, %152, %149
  tail call void asm sideeffect "", "{r2}"(ptr %66) #5, !srcloc !9
  %158 = load i8, ptr %66, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %180, label %160

160:                                              ; preds = %157
  br i1 %53, label %174, label %161

161:                                              ; preds = %160, %170
  %162 = phi i32 [ %172, %170 ], [ 0, %160 ]
  %163 = phi i8 [ %171, %170 ], [ 0, %160 ]
  %164 = add nuw nsw i32 %162, 2
  %165 = getelementptr %struct.CommunicationRecordPrefix, ptr %66, i32 0, i32 3, i32 %164
  %166 = load i8, ptr %165, align 1
  %167 = getelementptr [9 x i8], ptr %2, i32 0, i32 %162
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  %171 = add nuw nsw i8 %163, 1
  %172 = add nuw nsw i32 %162, 1
  %173 = icmp eq i32 %172, %67
  br i1 %173, label %177, label %161

174:                                              ; preds = %161, %160
  %175 = phi i8 [ 0, %160 ], [ %163, %161 ]
  %176 = icmp eq i8 %175, %54
  br i1 %176, label %177, label %180

177:                                              ; preds = %170, %174
  %178 = load i8, ptr %68, align 1
  %179 = icmp eq i8 %131, %178
  br i1 %179, label %155, label %180

180:                                              ; preds = %177, %174, %157
  tail call void asm sideeffect "", "{r2}"(ptr %70) #5, !srcloc !9
  %181 = load i8, ptr %70, align 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %203, label %183

183:                                              ; preds = %180
  br i1 %53, label %197, label %184

184:                                              ; preds = %183, %193
  %185 = phi i32 [ %195, %193 ], [ 0, %183 ]
  %186 = phi i8 [ %194, %193 ], [ 0, %183 ]
  %187 = add nuw nsw i32 %185, 2
  %188 = getelementptr %struct.CommunicationRecordPrefix, ptr %70, i32 0, i32 3, i32 %187
  %189 = load i8, ptr %188, align 1
  %190 = getelementptr [9 x i8], ptr %2, i32 0, i32 %185
  %191 = load i8, ptr %190, align 1
  %192 = icmp eq i8 %189, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = add nuw nsw i8 %186, 1
  %195 = add nuw nsw i32 %185, 1
  %196 = icmp eq i32 %195, %71
  br i1 %196, label %200, label %184

197:                                              ; preds = %184, %183
  %198 = phi i8 [ 0, %183 ], [ %186, %184 ]
  %199 = icmp eq i8 %198, %54
  br i1 %199, label %200, label %203

200:                                              ; preds = %193, %197
  %201 = load i8, ptr %72, align 1
  %202 = icmp eq i8 %131, %201
  br i1 %202, label %155, label %203

203:                                              ; preds = %200, %197, %180
  tail call void asm sideeffect "", "{r2}"(ptr %74) #5, !srcloc !9
  %204 = load i8, ptr %74, align 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %226, label %206

206:                                              ; preds = %203
  br i1 %53, label %220, label %207

207:                                              ; preds = %206, %216
  %208 = phi i32 [ %218, %216 ], [ 0, %206 ]
  %209 = phi i8 [ %217, %216 ], [ 0, %206 ]
  %210 = add nuw nsw i32 %208, 2
  %211 = getelementptr %struct.CommunicationRecordPrefix, ptr %74, i32 0, i32 3, i32 %210
  %212 = load i8, ptr %211, align 1
  %213 = getelementptr [9 x i8], ptr %2, i32 0, i32 %208
  %214 = load i8, ptr %213, align 1
  %215 = icmp eq i8 %212, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = add nuw nsw i8 %209, 1
  %218 = add nuw nsw i32 %208, 1
  %219 = icmp eq i32 %218, %75
  br i1 %219, label %223, label %207

220:                                              ; preds = %207, %206
  %221 = phi i8 [ 0, %206 ], [ %209, %207 ]
  %222 = icmp eq i8 %221, %54
  br i1 %222, label %223, label %226

223:                                              ; preds = %216, %220
  %224 = load i8, ptr %76, align 1
  %225 = icmp eq i8 %131, %224
  br i1 %225, label %155, label %226

226:                                              ; preds = %203, %220, %223, %155
  %227 = phi i8 [ %156, %155 ], [ %131, %223 ], [ %131, %220 ], [ %131, %203 ]
  %228 = add nuw nsw i8 %132, 1
  %229 = icmp ult i8 %132, 4
  br i1 %229, label %130, label %230

230:                                              ; preds = %226
  %231 = icmp ugt i8 %227, 50
  br i1 %231, label %232, label %359

232:                                              ; preds = %230
  %233 = zext nneg i8 %54 to i32
  %234 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %59, i32 0, i32 1
  %235 = add i32 %62, 220
  %236 = inttoptr i32 %235 to ptr
  %237 = zext nneg i8 %54 to i32
  %238 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %236, i32 0, i32 1
  %239 = add i32 %62, 440
  %240 = inttoptr i32 %239 to ptr
  %241 = zext nneg i8 %54 to i32
  %242 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %240, i32 0, i32 1
  %243 = add i32 %62, 660
  %244 = inttoptr i32 %243 to ptr
  %245 = zext nneg i8 %54 to i32
  %246 = getelementptr inbounds %struct.CommunicationRecordPrefix, ptr %244, i32 0, i32 1
  br label %247

247:                                              ; preds = %232, %352
  %248 = phi i8 [ 1, %232 ], [ %353, %352 ]
  %249 = phi i8 [ 0, %232 ], [ %354, %352 ]
  tail call void asm sideeffect "", "{r2}"(ptr nonnull %59) #5, !srcloc !10
  %250 = load i8, ptr %59, align 1
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %274, label %252

252:                                              ; preds = %247
  br i1 %53, label %266, label %253

253:                                              ; preds = %252, %262
  %254 = phi i32 [ %264, %262 ], [ 0, %252 ]
  %255 = phi i8 [ %263, %262 ], [ 0, %252 ]
  %256 = add nuw nsw i32 %254, 2
  %257 = getelementptr %struct.CommunicationRecordPrefix, ptr %59, i32 0, i32 3, i32 %256
  %258 = load i8, ptr %257, align 1
  %259 = getelementptr [9 x i8], ptr %2, i32 0, i32 %254
  %260 = load i8, ptr %259, align 1
  %261 = icmp eq i8 %258, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %253
  %263 = add nuw nsw i8 %255, 1
  %264 = add nuw nsw i32 %254, 1
  %265 = icmp eq i32 %264, %233
  br i1 %265, label %269, label %253

266:                                              ; preds = %253, %252
  %267 = phi i8 [ 0, %252 ], [ %255, %253 ]
  %268 = icmp eq i8 %267, %54
  br i1 %268, label %269, label %274

269:                                              ; preds = %262, %266
  %270 = load i8, ptr %234, align 1
  %271 = icmp eq i8 %248, %270
  %272 = zext i1 %271 to i8
  %273 = add i8 %248, %272
  br label %274

274:                                              ; preds = %269, %266, %247
  %275 = phi i8 [ %248, %247 ], [ %248, %266 ], [ %273, %269 ]
  tail call void asm sideeffect "", "{r2}"(ptr %236) #5, !srcloc !10
  %276 = load i8, ptr %236, align 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %300, label %278

278:                                              ; preds = %274
  br i1 %53, label %292, label %279

279:                                              ; preds = %278, %288
  %280 = phi i32 [ %290, %288 ], [ 0, %278 ]
  %281 = phi i8 [ %289, %288 ], [ 0, %278 ]
  %282 = add nuw nsw i32 %280, 2
  %283 = getelementptr %struct.CommunicationRecordPrefix, ptr %236, i32 0, i32 3, i32 %282
  %284 = load i8, ptr %283, align 1
  %285 = getelementptr [9 x i8], ptr %2, i32 0, i32 %280
  %286 = load i8, ptr %285, align 1
  %287 = icmp eq i8 %284, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %279
  %289 = add nuw nsw i8 %281, 1
  %290 = add nuw nsw i32 %280, 1
  %291 = icmp eq i32 %290, %237
  br i1 %291, label %295, label %279

292:                                              ; preds = %279, %278
  %293 = phi i8 [ 0, %278 ], [ %281, %279 ]
  %294 = icmp eq i8 %293, %54
  br i1 %294, label %295, label %300

295:                                              ; preds = %288, %292
  %296 = load i8, ptr %238, align 1
  %297 = icmp eq i8 %275, %296
  %298 = zext i1 %297 to i8
  %299 = add i8 %275, %298
  br label %300

300:                                              ; preds = %295, %292, %274
  %301 = phi i8 [ %275, %274 ], [ %275, %292 ], [ %299, %295 ]
  tail call void asm sideeffect "", "{r2}"(ptr %240) #5, !srcloc !10
  %302 = load i8, ptr %240, align 1
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %326, label %304

304:                                              ; preds = %300
  br i1 %53, label %318, label %305

305:                                              ; preds = %304, %314
  %306 = phi i32 [ %316, %314 ], [ 0, %304 ]
  %307 = phi i8 [ %315, %314 ], [ 0, %304 ]
  %308 = add nuw nsw i32 %306, 2
  %309 = getelementptr %struct.CommunicationRecordPrefix, ptr %240, i32 0, i32 3, i32 %308
  %310 = load i8, ptr %309, align 1
  %311 = getelementptr [9 x i8], ptr %2, i32 0, i32 %306
  %312 = load i8, ptr %311, align 1
  %313 = icmp eq i8 %310, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %305
  %315 = add nuw nsw i8 %307, 1
  %316 = add nuw nsw i32 %306, 1
  %317 = icmp eq i32 %316, %241
  br i1 %317, label %321, label %305

318:                                              ; preds = %305, %304
  %319 = phi i8 [ 0, %304 ], [ %307, %305 ]
  %320 = icmp eq i8 %319, %54
  br i1 %320, label %321, label %326

321:                                              ; preds = %314, %318
  %322 = load i8, ptr %242, align 1
  %323 = icmp eq i8 %301, %322
  %324 = zext i1 %323 to i8
  %325 = add i8 %301, %324
  br label %326

326:                                              ; preds = %321, %318, %300
  %327 = phi i8 [ %301, %300 ], [ %301, %318 ], [ %325, %321 ]
  tail call void asm sideeffect "", "{r2}"(ptr %244) #5, !srcloc !10
  %328 = load i8, ptr %244, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %352, label %330

330:                                              ; preds = %326
  br i1 %53, label %344, label %331

331:                                              ; preds = %330, %340
  %332 = phi i32 [ %342, %340 ], [ 0, %330 ]
  %333 = phi i8 [ %341, %340 ], [ 0, %330 ]
  %334 = add nuw nsw i32 %332, 2
  %335 = getelementptr %struct.CommunicationRecordPrefix, ptr %244, i32 0, i32 3, i32 %334
  %336 = load i8, ptr %335, align 1
  %337 = getelementptr [9 x i8], ptr %2, i32 0, i32 %332
  %338 = load i8, ptr %337, align 1
  %339 = icmp eq i8 %336, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %331
  %341 = add nuw nsw i8 %333, 1
  %342 = add nuw nsw i32 %332, 1
  %343 = icmp eq i32 %342, %245
  br i1 %343, label %347, label %331

344:                                              ; preds = %331, %330
  %345 = phi i8 [ 0, %330 ], [ %333, %331 ]
  %346 = icmp eq i8 %345, %54
  br i1 %346, label %347, label %352

347:                                              ; preds = %340, %344
  %348 = load i8, ptr %246, align 1
  %349 = icmp eq i8 %327, %348
  %350 = zext i1 %349 to i8
  %351 = add i8 %327, %350
  br label %352

352:                                              ; preds = %347, %344, %326
  %353 = phi i8 [ %327, %326 ], [ %327, %344 ], [ %351, %347 ]
  %354 = add nuw nsw i8 %249, 1
  %355 = icmp ult i8 %249, 4
  br i1 %355, label %247, label %356

356:                                              ; preds = %352
  %357 = add nuw nsw i32 %127, 1
  %358 = and i32 %357, 255
  br label %359

359:                                              ; preds = %356, %230
  %360 = phi i32 [ %358, %356 ], [ %127, %230 ]
  %361 = phi i8 [ %353, %356 ], [ %227, %230 ]
  %362 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 2), align 1
  %363 = add i8 %362, 2
  %364 = icmp ugt i8 %361, 1
  br i1 %364, label %365, label %380

365:                                              ; preds = %359
  %366 = icmp ugt i8 %361, 9
  br i1 %366, label %367, label %373

367:                                              ; preds = %365
  %368 = udiv i8 %361, 10
  %369 = add nuw nsw i8 %368, 2
  %370 = zext i8 %363 to i32
  %371 = getelementptr i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3), i32 %370
  store i8 %369, ptr %371, align 1
  %372 = add i8 %362, 3
  br label %373

373:                                              ; preds = %367, %365
  %374 = phi i8 [ %372, %367 ], [ %363, %365 ]
  %375 = urem i8 %361, 10
  %376 = add nuw nsw i8 %375, 2
  %377 = zext i8 %374 to i32
  %378 = getelementptr i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3), i32 %377
  store i8 %376, ptr %378, align 1
  %379 = add nuw nsw i32 %377, 1
  br label %390

380:                                              ; preds = %359
  %381 = tail call ptr asm "", "=r,0"(ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3)) #6, !srcloc !11
  %382 = zext i8 %363 to i32
  %383 = ptrtoint ptr %381 to i32
  %384 = add i32 %383, %382
  %385 = inttoptr i32 %384 to ptr
  store i8 1, ptr %385, align 1
  %386 = add nuw nsw i32 %382, 1
  %387 = tail call i32 asm "", "={r1},0"(i32 %386) #6, !srcloc !12
  %388 = add i32 %387, %383
  %389 = inttoptr i32 %388 to ptr
  store i8 1, ptr %389, align 1
  br label %390

390:                                              ; preds = %380, %373
  %391 = phi i32 [ %379, %373 ], [ %387, %380 ]
  tail call void asm sideeffect "", "{r6}"(i32 %391) #5, !srcloc !13
  %392 = and i32 %391, 255
  %393 = icmp ult i32 %392, 11
  br i1 %393, label %394, label %401

394:                                              ; preds = %390, %394
  %395 = phi i32 [ %398, %394 ], [ %392, %390 ]
  %396 = add i32 %395, ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32)
  %397 = inttoptr i32 %396 to ptr
  store i8 1, ptr %397, align 1
  %398 = add nuw nsw i32 %395, 1
  %399 = and i32 %398, 255
  %400 = icmp eq i32 %399, 11
  br i1 %400, label %401, label %394

401:                                              ; preds = %394, %390
  store i8 %361, ptr getelementptr inbounds ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 1), align 1
  %402 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %403 = add i8 %402, 3
  store i8 %403, ptr getelementptr inbounds ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr inbounds ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 15), align 1
  %404 = trunc i32 %360 to i8
  store i8 %404, ptr getelementptr inbounds ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 16), align 1
  %405 = zext i8 %402 to i32
  %406 = mul nuw nsw i32 %405, 220
  %407 = getelementptr i8, ptr %59, i32 %406
  tail call arm_apcscc void @CopyBytes16(ptr noundef nonnull @gCommunicationReceivedRecord, ptr noundef %407, i16 noundef zeroext 128) #7
  %408 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %409 = zext i8 %408 to i32
  %410 = mul nuw nsw i32 %409, 5
  %411 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %412 = zext i8 %411 to i32
  %413 = add nuw nsw i32 %410, %412
  tail call arm_apcscc void @WriteSaveRecord(i32 noundef 4, i32 noundef %413) #7
  %414 = load ptr, ptr @gCommunicationContextPointer, align 4
  %415 = getelementptr i8, ptr %414, i32 11000
  tail call arm_apcscc void @CopyBytes16(ptr noundef %415, ptr noundef nonnull @gCommunicationReceivedRecord, i16 noundef zeroext 128) #7
  tail call arm_apcscc void @WriteSaveRecord(i32 noundef 4, i32 noundef 50) #7
  tail call arm_apcscc void @CopyBytes16(ptr noundef %407, ptr noundef nonnull @gCommunicationReceivedRecord, i16 noundef zeroext 128) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @CopyBytes16(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @WriteSaveRecord(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareCommunicationRecord(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gTaskFlagsFirst, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskFlagsFirst to i32), i32 1) to ptr), align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskFlagsFirst to i32), i32 2) to ptr), align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskFlagsFirst to i32), i32 3) to ptr), align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskFlagsFirst to i32), i32 4) to ptr), align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskFlagsFirst to i32), i32 5) to ptr), align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gTaskFlagsFirst to i32), i32 6) to ptr), align 1
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i8 6, i8 7
  br label %23

23:                                               ; preds = %19, %16, %13, %10, %7, %4, %1
  %24 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 2, %7 ], [ 3, %10 ], [ 4, %13 ], [ 5, %16 ], [ %22, %19 ]
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 2), align 1
  tail call arm_apcscc void @CopyBytes16(ptr noundef nonnull @gTaskFlagsFirst, ptr noundef getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 5), i16 noundef zeroext 7) #7
  store i8 2, ptr @gCommunicationReceivedRecord, align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStartCommunicationResourceSong(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.IndexedCommunicationResource, ptr @gIndexedCommunicationResources, i32 %3, i32 4
  %5 = load i16, ptr %4, align 4
  tail call arm_apcscc void @StartSong(i16 noundef zeroext %5) #7
  ret i32 0
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetCommunicationRenderAnimation(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 489) #7
  %3 = load i8, ptr %0, align 1
  %4 = trunc i32 %2 to i8
  %5 = mul i8 %4, 6
  %6 = add i8 %5, %3
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %13, %9
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or disjoint i32 %14, %18
  %20 = getelementptr i8, ptr %0, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = or disjoint i32 %19, %23
  %25 = inttoptr i32 %24 to ptr
  %26 = zext i8 %6 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %26, ptr noundef %25) #7
  ret i32 5
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureCommunicationRenderSlot(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 489) #7
  %3 = load i8, ptr %0, align 1
  %4 = trunc i32 %2 to i8
  %5 = mul i8 %4, 6
  %6 = add i8 %5, %3
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %13, %9
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or disjoint i32 %14, %18
  %20 = getelementptr i8, ptr %0, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = or disjoint i32 %19, %23
  %25 = inttoptr i32 %24 to ptr
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %25) #7
  ret i32 5
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackLinkCommunicationRenderSlots(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 489) #7
  %3 = load i8, ptr %0, align 1
  %4 = trunc i32 %2 to i8
  %5 = mul i8 %4, 6
  %6 = add i8 %5, %3
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 489) #7
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = trunc i32 %7 to i8
  %11 = mul i8 %10, 6
  %12 = add i8 %11, %9
  %13 = zext i8 %6 to i32
  %14 = zext i8 %12 to i32
  %15 = tail call arm_apcscc i32 @SetRenderModeBytes(i32 noundef %13, i32 noundef 2, i32 noundef 3, i32 noundef %14) #7
  ret i32 2
}

declare dso_local arm_apcscc i32 @SetRenderModeBytes(...) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetCommunicationRenderPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 9
  %9 = shl nuw nsw i32 %4, 1
  %10 = or disjoint i32 %8, %9
  %11 = add i32 %10, ptrtoint (ptr @gAnimationClassValues to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr i8, ptr %0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr i8, ptr %0, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 9
  %20 = shl nuw nsw i32 %15, 1
  %21 = or disjoint i32 %19, %20
  %22 = add i32 %21, ptrtoint (ptr @gAnimationClassValues to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %0, align 1
  %25 = zext i8 %24 to i32
  %26 = load i16, ptr %12, align 2
  %27 = zext i16 %26 to i32
  %28 = shl nuw i32 %27, 16
  %29 = load i16, ptr %23, align 2
  %30 = zext i16 %29 to i32
  %31 = shl nuw i32 %30, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef 0) #7
  ret i32 5
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckCommunicationRecordFlag(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i16, ptr @gCommunicationRecordFlags, i32 %4
  %6 = load i16, ptr %5, align 2
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %2, i32 11000
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 401), align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i8 0, i8 2
  br label %18

18:                                               ; preds = %1, %9
  %19 = phi i8 [ %17, %9 ], [ 1, %1 ]
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPositionCommunicationRenderSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 20
  %5 = add nsw i32 %4, -1048576
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = load i16, ptr @gCommunicationRenderSlotIndices, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %6, i32 %8, i32 4
  store i32 %5, ptr %9, align 4
  %10 = load ptr, ptr @gRenderSlots, align 4
  %11 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 1), align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.RenderSlot, ptr %10, i32 %12, i32 4
  store i32 %5, ptr %13, align 4
  %14 = load ptr, ptr @gRenderSlots, align 4
  %15 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 2), align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %14, i32 %16, i32 4
  store i32 %5, ptr %17, align 4
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 3), align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr %struct.RenderSlot, ptr %18, i32 %20, i32 4
  store i32 %5, ptr %21, align 4
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 4), align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr %struct.RenderSlot, ptr %22, i32 %24, i32 4
  store i32 %5, ptr %25, align 4
  %26 = load ptr, ptr @gRenderSlots, align 4
  %27 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 5), align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr %struct.RenderSlot, ptr %26, i32 %28, i32 4
  store i32 %5, ptr %29, align 4
  %30 = load ptr, ptr @gRenderSlots, align 4
  %31 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 6), align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr %struct.RenderSlot, ptr %30, i32 %32, i32 4
  store i32 %5, ptr %33, align 4
  %34 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 20
  %37 = add nuw nsw i32 %36, 5242880
  %38 = load ptr, ptr @gRenderSlots, align 4
  %39 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 7), align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr %struct.RenderSlot, ptr %38, i32 %40, i32 4
  store i32 %37, ptr %41, align 4
  %42 = load ptr, ptr @gRenderSlots, align 4
  %43 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 8), align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr %struct.RenderSlot, ptr %42, i32 %44, i32 4
  store i32 %37, ptr %45, align 4
  %46 = load ptr, ptr @gRenderSlots, align 4
  %47 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRenderSlotIndices, i32 0, i32 9), align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr %struct.RenderSlot, ptr %46, i32 %48, i32 4
  store i32 %37, ptr %49, align 4
  %50 = load ptr, ptr @gRenderSlots, align 4
  %51 = getelementptr %struct.RenderSlot, ptr %50, i32 30, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -65536
  store i32 %53, ptr %51, align 4
  %54 = load ptr, ptr @gRenderSlots, align 4
  %55 = getelementptr %struct.RenderSlot, ptr %54, i32 17, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -65536
  store i32 %57, ptr %55, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreCommunicationRecordFlags(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = getelementptr i8, ptr %2, i32 11000
  tail call arm_apcscc void @CopyBytes16(ptr noundef %3, ptr noundef nonnull @gCommunicationReceivedRecord, i16 noundef zeroext 128) #7
  %4 = load i16, ptr @gCommunicationRecordFlags, align 2
  %5 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %4) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8 1, ptr @gCommunicationReceivedRecord, align 1
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 1), align 2
  %10 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 1), align 1
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 2), align 2
  %15 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 2), align 1
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 3), align 2
  %20 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3), align 1
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 4), align 2
  %25 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %24) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 4), align 1
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 5), align 2
  %30 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %29) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 5), align 1
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 6), align 2
  %35 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %34) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 6), align 1
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 7), align 2
  %40 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 7), align 1
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 8), align 2
  %45 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %44) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 8), align 1
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i16, ptr getelementptr ([0 x i16], ptr @gCommunicationRecordFlags, i32 0, i32 9), align 2
  %50 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %49) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 9), align 1
  br label %53

53:                                               ; preds = %52, %48
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshCommunicationResourceBoundaryIndicators(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef 30, i32 noundef %6) #7
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 391), align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 7
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, -1
  %13 = icmp ne i32 %12, %8
  %14 = zext i1 %13 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef 31, i32 noundef %14) #7
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshCommunicationRecordBoundaryIndicators(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 1, i32 10), align 1
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef 32, i32 noundef %4) #7
  %5 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 1, i32 10), align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 396), align 1
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = icmp ne i32 %9, %6
  %11 = zext i1 %10 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef 33, i32 noundef %11) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCopyControlByteToCommunicationContext(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = getelementptr i8, ptr %2, i32 11032
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %10
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr %3, align 1
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCopyCommunicationByteToControl(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = getelementptr i8, ptr %2, i32 11032
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = load i8, ptr %3, align 1
  %12 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %10
  store i8 %11, ptr %12, align 1
  ret i32 2
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckReceivedCommunicationFlags(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 4), align 1
  %3 = zext i8 %2 to i32
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %4 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 7
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i32
  br label %9

9:                                                ; preds = %7, %22
  %10 = phi i32 [ 0, %7 ], [ %23, %22 ]
  %11 = getelementptr i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), i32 %10
  %12 = trunc i32 %10 to i8
  %13 = tail call ptr asm sideeffect "", "=r,r,r,0"(ptr %11, i8 %12, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17)) #5, !srcloc !14
  %14 = load i8, ptr %11, align 1
  %15 = icmp ugt i8 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = zext i8 %14 to i16
  %18 = add nuw nsw i16 %17, 69
  %19 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %25

22:                                               ; preds = %9, %16
  %23 = add nuw nsw i32 %10, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %25, label %9

25:                                               ; preds = %22, %1, %21
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshCommunicationRecordIndicators(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load ptr, ptr @gCommunicationContextPointer, align 4
  %4 = load i8, ptr @gCommunicationExchangeStorage, align 1
  %5 = zext i8 %4 to i32
  %6 = ptrtoint ptr %3 to i32
  %7 = mul nuw nsw i32 %5, 1100
  %8 = add i32 %7, %6
  %9 = inttoptr i32 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 3
  %12 = zext i1 %11 to i8
  %13 = getelementptr %struct.RenderSlot, ptr %2, i32 39, i32 23
  store i8 %12, ptr %13, align 4
  %14 = mul nuw nsw i32 %5, 1100
  %15 = add nuw nsw i32 %14, 220
  %16 = add i32 %15, %6
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 3
  %20 = zext i1 %19 to i8
  %21 = getelementptr %struct.RenderSlot, ptr %2, i32 40, i32 23
  store i8 %20, ptr %21, align 4
  %22 = mul nuw nsw i32 %5, 1100
  %23 = add nuw nsw i32 %22, 440
  %24 = add i32 %23, %6
  %25 = inttoptr i32 %24 to ptr
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 3
  %28 = zext i1 %27 to i8
  %29 = getelementptr %struct.RenderSlot, ptr %2, i32 41, i32 23
  store i8 %28, ptr %29, align 4
  %30 = mul nuw nsw i32 %5, 1100
  %31 = add nuw nsw i32 %30, 660
  %32 = add i32 %31, %6
  %33 = inttoptr i32 %32 to ptr
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 3
  %36 = zext i1 %35 to i8
  %37 = getelementptr %struct.RenderSlot, ptr %2, i32 42, i32 23
  store i8 %36, ptr %37, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreCommunicationRecordAnimation(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 5
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %5, %7
  %9 = mul nuw nsw i32 %8, 220
  %10 = getelementptr i8, ptr %2, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load ptr, ptr @gRenderSlots, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %14, i32 39
  %16 = getelementptr %struct.RenderSlot, ptr %15, i32 %7
  %17 = getelementptr [0 x ptr], ptr @gCommunicationRecordAnimations, i32 0, i32 %7
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef %16, ptr noundef %18) #7
  br label %19

19:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimationByPointer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreReceivedCommunicationAnimation(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gCommunicationReceivedRecord, align 1
  %3 = icmp eq i8 %2, 3
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %5, i32 39
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 385), align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %6, i32 %8
  %10 = getelementptr [0 x ptr], ptr @gReceivedCommunicationAnimations, i32 0, i32 %8
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef %9, ptr noundef %11) #7
  %12 = getelementptr %struct.RenderSlot, ptr %6, i32 %8, i32 23
  store i8 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %4, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureCommunicationRenderLayout() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 389), align 1
  switch i8 %1, label %10 [
    i8 0, label %2
    i8 1, label %11
    i8 2, label %7
    i8 3, label %8
    i8 4, label %9
  ]

2:                                                ; preds = %0
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 489) #7
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 2, i32 4
  %6 = select i1 %4, i32 0, i32 2
  br label %11

7:                                                ; preds = %0
  br label %11

8:                                                ; preds = %0
  br label %11

9:                                                ; preds = %0
  br label %11

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %2, %7, %8, %9, %10, %0
  %12 = phi i32 [ 2, %10 ], [ 2, %9 ], [ 6, %8 ], [ 2, %7 ], [ %5, %2 ], [ 2, %0 ]
  %13 = phi ptr [ @gCommunicationLayoutPositionsDefault, %10 ], [ @gCommunicationLayoutPositions4, %9 ], [ @gCommunicationLayoutPositions3, %8 ], [ @gCommunicationLayoutPositions2, %7 ], [ @gCommunicationLayoutPositions0, %2 ], [ @gCommunicationLayoutPositions1, %0 ]
  %14 = phi i32 [ 0, %10 ], [ 0, %9 ], [ 0, %8 ], [ 0, %7 ], [ %6, %2 ], [ 0, %0 ]
  br label %15

15:                                               ; preds = %11, %15
  %16 = phi i32 [ %14, %11 ], [ %44, %15 ]
  %17 = phi ptr [ %13, %11 ], [ %31, %15 ]
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = getelementptr [0 x i8], ptr @gCommunicationLayoutSlotIndices, i32 0, i32 %16
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 8
  store i16 256, ptr %22, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 9
  store i16 256, ptr %23, align 2
  %24 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 10
  store i16 0, ptr %24, align 4
  %25 = getelementptr i16, ptr %17, i32 1
  %26 = load i16, ptr %17, align 2
  %27 = zext i16 %26 to i32
  %28 = shl nuw i32 %27, 16
  %29 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 3
  store i32 %28, ptr %29, align 4
  %30 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 4
  store i32 32768, ptr %30, align 4
  %31 = getelementptr i16, ptr %17, i32 2
  %32 = load i16, ptr %25, align 2
  %33 = zext i16 %32 to i32
  %34 = shl nuw i32 %33, 16
  %35 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 6
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 6, i32 1
  store i32 0, ptr %37, align 4
  %38 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 6, i32 2
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 7
  store i32 0, ptr %39, align 4
  %40 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 7, i32 1
  store i32 0, ptr %40, align 4
  %41 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 7, i32 2
  store i32 0, ptr %41, align 4
  %42 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 12
  store i16 0, ptr %42, align 4
  %43 = getelementptr %struct.RenderSlot, ptr %18, i32 %21, i32 13
  store i16 0, ptr %43, align 2
  %44 = add nuw nsw i32 %16, 1
  %45 = icmp eq i32 %44, %12
  br i1 %45, label %46, label %15

46:                                               ; preds = %15
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 944}
!5 = !{i64 1484}
!6 = !{i64 1879}
!7 = !{i64 2545}
!8 = !{i64 2854}
!9 = !{i64 3285}
!10 = !{i64 4346}
!11 = !{i64 5460}
!12 = !{i64 5652}
!13 = !{i64 5848}
!14 = !{i64 12397}
