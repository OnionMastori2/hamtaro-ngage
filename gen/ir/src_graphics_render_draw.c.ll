; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderOamEntry = type { i16, i16, i16, i16 }
%struct.DrawTemps = type { i32, i32, %struct.RenderAffineSource, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, ptr }
%struct.RenderAffineSource = type { i32, i32 }
%struct.RenderPriority = type { i32, i8, i8, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderObjectPart = type { i16, i16, i16 }

@gRenderPriority = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderOam = external dso_local global [128 x %struct.RenderOamEntry], align 2
@gRenderSineTable = external dso_local constant [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @DrawRenderSlots() local_unnamed_addr #0 {
  %1 = alloca %struct.DrawTemps, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #3
  %2 = tail call arm_apcscc ptr @GetVideoState() #4
  %3 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 3
  store ptr %2, ptr %3, align 4
  %4 = load ptr, ptr @gRenderPriority, align 4
  %5 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %7 = zext i8 %6 to i32
  tail call void asm sideeffect "", "{r1}"(i32 %7) #3, !srcloc !4
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %127, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 13
  %11 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 12
  %12 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr @gRenderSlots, align 4
  br label %14

14:                                               ; preds = %9, %119
  %15 = phi ptr [ %122, %119 ], [ %13, %9 ]
  %16 = phi i32 [ %123, %119 ], [ 0, %9 ]
  %17 = phi ptr [ %120, %119 ], [ %4, %9 ]
  %18 = getelementptr inbounds %struct.RenderPriority, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr %struct.RenderSlot, ptr %15, i32 %20, i32 23
  %22 = load i8, ptr %21, align 4
  %23 = add nuw nsw i32 %16, 1
  store i32 %23, ptr %10, align 4
  %24 = getelementptr %struct.RenderPriority, ptr %17, i32 1
  store ptr %24, ptr %11, align 4
  %25 = icmp eq i8 %22, 0
  br i1 %25, label %119, label %26

26:                                               ; preds = %14
  %27 = getelementptr %struct.RenderSlot, ptr %15, i32 %20, i32 23, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = icmp ult i8 %28, 64
  br i1 %29, label %30, label %119

30:                                               ; preds = %26
  %31 = zext nneg i8 %28 to i32
  call void asm sideeffect "", "{r9},{r3}"(i32 15, i32 15) #3, !srcloc !5
  %32 = call i32 asm "", "=r,0"(i32 15) #5, !srcloc !6
  %33 = and i32 %32, %31
  %34 = getelementptr %struct.RenderSlot, ptr %15, i32 %20, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.RenderSlot, ptr %15, i32 %20, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -65536
  %39 = getelementptr %struct.RenderSlot, ptr %15, i32 %20, i32 3
  %40 = add i32 %38, %35
  %41 = lshr i32 %40, 16
  %42 = trunc i32 %41 to i16
  %43 = load i32, ptr %5, align 4
  br label %44

44:                                               ; preds = %108, %30
  %45 = phi i32 [ %43, %30 ], [ %109, %108 ]
  %46 = phi i32 [ 0, %30 ], [ %111, %108 ]
  %47 = phi i32 [ 0, %30 ], [ %110, %108 ]
  %48 = phi i32 [ 1, %30 ], [ %112, %108 ]
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %33, %48
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %108, label %54

54:                                               ; preds = %44
  %55 = load i32, ptr %39, align 4
  %56 = lshr i32 %55, 16
  %57 = load i16, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 4), align 4
  %58 = trunc i32 %56 to i16
  %59 = sub i16 %58, %57
  %60 = sext i16 %59 to i32
  %61 = load i16, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 4, i32 2), align 2
  %62 = sub i16 %42, %61
  %63 = sext i16 %62 to i32
  call arm_apcscc void @CalculateBackgroundOffset(i32 noundef %46, i32 noundef %60, i32 noundef %63, ptr noundef nonnull %1, ptr noundef nonnull %12) #4
  %64 = load i8, ptr %27, align 1
  %65 = and i8 %64, 16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %54
  %68 = load i32, ptr %1, align 4
  %69 = and i32 %68, -65536
  %70 = sub i32 0, %69
  call void asm sideeffect "", "{r2}"(i32 %46) #3, !srcloc !7
  %71 = mul nuw nsw i32 %46, 48
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 %71
  %74 = getelementptr inbounds %struct.VideoState, ptr %73, i32 0, i32 14, i32 0, i32 1
  %75 = load i16, ptr %74, align 2
  %76 = sext i16 %75 to i32
  %77 = ashr exact i32 %70, 16
  %78 = icmp eq i32 %77, %76
  br i1 %78, label %83, label %79

79:                                               ; preds = %67
  %80 = lshr exact i32 %70, 16
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %74, align 2
  %82 = or i32 %48, %47
  br label %83

83:                                               ; preds = %67, %79, %54
  %84 = phi i32 [ %47, %54 ], [ %82, %79 ], [ %47, %67 ]
  %85 = load i8, ptr %27, align 1
  %86 = and i8 %85, 32
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load i32, ptr %12, align 4
  %90 = and i32 %89, -65536
  %91 = sub i32 0, %90
  %92 = mul nuw nsw i32 %46, 48
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr i8, ptr %93, i32 %92
  %95 = getelementptr inbounds %struct.VideoState, ptr %94, i32 0, i32 14, i32 0, i32 2
  %96 = load i16, ptr %95, align 4
  %97 = sext i16 %96 to i32
  %98 = ashr exact i32 %91, 16
  %99 = icmp eq i32 %98, %97
  br i1 %99, label %104, label %100

