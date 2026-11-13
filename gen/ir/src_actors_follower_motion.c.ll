; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%union.FollowerRoutePoint = type { [2 x i32] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.anon = type { i16, i16, i16, i16 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerRoutePoints = external dso_local local_unnamed_addr global [0 x %union.FollowerRoutePoint], align 4
@gFollowerRouteReadIndex = external dso_local local_unnamed_addr global i8, align 1
@gBootMode0786 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerPrimaryAnimation = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimation = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerMotionDirection = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerRouteEndIndex = external dso_local local_unnamed_addr global i8, align 1
@gFollowerIdleAnimationDelay = external dso_local local_unnamed_addr global i32, align 4
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateFollowerRenderXZMotion() local_unnamed_addr #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = load i8, ptr @gRenderClassSlots1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  %7 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6, i32 2
  store i32 0, ptr %8, align 4
  %9 = load i8, ptr @gFollowerRouteReadIndex, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr [0 x %union.FollowerRoutePoint], ptr @gFollowerRoutePoints, i32 0, i32 %10
  %12 = load i8, ptr @gBootMode0786, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %0
  %15 = getelementptr [2 x i32], ptr %11, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = trunc i32 %16 to i16
  br i1 %17, label %19, label %46

19:                                               ; preds = %14, %0
  %20 = load ptr, ptr @gRenderSlots, align 4
  %21 = load i8, ptr @gRenderClassSlots1, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.RenderSlot, ptr %20, i32 %22, i32 23
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 15
  %26 = add nsw i8 %25, -1
  %27 = zext i8 %26 to i32
  %28 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %29 = xor i8 %28, 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 1
  %32 = or disjoint i32 %31, 1
  %33 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr ptr, ptr %34, i32 %27
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr @gFollowerPrimaryAnimation, align 4
  %37 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 1
  %40 = or disjoint i32 %39, 1
  %41 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = shl nuw nsw i32 %27, 1
  %44 = getelementptr ptr, ptr %42, i32 %43
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr @gFollowerSecondaryAnimation, align 4
  store i8 0, ptr @gFollowerMotionDirection, align 1
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %105

46:                                               ; preds = %14
  %47 = icmp eq i8 %12, 2
  %48 = select i1 %47, i32 2, i32 1
  %49 = icmp eq i16 %18, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = icmp slt i32 %16, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = zext i1 %47 to i32
  %54 = shl nsw i32 -65536, %53
  store i32 %54, ptr %8, align 4
  br label %83

55:                                               ; preds = %50
  %56 = shl nuw nsw i32 %48, 16
  store i32 %56, ptr %8, align 4
  br label %83

57:                                               ; preds = %46
  %58 = icmp ult i32 %16, 65536
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = icmp slt i16 %18, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = zext i1 %47 to i32
  %63 = shl nsw i32 -65536, %62
  store i32 %63, ptr %7, align 4
  br label %83

64:                                               ; preds = %59
  %65 = shl nuw nsw i32 %48, 16
  store i32 %65, ptr %7, align 4
  br label %83

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 3
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !4
  %68 = load i16, ptr %15, align 4
  %69 = sext i16 %68 to i32
  %70 = shl nsw i32 %69, 16
  store i32 %70, ptr %7, align 4
  %71 = load i16, ptr %67, align 2
  %72 = sext i16 %71 to i32
  %73 = shl nsw i32 %72, 16
  store i32 %73, ptr %8, align 4
  %74 = call arm_apcscc i32 @QuantizeFollowerRenderXZSteps(ptr noundef nonnull %1, ptr noundef nonnull %2) #5
  %75 = load i16, ptr %1, align 2
  %76 = zext i16 %75 to i32
  %77 = shl nuw i32 %76, 16
  store i32 %77, ptr %7, align 4
  %78 = load i16, ptr %2, align 2
  %79 = zext i16 %78 to i32
  %80 = shl nuw i32 %79, 16
  store i32 %80, ptr %8, align 4
  %81 = call arm_apcscc i32 @GetRenderXZMotionDirection(ptr noundef %6) #5
  %82 = and i32 %81, 255
  br label %83

83:                                               ; preds = %66, %64, %61, %52, %55
  %84 = phi i32 [ 1, %52 ], [ 2, %55 ], [ 3, %61 ], [ 4, %64 ], [ %82, %66 ]
  %85 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %86 = xor i8 %85, 1
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 1
  %89 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %88
  %90 = load ptr, ptr %89, align 4
  %91 = shl nuw nsw i32 %84, 1
  %92 = select i1 %47, i32 -1, i32 -2
  %93 = add nsw i32 %92, %91
  %94 = getelementptr ptr, ptr %90, i32 %93
  %95 = load ptr, ptr %94, align 4
  store ptr %95, ptr @gFollowerPrimaryAnimation, align 4
  %96 = trunc i32 %84 to i8
  store i8 %96, ptr @gFollowerMotionDirection, align 1
  %97 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 1
  %100 = or disjoint i32 %99, 1
  %101 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr ptr, ptr %102, i32 %93
  %104 = load ptr, ptr %103, align 4
  store ptr %104, ptr @gFollowerSecondaryAnimation, align 4
  br label %105

105:                                              ; preds = %83, %19
  %106 = phi i32 [ 0, %19 ], [ %84, %83 ]
  %107 = load i8, ptr @gRenderClassSlots0, align 1
  %108 = zext i8 %107 to i32
  %109 = load ptr, ptr @gRenderSlots, align 4
  %110 = mul nuw nsw i32 %108, 104
  %111 = ptrtoint ptr %109 to i32
  %112 = add i32 %110, %111
  %113 = inttoptr i32 %112 to ptr
  %114 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.RenderSlot, ptr %113, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = sub i32 %115, %117
  %119 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.RenderSlot, ptr %113, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 %120, %122
  %124 = call i32 asm "", "=r,0"(i32 %118) #6, !srcloc !5
  %125 = icmp slt i32 %118, 0
  %126 = sub i32 0, %118
  %127 = select i1 %125, i32 %126, i32 %124
  %128 = icmp slt i32 %127, 65536
  br i1 %128, label %129, label %132

129:                                              ; preds = %105
  %130 = call i32 @llvm.abs.i32(i32 %123, i1 false)
  %131 = icmp slt i32 %130, 1572864
  br i1 %131, label %137, label %163

132:                                              ; preds = %105
  %133 = icmp ugt i32 %127, 2621439
  %134 = call i32 @llvm.abs.i32(i32 %123, i1 false)
  %135 = icmp sgt i32 %134, 65535
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %163, label %137

137:                                              ; preds = %132, %129
  %138 = load i8, ptr @gRenderClassSlots1, align 1
  %139 = zext i8 %138 to i32
  %140 = getelementptr %struct.RenderSlot, ptr %109, i32 %139, i32 23
  %141 = load i8, ptr %140, align 4
  %142 = and i8 %141, 15
  %143 = add nsw i8 %142, -1
  %144 = zext i8 %143 to i32
  %145 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %146 = xor i8 %145, 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 1
  %149 = or disjoint i32 %148, 1
  %150 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %149
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr ptr, ptr %151, i32 %144
  %153 = load ptr, ptr %152, align 4
  store ptr %153, ptr @gFollowerPrimaryAnimation, align 4
  %154 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 1
  %157 = or disjoint i32 %156, 1
  %158 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %157
  %159 = load ptr, ptr %158, align 4
  %160 = shl nuw nsw i32 %144, 1
  %161 = getelementptr ptr, ptr %159, i32 %160
  %162 = load ptr, ptr %161, align 4
  store ptr %162, ptr @gFollowerSecondaryAnimation, align 4
  store i8 0, ptr @gFollowerMotionDirection, align 1
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  call arm_apcscc void @RebuildFollowerRenderXZRoute() #5
  br label %163

163:                                              ; preds = %129, %137, %132
  %164 = phi i32 [ 0, %137 ], [ %106, %132 ], [ %106, %129 ]
  %165 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 2
  %166 = load i16, ptr %165, align 4
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !6
  %167 = icmp sgt i16 %166, 0
  %168 = select i1 %167, i32 -32768, i32 32768
  %169 = load i16, ptr %11, align 4
  %170 = zext i16 %169 to i32
  %171 = load i16, ptr %165, align 4
  %172 = zext i16 %171 to i32
  %173 = add nuw nsw i32 %172, %170
  %174 = shl i32 %173, 16
  %175 = load i32, ptr %114, align 4
  %176 = load i32, ptr %7, align 4
  %177 = add i32 %175, %176
  %178 = sub i32 %168, %177
  %179 = add i32 %178, %174
  %180 = ashr i32 %179, 16
  %181 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 3
  %182 = load i16, ptr %181, align 2
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !7
  %183 = icmp sgt i16 %182, 0
  %184 = select i1 %183, i32 -32768, i32 32768
  %185 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %186 = load i16, ptr %185, align 2
  %187 = zext i16 %186 to i32
  %188 = load i16, ptr %181, align 2
  %189 = zext i16 %188 to i32
  %190 = add nuw nsw i32 %189, %187
  %191 = shl i32 %190, 16
  %192 = load i32, ptr %119, align 4
  %193 = load i32, ptr %8, align 4
  %194 = add i32 %192, %193
  %195 = sub i32 %184, %194
  %196 = add i32 %195, %191
  %197 = ashr i32 %196, 16
  %198 = icmp ult i32 %179, 65536
  %199 = icmp ult i32 %196, 65536
  %200 = select i1 %198, i1 %199, i1 false
  %201 = mul i32 %180, %176
  %202 = icmp slt i32 %201, 0
  %203 = select i1 %200, i1 true, i1 %202
  %204 = mul i32 %197, %193
  %205 = icmp slt i32 %204, 0
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %207, label %253

207:                                              ; preds = %163
  %208 = load i8, ptr @gFollowerRouteReadIndex, align 1
  %209 = load i8, ptr @gFollowerRouteEndIndex, align 1
  %210 = icmp eq i8 %208, %209
  br i1 %210, label %227, label %211

211:                                              ; preds = %207
  %212 = add i8 %208, 1
  %213 = and i8 %212, 31
  store i8 %213, ptr @gFollowerRouteReadIndex, align 1
  %214 = zext nneg i8 %213 to i32
  %215 = getelementptr [0 x %union.FollowerRoutePoint], ptr @gFollowerRoutePoints, i32 0, i32 %214
  %216 = load i16, ptr %215, align 4
  %217 = sext i16 %216 to i32
  %218 = shl nsw i32 %217, 16
  store i32 %218, ptr %7, align 4
  %219 = getelementptr inbounds %struct.anon, ptr %215, i32 0, i32 1
  %220 = load i16, ptr %219, align 2
  %221 = sext i16 %220 to i32
  %222 = shl nsw i32 %221, 16
  %223 = load i32, ptr %114, align 4
  %224 = sub i32 %218, %223
  store i32 %224, ptr %7, align 4
  %225 = load i32, ptr %119, align 4
  %226 = sub i32 %222, %225
  store i32 %226, ptr %8, align 4
  br label %253

227:                                              ; preds = %207
  %228 = call i32 asm "", "=r,0"(i32 %180) #6, !srcloc !8
  %229 = call i32 @llvm.abs.i32(i32 %228, i1 false)
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %252, label %231

231:                                              ; preds = %227
  %232 = call i32 asm "", "=r,0"(i32 %197) #6, !srcloc !9
  %233 = call i32 @llvm.abs.i32(i32 %232, i1 false)
  %234 = icmp sgt i32 %233, 1
  %235 = icmp eq i32 %164, 0
  %236 = or i1 %235, %234
  br i1 %236, label %252, label %237

237:                                              ; preds = %231
  %238 = load i16, ptr %11, align 4
  %239 = zext i16 %238 to i32
  %240 = load i16, ptr %165, align 4
  %241 = zext i16 %240 to i32
  %242 = add nuw nsw i32 %241, %239
  %243 = shl i32 %242, 16
  %244 = sub i32 %243, %175
  store i32 %244, ptr %7, align 4
  %245 = load i16, ptr %185, align 2
  %246 = zext i16 %245 to i32
  %247 = load i16, ptr %181, align 2
  %248 = zext i16 %247 to i32
  %249 = add nuw nsw i32 %248, %246
  %250 = shl i32 %249, 16
  %251 = sub i32 %250, %192
  store i32 %251, ptr %8, align 4
  br label %252

252:                                              ; preds = %231, %227, %237
  call arm_apcscc void @RebuildFollowerRenderXZRoute() #5
  br label %253

253:                                              ; preds = %211, %252, %163
  %254 = load ptr, ptr @gFollowerPrimaryAnimation, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %293, label %256

256:                                              ; preds = %253
  %257 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 1
  %258 = load i32, ptr %257, align 4
  %259 = ptrtoint ptr %254 to i32
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %279, label %261

261:                                              ; preds = %256
  %262 = load i8, ptr @gFollowerMotionDirection, align 1
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %261
  %265 = zext i8 %262 to i32
  %266 = load i8, ptr @gRenderClassSlots1, align 1
  %267 = zext i8 %266 to i32
  call arm_apcscc void @SetRenderField60(i32 noundef %267, i32 noundef %265) #5
  %268 = load i8, ptr @gRenderClassSlots1, align 1
  %269 = zext i8 %268 to i32
  %270 = load ptr, ptr @gFollowerPrimaryAnimation, align 4
  call arm_apcscc void @SetRenderAnimation(i32 noundef %269, ptr noundef %270) #5
  br label %279

271:                                              ; preds = %261
  %272 = load i32, ptr @gFollowerIdleAnimationDelay, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = add nsw i32 %272, 1
  br label %279

276:                                              ; preds = %271
  %277 = load i8, ptr @gRenderClassSlots1, align 1
  %278 = zext i8 %277 to i32
  call arm_apcscc void @SetRenderAnimation(i32 noundef %278, ptr noundef nonnull %254) #5
  br label %279

279:                                              ; preds = %256, %264, %276, %274
  %280 = phi i32 [ 0, %276 ], [ %275, %274 ], [ 0, %264 ], [ 0, %256 ]
  store i32 %280, ptr @gFollowerIdleAnimationDelay, align 4
  %281 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %279
  %284 = zext i8 %281 to i32
  %285 = call i32 asm "", "=r,0"(i32 %284) #6, !srcloc !10
  %286 = load ptr, ptr @gRenderSlots, align 4
  %287 = getelementptr %struct.RenderSlot, ptr %286, i32 %285, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = load ptr, ptr @gFollowerSecondaryAnimation, align 4
  %290 = ptrtoint ptr %289 to i32
  %291 = icmp eq i32 %288, %290
  br i1 %291, label %293, label %292

292:                                              ; preds = %283
  call arm_apcscc void @SetRenderAnimation(i32 noundef %285, ptr noundef %289) #5
  br label %293

293:                                              ; preds = %253, %283, %292, %279
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @QuantizeFollowerRenderXZSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @GetRenderXZMotionDirection(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @RebuildFollowerRenderXZRoute() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1985}
!5 = !{i64 3593}
!6 = !{i64 5020}
!7 = !{i64 5430}
!8 = !{i64 6746}
!9 = !{i64 6912}
!10 = !{i64 8770}