100:                                              ; preds = %88
  %101 = lshr exact i32 %91, 16
  %102 = trunc i32 %101 to i16
  store i16 %102, ptr %95, align 4
  %103 = or i32 %84, %48
  br label %104

104:                                              ; preds = %88, %100, %83
  %105 = phi i32 [ %84, %83 ], [ %103, %100 ], [ %84, %88 ]
  %106 = load i32, ptr %5, align 4
  %107 = or i32 %106, %48
  store i32 %107, ptr %5, align 4
  br label %108

108:                                              ; preds = %104, %44
  %109 = phi i32 [ %107, %104 ], [ %45, %44 ]
  %110 = phi i32 [ %105, %104 ], [ %47, %44 ]
  %111 = add nuw nsw i32 %46, 1
  %112 = shl i32 %48, 1
  %113 = icmp eq i32 %111, 4
  br i1 %113, label %114, label %44

114:                                              ; preds = %108
  %115 = trunc i32 %110 to i8
  call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext %115) #4
  %116 = load ptr, ptr @gRenderSlots, align 4
  %117 = load i32, ptr %10, align 4
  %118 = load ptr, ptr %11, align 4
  br label %119

119:                                              ; preds = %26, %114, %14
  %120 = phi ptr [ %24, %26 ], [ %118, %114 ], [ %24, %14 ]
  %121 = phi i32 [ %23, %26 ], [ %117, %114 ], [ %23, %14 ]
  %122 = phi ptr [ %15, %26 ], [ %116, %114 ], [ %15, %14 ]
  %123 = and i32 %121, 255
  %124 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %125 = zext i8 %124 to i32
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %14, label %127

127:                                              ; preds = %119, %0
  call arm_apcscc void @AssignRenderAffineMatrices() #4
  %128 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @gRenderPriority, align 4
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi ptr [ %147, %132 ], [ %131, %130 ]
  %134 = phi i32 [ %148, %132 ], [ 0, %130 ]
  %135 = getelementptr inbounds %struct.RenderPriority, ptr %133, i32 0, i32 2
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = call arm_apcscc i32 @GetRenderKey(i32 noundef %137) #4
  store i32 %138, ptr %133, align 4
  %139 = load ptr, ptr @gRenderSlots, align 4
  %140 = load i8, ptr %135, align 1
  %141 = zext i8 %140 to i32
  %142 = getelementptr %struct.RenderSlot, ptr %139, i32 %141, i32 23, i32 1
  %143 = load i8, ptr %142, align 1
  %144 = lshr i8 %143, 2
  %145 = and i8 %144, 3
  %146 = getelementptr inbounds %struct.RenderPriority, ptr %133, i32 0, i32 1
  store i8 %145, ptr %146, align 4
  %147 = getelementptr %struct.RenderPriority, ptr %133, i32 1
  %148 = add nuw nsw i32 %134, 1
  %149 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %150 = zext i8 %149 to i32
  %151 = icmp ult i32 %148, %150
  br i1 %151, label %132, label %152

152:                                              ; preds = %132, %127
  %153 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6), align 1
  %154 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6, i32 1), align 2
  %155 = zext i8 %154 to i32
  call void asm sideeffect "", "r"(i32 %155) #3, !srcloc !8
  %156 = icmp ult i8 %153, %154
  br i1 %156, label %157, label %313

157:                                              ; preds = %152
  %158 = zext i8 %153 to i32
  %159 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 13
  br label %302

160:                                              ; preds = %302
  %161 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6), align 1
  %162 = trunc i32 %303 to i8
  %163 = sub i8 %162, %161
  %164 = add i8 %163, 1
  %165 = add nuw nsw i32 %303, 1
  store i32 %165, ptr %159, align 4
  %166 = icmp eq i8 %164, 0
  br i1 %166, label %184, label %167

167:                                              ; preds = %160, %174
  %168 = phi i8 [ %172, %174 ], [ %164, %160 ]
  %169 = phi ptr [ %171, %174 ], [ %306, %160 ]
  %170 = getelementptr %struct.RenderPriority, ptr %169, i32 1
  call arm_apcscc void @SwapRenderPriority(ptr noundef %169, ptr noundef %170) #4
  %171 = getelementptr %struct.RenderPriority, ptr %169, i32 -1
  %172 = add i8 %168, -1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %167
  %175 = getelementptr %struct.RenderPriority, ptr %169, i32 -1, i32 1
  %176 = load volatile i8, ptr %175, align 4
  %177 = zext i8 %176 to i32
  %178 = getelementptr inbounds %struct.RenderPriority, ptr %169, i32 0, i32 1
  %179 = load volatile i8, ptr %178, align 4
  %180 = zext i8 %179 to i32
  call void asm sideeffect "", "{r0},{r1}"(i32 %177, i32 %180) #3, !srcloc !9
  %181 = icmp ugt i8 %176, %179
  br i1 %181, label %167, label %182

182:                                              ; preds = %174
  %183 = zext i8 %172 to i32
  br label %184

184:                                              ; preds = %167, %182, %160
  %185 = phi i32 [ 0, %160 ], [ %183, %182 ], [ 0, %167 ]
  %186 = phi ptr [ %306, %160 ], [ %171, %182 ], [ %171, %167 ]
  %187 = getelementptr inbounds %struct.RenderPriority, ptr %186, i32 0, i32 1
  %188 = load volatile i8, ptr %187, align 4
  %189 = zext i8 %188 to i32
  %190 = getelementptr %struct.RenderPriority, ptr %186, i32 1
  %191 = getelementptr %struct.RenderPriority, ptr %186, i32 1, i32 1
  %192 = load volatile i8, ptr %191, align 4
  %193 = zext i8 %192 to i32
  call void asm sideeffect "", "{r0},{r2}"(i32 %189, i32 %193) #3, !srcloc !10
  %194 = icmp eq i8 %188, %192
  br i1 %194, label %195, label %296

195:                                              ; preds = %184
  call void asm sideeffect "", "{r3}"(i32 %185) #3, !srcloc !11
  %196 = icmp eq i32 %185, 0
  br i1 %196, label %296, label %197

197:                                              ; preds = %195
  %198 = load volatile i32, ptr %186, align 4
  %199 = load volatile i32, ptr %190, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %296

201:                                              ; preds = %197, %217
  %202 = phi i32 [ %207, %217 ], [ %185, %197 ]
  %203 = phi ptr [ %205, %217 ], [ %186, %197 ]
  %204 = getelementptr %struct.RenderPriority, ptr %203, i32 1
  call arm_apcscc void @SwapRenderPriority(ptr noundef nonnull %203, ptr noundef %204) #4
  %205 = getelementptr %struct.RenderPriority, ptr %203, i32 -1
  %206 = add nuw nsw i32 %202, 255
  %207 = and i32 %206, 255
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %296, label %209

209:                                              ; preds = %201
  %210 = getelementptr %struct.RenderPriority, ptr %203, i32 -1, i32 1
  %211 = load volatile i8, ptr %210, align 4
  %212 = zext i8 %211 to i32
  %213 = getelementptr inbounds %struct.RenderPriority, ptr %203, i32 0, i32 1
  %214 = load i8, ptr %213, align 4
  %215 = zext i8 %214 to i32
  call void asm sideeffect "", "{r0},r"(i32 %212, i32 %215) #3, !srcloc !12
  %216 = icmp ult i8 %211, %214
  br i1 %216, label %296, label %217

217:                                              ; preds = %209
  %218 = load volatile i32, ptr %205, align 4
  %219 = load volatile i32, ptr %203, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %201, label %296

221:                                              ; preds = %302
  %222 = add nuw nsw i32 %303, 1
  store i32 %222, ptr %159, align 4
  %223 = icmp eq i8 %308, %311
  br i1 %223, label %224, label %296

224:                                              ; preds = %221
  %225 = load volatile i32, ptr %306, align 4
  %226 = load volatile i32, ptr %309, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %253

228:                                              ; preds = %224
  %229 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6), align 1
  %230 = trunc i32 %303 to i8
  %231 = sub i8 %230, %229
  %232 = add i8 %231, 1
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %296, label %234

234:                                              ; preds = %228, %249
  %235 = phi i8 [ %239, %249 ], [ %232, %228 ]
  %236 = phi ptr [ %238, %249 ], [ %306, %228 ]
  %237 = getelementptr %struct.RenderPriority, ptr %236, i32 1
  call arm_apcscc void @SwapRenderPriority(ptr noundef nonnull %236, ptr noundef %237) #4
  %238 = getelementptr %struct.RenderPriority, ptr %236, i32 -1
  %239 = add i8 %235, -1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %296, label %241

241:                                              ; preds = %234
  %242 = getelementptr %struct.RenderPriority, ptr %236, i32 -1, i32 1
  %243 = load volatile i8, ptr %242, align 4
  %244 = zext i8 %243 to i32
  %245 = getelementptr inbounds %struct.RenderPriority, ptr %236, i32 0, i32 1
  %246 = load volatile i8, ptr %245, align 4
  %247 = zext i8 %246 to i32
  call void asm sideeffect "", "{r0},{r3}"(i32 %244, i32 %247) #3, !srcloc !13
  %248 = icmp ult i8 %243, %246
  br i1 %248, label %296, label %249

249:                                              ; preds = %241
  %250 = load volatile i32, ptr %238, align 4
  %251 = load volatile i32, ptr %236, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %234, label %296

253:                                              ; preds = %224
  %254 = icmp eq i32 %225, %226
  br i1 %254, label %255, label %296

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.RenderPriority, ptr %306, i32 0, i32 2
  %257 = load volatile i8, ptr %256, align 1
  %258 = zext i8 %257 to i32
  %259 = getelementptr %struct.RenderPriority, ptr %306, i32 1, i32 2
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i32
  call void asm sideeffect "", "{r0},r"(i32 %258, i32 %261) #3, !srcloc !14
  %262 = icmp ugt i8 %257, %260
  br i1 %262, label %263, label %296

263:                                              ; preds = %255
  %264 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6), align 1
  %265 = trunc i32 %303 to i8
  %266 = sub i8 %265, %264
  %267 = add i8 %266, 1
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %296, label %269

269:                                              ; preds = %263, %288
  %270 = phi i8 [ %274, %288 ], [ %267, %263 ]
  %271 = phi ptr [ %273, %288 ], [ %306, %263 ]
  %272 = getelementptr %struct.RenderPriority, ptr %271, i32 1
  call arm_apcscc void @SwapRenderPriority(ptr noundef nonnull %271, ptr noundef %272) #4
  %273 = getelementptr %struct.RenderPriority, ptr %271, i32 -1
  %274 = add i8 %270, -1
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %296, label %276

276:                                              ; preds = %269
  %277 = getelementptr %struct.RenderPriority, ptr %271, i32 -1, i32 1
  %278 = load volatile i8, ptr %277, align 4
  %279 = zext i8 %278 to i32
  %280 = getelementptr inbounds %struct.RenderPriority, ptr %271, i32 0, i32 1
  %281 = load volatile i8, ptr %280, align 4
  %282 = zext i8 %281 to i32
  call void asm sideeffect "", "{r0},{r1}"(i32 %279, i32 %282) #3, !srcloc !15
  %283 = icmp ult i8 %278, %281
  br i1 %283, label %296, label %284

284:                                              ; preds = %276
  %285 = load volatile i32, ptr %273, align 4
  %286 = load volatile i32, ptr %271, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %296, label %288

288:                                              ; preds = %284
  %289 = getelementptr %struct.RenderPriority, ptr %271, i32 -1, i32 2
  %290 = load volatile i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  %292 = getelementptr inbounds %struct.RenderPriority, ptr %271, i32 0, i32 2
  %293 = load volatile i8, ptr %292, align 1
  %294 = zext i8 %293 to i32
  call void asm sideeffect "", "{r0},{r2}"(i32 %291, i32 %294) #3, !srcloc !16
  %295 = icmp ugt i8 %290, %293
  br i1 %295, label %269, label %296

296:                                              ; preds = %284, %288, %276, %269, %249, %241, %234, %217, %209, %201, %253, %228, %263, %255, %184, %197, %195, %221
  %297 = load i32, ptr %159, align 4
  %298 = and i32 %297, 255
  %299 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 6, i32 1), align 2
  %300 = zext i8 %299 to i32
  call void asm sideeffect "", "r"(i32 %300) #3, !srcloc !8
  %301 = icmp ult i32 %298, %300
  br i1 %301, label %302, label %313

302:                                              ; preds = %157, %296
  %303 = phi i32 [ %158, %157 ], [ %298, %296 ]
  %304 = shl nuw nsw i32 %303, 3
  %305 = load ptr, ptr @gRenderPriority, align 4
  %306 = getelementptr i8, ptr %305, i32 %304
  %307 = getelementptr inbounds %struct.RenderPriority, ptr %306, i32 0, i32 1
  %308 = load volatile i8, ptr %307, align 4
  %309 = getelementptr %struct.RenderPriority, ptr %306, i32 1
  %310 = getelementptr %struct.RenderPriority, ptr %306, i32 1, i32 1
  %311 = load volatile i8, ptr %310, align 4
  %312 = icmp ugt i8 %308, %311
  br i1 %312, label %160, label %221

313:                                              ; preds = %296, %152
  %314 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 4
  store volatile ptr @gRenderOam, ptr %314, align 4
  %315 = load ptr, ptr @gRenderPriority, align 4
  %316 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 6
  store volatile i32 0, ptr %316, align 4
  %317 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %702, label %319

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 13
  %321 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 12
  %322 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 14
  %323 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 2
  %324 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 2, i32 1
  %325 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 7
  %326 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 8
  %327 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 9
  %328 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 10
  %329 = getelementptr inbounds %struct.DrawTemps, ptr %1, i32 0, i32 11
  br label %330

330:                                              ; preds = %319, %695
  %331 = phi i32 [ %697, %695 ], [ 0, %319 ]
  %332 = phi ptr [ %698, %695 ], [ %315, %319 ]
  %333 = load ptr, ptr @gRenderSlots, align 4
  %334 = getelementptr inbounds %struct.RenderPriority, ptr %332, i32 0, i32 2
  %335 = load i8, ptr %334, align 1
  %336 = zext i8 %335 to i32
  %337 = getelementptr %struct.RenderSlot, ptr %333, i32 %336
  %338 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 23
  %339 = load i8, ptr %338, align 4
  %340 = add nuw nsw i32 %331, 1
  store i32 %340, ptr %320, align 4
  %341 = getelementptr %struct.RenderPriority, ptr %332, i32 1
  store ptr %341, ptr %321, align 4
  %342 = icmp eq i8 %339, 0
  br i1 %342, label %695, label %343

343:                                              ; preds = %330
  %344 = load i32, ptr %337, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %695, label %346

346:                                              ; preds = %343
  %347 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 23, i32 4
  %348 = load i8, ptr %347, align 1
  store ptr %347, ptr %322, align 4
  %349 = icmp eq i8 %348, -1
  br i1 %349, label %379, label %350

350:                                              ; preds = %346
  %351 = zext i8 %348 to i32
  %352 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 8
  %353 = load i16, ptr %352, align 4
  %354 = sext i16 %353 to i32
  call void asm sideeffect "", "{r0},{r1}"(i32 %354, i32 %351) #3, !srcloc !17
  %355 = call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %354) #4
  %356 = and i32 %355, 65535
  %357 = load volatile i32, ptr %323, align 4
  %358 = and i32 %357, -65536
  %359 = or disjoint i32 %358, %356
  store volatile i32 %359, ptr %323, align 4
  %360 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 9
  %361 = load i16, ptr %360, align 2
  %362 = sext i16 %361 to i32
  %363 = call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %362) #4
  %364 = shl i32 %363, 16
  %365 = load volatile i32, ptr %323, align 4
  %366 = and i32 %365, 65535
  %367 = or disjoint i32 %366, %364
  store volatile i32 %367, ptr %323, align 4
  %368 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 10
  %369 = load i16, ptr %368, align 4
  %370 = zext i16 %369 to i32
  %371 = load volatile i32, ptr %324, align 4
  %372 = and i32 %371, -65536
  %373 = or disjoint i32 %372, %370
  store volatile i32 %373, ptr %324, align 4
  %374 = load ptr, ptr %322, align 4
  %375 = load i8, ptr %374, align 1
  %376 = zext i8 %375 to i32
  %377 = shl nuw nsw i32 %376, 5
  %378 = getelementptr i8, ptr getelementptr inbounds ([128 x %struct.RenderOamEntry], ptr @gRenderOam, i32 0, i32 0, i32 3), i32 %377
  call arm_apcscc void @BiosObjAffineSet(ptr noundef nonnull %323, ptr noundef %378, i32 noundef 1, i32 noundef 8) #4
  br label %379

379:                                              ; preds = %350, %346
  call arm_apcscc void @CalculateRenderScreenPosition(ptr noundef nonnull %337) #4
  %380 = load i32, ptr %337, align 4
  %381 = inttoptr i32 %380 to ptr
  %382 = load i8, ptr %381, align 2
  %383 = zext i8 %382 to i32
  call void asm sideeffect "", "{r0},{r10}"(i32 2, i32 %383) #3, !srcloc !18
  %384 = getelementptr i8, ptr %381, i32 2
  %385 = load ptr, ptr %322, align 4
  %386 = load i8, ptr %385, align 1
  %387 = icmp eq i8 %386, -1
  %388 = icmp sgt i8 %382, 0
  br i1 %387, label %620, label %389

389:                                              ; preds = %379
  br i1 %388, label %390, label %695

390:                                              ; preds = %389
  %391 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 9
  %392 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 23, i32 1
  %393 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 20
  %394 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 18
  %395 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 10
  %396 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 22
  %397 = getelementptr i8, ptr %396, i32 1
  %398 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 8
  %399 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 19
  %400 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 17
  %401 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 23, i32 7
  br label %402

402:                                              ; preds = %390, %612
  %403 = phi i8 [ %616, %612 ], [ %382, %390 ]
  %404 = phi ptr [ %615, %612 ], [ %384, %390 ]
  %405 = load i16, ptr %404, align 2
  %406 = zext i16 %405 to i32
  call void asm sideeffect "", "{r0}"(i32 %406) #3, !srcloc !19
  %407 = and i32 %406, 255
  call void asm sideeffect "", "{r0},{r3}"(i32 %407, i32 128) #3, !srcloc !20
  %408 = and i32 %406, 128
  %409 = icmp eq i32 %408, 0
  %410 = sub nuw nsw i32 256, %407
  %411 = select i1 %409, i32 %407, i32 %410
  %412 = load i16, ptr %391, align 2
  %413 = sext i16 %412 to i32
  %414 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %411, i32 noundef %413) #4
  %415 = xor i32 %414, 255
  %416 = add i32 %415, 1
  %417 = select i1 %409, i32 %414, i32 %416
  %418 = load i16, ptr %404, align 2
  %419 = zext i16 %418 to i32
  %420 = getelementptr inbounds %struct.RenderObjectPart, ptr %404, i32 0, i32 1
  %421 = load i16, ptr %420, align 2
  %422 = zext i16 %421 to i32
  %423 = call arm_apcscc zeroext i16 @GetObjectHeight(i32 noundef %419, i32 noundef %422) #4
  %424 = lshr i16 %423, 1
  %425 = zext nneg i16 %424 to i32
  call void asm sideeffect "", "{r2}"(i32 %425) #3, !srcloc !21
  %426 = load i16, ptr %391, align 2
  %427 = sext i16 %426 to i32
  %428 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %425, i32 noundef %427) #4
  %429 = trunc i32 %428 to i16
  %430 = sub i16 %429, %424
  store ptr %392, ptr %325, align 4
  %431 = load i8, ptr %392, align 1
  %432 = and i8 %431, 32
  %433 = icmp eq i8 %432, 0
  %434 = trunc i32 %417 to i16
  %435 = sub i16 %434, %424
  %436 = zext i16 %435 to i32
  %437 = select i1 %433, i32 %417, i32 %436
  %438 = trunc i32 %437 to i16
  %439 = add i16 %430, %438
  %440 = zext i16 %439 to i32
  %441 = load i16, ptr %393, align 2
  %442 = sext i16 %441 to i32
  %443 = load i16, ptr %391, align 2
  %444 = sext i16 %443 to i32
  %445 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %442, i32 noundef %444) #4
  %446 = load i16, ptr %393, align 2
  %447 = trunc i32 %445 to i16
  %448 = sub i16 %447, %446
  %449 = lshr i16 %448, 8
  %450 = zext nneg i16 %449 to i32
  call void asm sideeffect "", "r"(i32 255) #3, !srcloc !22
  %451 = load i16, ptr %394, align 2
  %452 = zext i16 %451 to i32
  %453 = load i16, ptr %395, align 4
  %454 = lshr i16 %453, 7
  %455 = and i16 %454, 510
  %456 = zext nneg i16 %455 to i32
  %457 = add i32 %456, ptrtoint (ptr @gRenderSineTable to i32)
  %458 = inttoptr i32 %457 to ptr
  %459 = add i32 %456, add (i32 ptrtoint (ptr @gRenderSineTable to i32), i32 128)
  %460 = inttoptr i32 %459 to ptr
  %461 = load i16, ptr %460, align 2
  %462 = load i8, ptr %396, align 2
  %463 = sext i8 %462 to i32
  %464 = load i8, ptr %397, align 1
  %465 = sub nsw i32 0, %463
  store i32 %465, ptr %326, align 4
  %466 = load i16, ptr %458, align 2
  %467 = sext i16 %466 to i32
  store volatile i32 %467, ptr %327, align 4
  %468 = load volatile i32, ptr %327, align 4
  %469 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %465, i32 noundef %468) #4
  %470 = sext i8 %464 to i32
  store i32 %470, ptr %328, align 4
  %471 = sext i16 %461 to i32
  store i32 %471, ptr %329, align 4
  %472 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %470, i32 noundef %471) #4
  %473 = sub nsw i32 %440, %450
  %474 = add nsw i32 %473, %452
  %475 = add nsw i32 %474, %470
  %476 = add i32 %469, %472
  %477 = sub i32 %475, %476
  %478 = and i32 %477, 255
  %479 = load i16, ptr %404, align 2
  call void asm sideeffect "", "{r1},{r3}"(i32 65280, i32 65280) #3, !srcloc !23
  %480 = and i16 %479, -256
  %481 = zext i16 %480 to i32
  %482 = or disjoint i32 %478, %481
  %483 = load volatile ptr, ptr %314, align 4
  %484 = trunc i32 %482 to i16
  store volatile i16 %484, ptr %483, align 2
  %485 = load ptr, ptr %325, align 4
  %486 = load i8, ptr %485, align 1
  %487 = and i8 %486, 32
  %488 = zext nneg i8 %487 to i32
  %489 = shl nuw nsw i32 %488, 4
  call void asm sideeffect "", "{r1},{r2}"(i32 58367, i32 58367) #3, !srcloc !24
  %490 = and i32 %482, 58111
  %491 = or i32 %490, %489
  %492 = or disjoint i32 %491, 256
  %493 = trunc i32 %492 to i16
  store volatile i16 %493, ptr %483, align 2
  %494 = load ptr, ptr %325, align 4
  %495 = load i8, ptr %494, align 1
  %496 = and i8 %495, 16
  %497 = zext nneg i8 %496 to i32
  %498 = shl nuw nsw i32 %497, 8
  %499 = or disjoint i32 %498, %492
  %500 = trunc i32 %499 to i16
  store volatile i16 %500, ptr %483, align 2
  %501 = load i8, ptr %494, align 1
  %502 = and i8 %501, 3
  %503 = zext nneg i8 %502 to i32
  %504 = shl nuw nsw i32 %503, 10
  %505 = or disjoint i32 %504, %499
  %506 = trunc i32 %505 to i16
  store volatile i16 %506, ptr %483, align 2
  %507 = load i16, ptr %420, align 2
  %508 = and i16 %507, 511
  %509 = icmp ugt i16 %508, 255
  %510 = sub nuw nsw i16 512, %508
  %511 = select i1 %509, i16 %510, i16 %508
  %512 = zext nneg i16 %511 to i32
  %513 = load i16, ptr %398, align 4
  %514 = sext i16 %513 to i32
  %515 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %512, i32 noundef %514) #4
  %516 = xor i32 %515, 511
  %517 = add i32 %516, 1
  %518 = select i1 %509, i32 %517, i32 %515
  %519 = load i16, ptr %404, align 2
  %520 = zext i16 %519 to i32
  %521 = load i16, ptr %420, align 2
  %522 = zext i16 %521 to i32
  %523 = call arm_apcscc zeroext i16 @GetObjectWidth(i32 noundef %520, i32 noundef %522) #4
  %524 = lshr i16 %523, 1
  %525 = zext nneg i16 %524 to i32
  call void asm sideeffect "", "{r2}"(i32 %525) #3, !srcloc !25
  %526 = load i16, ptr %398, align 4
  %527 = sext i16 %526 to i32
  %528 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %525, i32 noundef %527) #4
  %529 = trunc i32 %528 to i16
  %530 = sub i16 %529, %524
  %531 = load ptr, ptr %325, align 4
  %532 = load i8, ptr %531, align 1
  %533 = and i8 %532, 32
  %534 = icmp eq i8 %533, 0
  %535 = trunc i32 %518 to i16
  %536 = sub i16 %535, %524
  %537 = zext i16 %536 to i32
  %538 = select i1 %534, i32 %518, i32 %537
  %539 = trunc i32 %538 to i16
  %540 = add i16 %530, %539
  %541 = zext i16 %540 to i32
  %542 = load i16, ptr %399, align 2
  %543 = sext i16 %542 to i32
  %544 = load i16, ptr %398, align 4
  %545 = sext i16 %544 to i32
  %546 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %543, i32 noundef %545) #4
  %547 = load i16, ptr %399, align 2
  %548 = trunc i32 %546 to i16
  %549 = sub i16 %548, %547
  %550 = lshr i16 %549, 8
  %551 = zext nneg i16 %550 to i32
  call void asm sideeffect "", "{r0}"(i32 %551) #3, !srcloc !26
  %552 = or disjoint i32 %551, 256
  %553 = icmp slt i16 %549, 0
  %554 = select i1 %553, i32 %552, i32 %551
  %555 = load i16, ptr %400, align 2
  %556 = zext i16 %555 to i32
  %557 = load i32, ptr %326, align 4
  %558 = load i32, ptr %329, align 4
  %559 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %557, i32 noundef %558) #4
  %560 = load i32, ptr %328, align 4
  %561 = load volatile i32, ptr %327, align 4
  %562 = call arm_apcscc i32 @MultiplyFixed8(i32 noundef %560, i32 noundef %561) #4
  %563 = load i32, ptr %326, align 4
  %564 = add nuw nsw i32 %556, %541
  %565 = add i32 %564, %559
  %566 = add i32 %554, %562
  %567 = add i32 %566, %563
  %568 = sub i32 %565, %567
  %569 = and i32 %568, 511
  %570 = load i16, ptr %420, align 2
  call void asm sideeffect "", "{r1},r"(i32 65024, i32 65024) #3, !srcloc !27
  %571 = and i16 %570, -16384
  %572 = zext i16 %571 to i32
  %573 = or disjoint i32 %569, %572
  call void asm sideeffect "", "{r0},{r1}"(i32 49663, i32 49663) #3, !srcloc !28
  %574 = load volatile ptr, ptr %314, align 4
  %575 = trunc i32 %573 to i16
  %576 = getelementptr i16, ptr %574, i32 1
  store volatile i16 %575, ptr %576, align 2
  %577 = load ptr, ptr %322, align 4
  %578 = load i8, ptr %577, align 1
  %579 = zext i8 %578 to i32
  %580 = shl nuw nsw i32 %579, 9
  call void asm sideeffect "", "{r3}"(i32 15872) #3, !srcloc !29
  call void asm sideeffect "", "{r1}"(i32 15872) #3, !srcloc !30
  %581 = and i32 %580, 15872
  %582 = or disjoint i32 %581, %573
  %583 = load volatile ptr, ptr %314, align 4
  %584 = trunc i32 %582 to i16
  %585 = getelementptr i16, ptr %583, i32 1
  store volatile i16 %584, ptr %585, align 2
  %586 = load ptr, ptr %325, align 4
  %587 = load i8, ptr %586, align 1
  %588 = and i8 %587, 12
  %589 = zext nneg i8 %588 to i32
  %590 = shl nuw nsw i32 %589, 8
  %591 = getelementptr inbounds %struct.RenderObjectPart, ptr %404, i32 0, i32 2
  %592 = load i16, ptr %591, align 2
  %593 = zext i16 %592 to i32
  %594 = or i32 %590, %593
  %595 = trunc i32 %594 to i16
  %596 = getelementptr i16, ptr %583, i32 2
  store volatile i16 %595, ptr %596, align 2
  %597 = load i8, ptr %401, align 1
  %598 = icmp ult i8 %597, 16
  br i1 %598, label %612, label %599

599:                                              ; preds = %402
  call void asm sideeffect "", "{r0},r"(i32 4095, i32 4095) #3, !srcloc !31
  %600 = and i32 %594, 4095
  %601 = load volatile ptr, ptr %314, align 4
  %602 = trunc i32 %600 to i16
  %603 = getelementptr i16, ptr %601, i32 2
  store volatile i16 %602, ptr %603, align 2
  %604 = load i8, ptr %401, align 1
  %605 = and i8 %604, -16
  %606 = zext i8 %605 to i32
  %607 = shl nuw nsw i32 %606, 8
  %608 = or disjoint i32 %607, %600
  %609 = load volatile ptr, ptr %314, align 4
  %610 = trunc i32 %608 to i16
  %611 = getelementptr i16, ptr %609, i32 2
  store volatile i16 %610, ptr %611, align 2
  br label %612

612:                                              ; preds = %599, %402
  %613 = load volatile ptr, ptr %314, align 4
  %614 = getelementptr %struct.RenderOamEntry, ptr %613, i32 1
  store volatile ptr %614, ptr %314, align 4
  call void asm sideeffect "", "{r3}"(i32 6) #3, !srcloc !32
  %615 = getelementptr i8, ptr %404, i32 6
  %616 = add nsw i8 %403, -1
  %617 = load volatile i32, ptr %316, align 4
  %618 = add i32 %617, 1
  store volatile i32 %618, ptr %316, align 4
  %619 = icmp sgt i8 %403, 1
  br i1 %619, label %402, label %695

620:                                              ; preds = %379
  br i1 %388, label %621, label %695

621:                                              ; preds = %620
  call void asm sideeffect "", "{r1}"(i32 255) #3, !srcloc !33
  %622 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 23, i32 1
  %623 = getelementptr %struct.RenderSlot, ptr %333, i32 %336, i32 23, i32 7
  br label %624

624:                                              ; preds = %687, %621
  %625 = phi i8 [ %382, %621 ], [ %691, %687 ]
  %626 = phi ptr [ %384, %621 ], [ %690, %687 ]
  %627 = phi ptr [ %337, %621 ], [ %631, %687 ]
  %628 = load i16, ptr %626, align 2
  %629 = zext i16 %628 to i32
  %630 = getelementptr inbounds %struct.RenderSlot, ptr %627, i32 0, i32 18
  %631 = call ptr asm "", "={r8},{r8}"(ptr %627) #5, !srcloc !34
  %632 = load i16, ptr %630, align 2
  %633 = zext i16 %632 to i32
  %634 = add nuw nsw i32 %633, %629
  %635 = and i32 %634, 255
  call void asm sideeffect "", "r"(i32 65280) #3, !srcloc !35
  call void asm sideeffect "", "{r1}"(i32 65280) #3, !srcloc !36
  %636 = and i32 %629, 58112
  %637 = or disjoint i32 %635, %636
  call void asm sideeffect "", "{r2}"(i32 58367) #3, !srcloc !37
  call void asm sideeffect "", "{r1}"(i32 58367) #3, !srcloc !38
  %638 = load volatile ptr, ptr %314, align 4
  %639 = trunc i32 %637 to i16
  store volatile i16 %639, ptr %638, align 2
  %640 = load i8, ptr %622, align 1
  %641 = and i8 %640, 16
  %642 = zext nneg i8 %641 to i32
  %643 = shl nuw nsw i32 %642, 8
  %644 = or disjoint i32 %643, %637
  %645 = trunc i32 %644 to i16
  store volatile i16 %645, ptr %638, align 2
  %646 = load i8, ptr %622, align 1
  %647 = and i8 %646, 3
  %648 = zext nneg i8 %647 to i32
  %649 = shl nuw nsw i32 %648, 10
  %650 = or disjoint i32 %649, %644
  %651 = trunc i32 %650 to i16
  store volatile i16 %651, ptr %638, align 2
  %652 = getelementptr inbounds %struct.RenderObjectPart, ptr %626, i32 0, i32 1
  %653 = load i16, ptr %652, align 2
  %654 = getelementptr inbounds %struct.RenderSlot, ptr %631, i32 0, i32 17
  %655 = load i16, ptr %654, align 2
  %656 = add i16 %655, %653
  %657 = and i16 %656, 511
  call void asm sideeffect "", "r"(i32 65024) #3, !srcloc !39
  call void asm sideeffect "", "{r1}"(i32 65024) #3, !srcloc !40
  %658 = and i16 %653, -512
  %659 = or disjoint i16 %657, %658
  %660 = load volatile ptr, ptr %314, align 4
  %661 = getelementptr i16, ptr %660, i32 1
  store volatile i16 %659, ptr %661, align 2
  %662 = getelementptr inbounds %struct.RenderObjectPart, ptr %626, i32 0, i32 2
  %663 = load i16, ptr %662, align 2
  %664 = zext i16 %663 to i32
  call void asm sideeffect "", "r"(i32 62463) #3, !srcloc !41
  call void asm sideeffect "", "{r0},{r2}"(i32 62463, i32 %664) #3, !srcloc !42
  %665 = and i32 %664, 62463
  %666 = load i8, ptr %622, align 1
  %667 = and i8 %666, 12
  %668 = zext nneg i8 %667 to i32
  %669 = shl nuw nsw i32 %668, 8
  %670 = or disjoint i32 %669, %665
  %671 = load volatile ptr, ptr %314, align 4
  %672 = trunc i32 %670 to i16
  %673 = getelementptr i16, ptr %671, i32 2
  store volatile i16 %672, ptr %673, align 2
  %674 = load i8, ptr %623, align 1
  %675 = icmp ult i8 %674, 16
  br i1 %675, label %687, label %676

676:                                              ; preds = %624
  call void asm sideeffect "", "{r0},{r1}"(i32 4095, i32 4095) #3, !srcloc !43
  %677 = and i32 %670, 4095
  %678 = load volatile ptr, ptr %314, align 4
  %679 = trunc i32 %677 to i16
  %680 = getelementptr i16, ptr %678, i32 2
  store volatile i16 %679, ptr %680, align 2
  %681 = load i8, ptr %623, align 1
  %682 = and i8 %681, -16
  %683 = zext i8 %682 to i32
  %684 = shl nuw nsw i32 %683, 8
  %685 = or disjoint i32 %684, %677
  %686 = trunc i32 %685 to i16
  store volatile i16 %686, ptr %680, align 2
  br label %687

687:                                              ; preds = %676, %624
  %688 = load volatile ptr, ptr %314, align 4
  %689 = getelementptr %struct.RenderOamEntry, ptr %688, i32 1
  store volatile ptr %689, ptr %314, align 4
  call void asm sideeffect "", "{r1}"(i32 6) #3, !srcloc !44
  %690 = getelementptr i8, ptr %626, i32 6
  %691 = add nsw i8 %625, -1
  %692 = load volatile i32, ptr %316, align 4
  %693 = add i32 %692, 1
  store volatile i32 %693, ptr %316, align 4
  %694 = icmp sgt i8 %625, 1
  br i1 %694, label %624, label %695

695:                                              ; preds = %612, %687, %343, %620, %389, %330
  %696 = load i32, ptr %320, align 4
  %697 = and i32 %696, 255
  %698 = load ptr, ptr %321, align 4
  %699 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %700 = zext i8 %699 to i32
  %701 = icmp ult i32 %697, %700
  br i1 %701, label %330, label %702

702:                                              ; preds = %695, %313
  %703 = load volatile i32, ptr %316, align 4
  %704 = icmp ult i32 %703, 128
  br i1 %704, label %705, label %713

705:                                              ; preds = %702, %705
  %706 = load volatile ptr, ptr %314, align 4
  store volatile i16 160, ptr %706, align 2
  %707 = getelementptr i16, ptr %706, i32 1
  store volatile i16 240, ptr %707, align 2
  %708 = getelementptr i16, ptr %706, i32 2
  store volatile i16 0, ptr %708, align 2
  %709 = getelementptr i16, ptr %706, i32 4
  store volatile ptr %709, ptr %314, align 4
  %710 = load volatile i32, ptr %316, align 4
  %711 = add i32 %710, 1
  store volatile i32 %711, ptr %316, align 4
  %712 = icmp ult i32 %711, 128
  br i1 %712, label %705, label %713

713:                                              ; preds = %705, %702
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @CalculateBackgroundOffset(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @AssignRenderAffineMatrices() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @GetRenderKey(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SwapRenderPriority(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ReciprocalFixed8(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosObjAffineSet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @CalculateRenderScreenPosition(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @MultiplyFixed8(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc zeroext i16 @GetObjectHeight(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc zeroext i16 @GetObjectWidth(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2090}
!5 = !{i64 3143}
!6 = !{i64 3257}
!7 = !{i64 5622}
!8 = !{i64 15868}
!9 = !{i64 10535}
!10 = !{i64 10836}
!11 = !{i64 11010}
!12 = !{i64 11816}
!13 = !{i64 13219}
!14 = !{i64 13733}
!15 = !{i64 14664}
!16 = !{i64 15229}
!17 = !{i64 17523}
!18 = !{i64 20151}
!19 = !{i64 21633}
!20 = !{i64 21980}
!21 = !{i64 23761}
!22 = !{i64 26379}
!23 = !{i64 30644}
!24 = !{i64 31690}
!25 = !{i64 35798}
!26 = !{i64 38342}
!27 = !{i64 40832}
!28 = !{i64 41187}
!29 = !{i64 41970}
!30 = !{i64 42156}
!31 = !{i64 43869}
!32 = !{i64 45444}
!33 = !{i64 46956}
!34 = !{i64 48005}
!35 = !{i64 48373}
!36 = !{i64 48507}
!37 = !{i64 48771}
!38 = !{i64 48911}
!39 = !{i64 50187}
!40 = !{i64 50321}
!41 = !{i64 51116}
!42 = !{i64 51309}
!43 = !{i64 52301}
!44 = !{i64 53453}
