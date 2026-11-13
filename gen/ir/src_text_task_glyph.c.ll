; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2,0"

; Function Attrs: nounwind
define dso_local arm_apcscc void @BlitTaskGlyphToShadow(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 asm "", "={r4},{r4}"(i32 %3) #2, !srcloc !4
  %7 = and i32 %2, 255
  %8 = lshr i32 %6, 1
  %9 = and i32 %8, 3
  %10 = sub nuw nsw i32 4, %9
  %11 = shl i32 %6, 2
  %12 = and i32 %11, 992
  %13 = shl nuw nsw i32 %7, 5
  %14 = shl nuw nsw i32 %7, 6
  %15 = and i32 %4, 3
  %16 = mul nuw nsw i32 %15, 68
  %17 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef 128) #3
  %18 = and i32 %6, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %231, label %20

20:                                               ; preds = %5
  %21 = tail call i32 asm "", "={r3},{r3}"(i32 48) #2, !srcloc !5
  %22 = tail call i32 asm "", "={r4},{r4}"(i32 12) #2, !srcloc !6
  %23 = ptrtoint ptr %17 to i32
  %24 = trunc i32 %4 to i8
  %25 = shl i8 %24, 6
  %26 = trunc i32 %16 to i8
  br label %27

27:                                               ; preds = %27, %20
  %28 = phi i32 [ 0, %20 ], [ %114, %27 ]
  %29 = phi i32 [ %0, %20 ], [ %113, %27 ]
  %30 = and i32 %28, 255
  %31 = add i32 %30, %23
  %32 = inttoptr i32 %29 to ptr
  %33 = load i8, ptr %32, align 1
  %34 = lshr i8 %33, 2
  %35 = and i8 %34, 48
  %36 = or disjoint i8 %35, %25
  %37 = inttoptr i32 %31 to ptr
  store i8 %36, ptr %37, align 1
  %38 = load i8, ptr %32, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %21, %39
  %41 = lshr i32 %40, 4
  %42 = add nuw nsw i32 %41, %16
  %43 = and i32 %22, %39
  %44 = shl nuw nsw i32 %43, 2
  %45 = add nuw nsw i32 %42, %44
  %46 = trunc i32 %45 to i8
  %47 = getelementptr i8, ptr %37, i32 1
  store i8 %46, ptr %47, align 1
  %48 = load i8, ptr %32, align 1
  %49 = and i8 %48, 3
  %50 = add i32 %29, 1
  %51 = inttoptr i32 %50 to ptr
  %52 = load i8, ptr %51, align 1
  %53 = lshr i8 %52, 2
  %54 = and i8 %53, 48
  %55 = or disjoint i8 %49, %54
  %56 = or i8 %55, %26
  %57 = getelementptr i8, ptr %37, i32 2
  store i8 %56, ptr %57, align 1
  %58 = load i8, ptr %51, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %21, %59
  %61 = lshr i32 %60, 4
  %62 = add nuw nsw i32 %61, %16
  %63 = and i32 %22, %59
  %64 = shl nuw nsw i32 %63, 2
  %65 = add nuw nsw i32 %62, %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr i8, ptr %37, i32 3
  store i8 %66, ptr %67, align 1
  %68 = add i32 %31, 32
  %69 = load i8, ptr %51, align 1
  %70 = and i8 %69, 3
  %71 = add i32 %29, 2
  %72 = inttoptr i32 %71 to ptr
  %73 = load i8, ptr %72, align 1
  %74 = lshr i8 %73, 2
  %75 = and i8 %74, 48
  %76 = or disjoint i8 %70, %75
  %77 = or i8 %76, %26
  %78 = inttoptr i32 %68 to ptr
  store i8 %77, ptr %78, align 1
  %79 = add i32 %31, 33
  %80 = load i8, ptr %72, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %21, %81
  %83 = lshr i32 %82, 4
  %84 = add nuw nsw i32 %83, %16
  %85 = and i32 %22, %81
  %86 = shl nuw nsw i32 %85, 2
  %87 = add nuw nsw i32 %84, %86
  %88 = trunc i32 %87 to i8
  %89 = inttoptr i32 %79 to ptr
  store i8 %88, ptr %89, align 1
  %90 = add i32 %31, 34
  %91 = load i8, ptr %72, align 1
  %92 = and i8 %91, 3
  %93 = add i32 %29, 3
  %94 = inttoptr i32 %93 to ptr
  %95 = load i8, ptr %94, align 1
  %96 = lshr i8 %95, 2
  %97 = and i8 %96, 48
  %98 = or disjoint i8 %92, %97
  %99 = or i8 %98, %26
  %100 = inttoptr i32 %90 to ptr
  store i8 %99, ptr %100, align 1
  %101 = add i32 %31, 35
  %102 = tail call i32 asm "", "={r3},{r3}"(i32 %101) #2, !srcloc !7
  %103 = load i8, ptr %94, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %21, %104
  %106 = lshr i32 %105, 4
  %107 = add nuw nsw i32 %106, %16
  %108 = and i32 %22, %104
  %109 = shl nuw nsw i32 %108, 2
  %110 = add nuw nsw i32 %107, %109
  %111 = trunc i32 %110 to i8
  %112 = inttoptr i32 %102 to ptr
  store i8 %111, ptr %112, align 1
  %113 = add i32 %29, 4
  %114 = add nuw nsw i32 %30, 4
  %115 = and i32 %114, 224
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %27, label %117

117:                                              ; preds = %27
  %118 = add i32 %23, 64
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi i32 [ 0, %117 ], [ %206, %119 ]
  %121 = phi i32 [ %113, %117 ], [ %205, %119 ]
  %122 = and i32 %120, 255
  %123 = add i32 %118, %122
  %124 = inttoptr i32 %121 to ptr
  %125 = load i8, ptr %124, align 1
  %126 = lshr i8 %125, 2
  %127 = and i8 %126, 48
  %128 = or disjoint i8 %127, %25
  %129 = inttoptr i32 %123 to ptr
  store i8 %128, ptr %129, align 1
  %130 = load i8, ptr %124, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %21, %131
  %133 = lshr i32 %132, 4
  %134 = add nuw nsw i32 %133, %16
  %135 = and i32 %22, %131
  %136 = shl nuw nsw i32 %135, 2
  %137 = add nuw nsw i32 %134, %136
  %138 = trunc i32 %137 to i8
  %139 = getelementptr i8, ptr %129, i32 1
  store i8 %138, ptr %139, align 1
  %140 = load i8, ptr %124, align 1
  %141 = and i8 %140, 3
  %142 = add i32 %121, 1
  %143 = inttoptr i32 %142 to ptr
  %144 = load i8, ptr %143, align 1
  %145 = lshr i8 %144, 2
  %146 = and i8 %145, 48
  %147 = or disjoint i8 %141, %146
  %148 = or i8 %147, %26
  %149 = getelementptr i8, ptr %129, i32 2
  store i8 %148, ptr %149, align 1
  %150 = load i8, ptr %143, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %21, %151
  %153 = lshr i32 %152, 4
  %154 = add nuw nsw i32 %153, %16
  %155 = and i32 %22, %151
  %156 = shl nuw nsw i32 %155, 2
  %157 = add nuw nsw i32 %154, %156
  %158 = trunc i32 %157 to i8
  %159 = getelementptr i8, ptr %129, i32 3
  store i8 %158, ptr %159, align 1
  %160 = add i32 %123, 32
  %161 = load i8, ptr %143, align 1
  %162 = and i8 %161, 3
  %163 = add i32 %121, 2
  %164 = inttoptr i32 %163 to ptr
  %165 = load i8, ptr %164, align 1
  %166 = lshr i8 %165, 2
  %167 = and i8 %166, 48
  %168 = or disjoint i8 %162, %167
  %169 = or i8 %168, %26
  %170 = inttoptr i32 %160 to ptr
  store i8 %169, ptr %170, align 1
  %171 = add i32 %123, 33
  %172 = load i8, ptr %164, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %21, %173
  %175 = lshr i32 %174, 4
  %176 = add nuw nsw i32 %175, %16
  %177 = and i32 %22, %173
  %178 = shl nuw nsw i32 %177, 2
  %179 = add nuw nsw i32 %176, %178
  %180 = trunc i32 %179 to i8
  %181 = inttoptr i32 %171 to ptr
  store i8 %180, ptr %181, align 1
  %182 = add i32 %123, 34
  %183 = load i8, ptr %164, align 1
  %184 = and i8 %183, 3
  %185 = add i32 %121, 3
  %186 = inttoptr i32 %185 to ptr
  %187 = load i8, ptr %186, align 1
  %188 = lshr i8 %187, 2
  %189 = and i8 %188, 48
  %190 = or disjoint i8 %184, %189
  %191 = or i8 %190, %26
  %192 = inttoptr i32 %182 to ptr
  store i8 %191, ptr %192, align 1
  %193 = add i32 %123, 35
  %194 = tail call i32 asm "", "={r3},{r3}"(i32 %193) #2, !srcloc !7
  %195 = load i8, ptr %186, align 1
  %196 = zext i8 %195 to i32
  %197 = and i32 %21, %196
  %198 = lshr i32 %197, 4
  %199 = add nuw nsw i32 %198, %16
  %200 = and i32 %22, %196
  %201 = shl nuw nsw i32 %200, 2
  %202 = add nuw nsw i32 %199, %201
  %203 = trunc i32 %202 to i8
  %204 = inttoptr i32 %194 to ptr
  store i8 %203, ptr %204, align 1
  %205 = add i32 %121, 4
  %206 = add nuw nsw i32 %122, 4
  %207 = and i32 %206, 224
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %119, label %209

209:                                              ; preds = %119
  %210 = add i32 %12, %1
  %211 = add i32 %210, %9
  br label %212

212:                                              ; preds = %209, %212
  %213 = phi i8 [ %229, %212 ], [ 0, %209 ]
  %214 = icmp eq i8 %213, 32
  %215 = select i1 %214, i8 64, i8 %213
  %216 = zext nneg i8 %215 to i32
  %217 = add i32 %216, %23
  %218 = and i32 %216, 63
  %219 = icmp ugt i8 %215, 63
  %220 = select i1 %219, i32 %13, i32 0
  %221 = add i32 %211, %220
  %222 = add i32 %221, %218
  %223 = inttoptr i32 %222 to ptr
  %224 = load i8, ptr %223, align 1
  %225 = and i8 %224, 15
  %226 = inttoptr i32 %217 to ptr
  %227 = load i8, ptr %226, align 1
  %228 = add i8 %225, %227
  store i8 %228, ptr %226, align 1
  %229 = add nuw nsw i8 %215, 4
  %230 = icmp ult i8 %215, 92
  br i1 %230, label %212, label %432

231:                                              ; preds = %5
  %232 = tail call i32 asm "", "={r3},{r3}"(i32 192) #2, !srcloc !8
  %233 = tail call i32 asm "", "={r4},{r4}"(i32 48) #2, !srcloc !9
  %234 = tail call i32 asm "", "={r1},{r1}"(i32 3) #2, !srcloc !10
  %235 = ptrtoint ptr %17 to i32
  br label %236

236:                                              ; preds = %236, %231
  %237 = phi i32 [ 0, %231 ], [ %330, %236 ]
  %238 = phi i32 [ %0, %231 ], [ %329, %236 ]
  %239 = and i32 %237, 255
  %240 = add i32 %239, %235
  %241 = inttoptr i32 %238 to ptr
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %232, %243
  %245 = lshr i32 %244, 6
  %246 = and i32 %233, %243
  %247 = add nuw nsw i32 %246, %16
  %248 = add nuw nsw i32 %247, %245
  %249 = trunc i32 %248 to i8
  %250 = inttoptr i32 %240 to ptr
  store i8 %249, ptr %250, align 1
  %251 = load i8, ptr %241, align 1
  %252 = zext i8 %251 to i32
  %253 = lshr i32 %252, 2
  %254 = and i32 %253, 3
  %255 = or disjoint i32 %254, %16
  %256 = and i32 %234, %252
  %257 = shl nuw nsw i32 %256, 4
  %258 = add nuw nsw i32 %255, %257
  %259 = trunc i32 %258 to i8
  %260 = getelementptr i8, ptr %250, i32 1
  store i8 %259, ptr %260, align 1
  %261 = add i32 %238, 1
  %262 = inttoptr i32 %261 to ptr
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = and i32 %232, %264
  %266 = lshr i32 %265, 6
  %267 = and i32 %233, %264
  %268 = add nuw nsw i32 %267, %16
  %269 = add nuw nsw i32 %268, %266
  %270 = trunc i32 %269 to i8
  %271 = getelementptr i8, ptr %250, i32 2
  store i8 %270, ptr %271, align 1
  %272 = load i8, ptr %262, align 1
  %273 = zext i8 %272 to i32
  %274 = lshr i32 %273, 2
  %275 = and i32 %274, 3
  %276 = or disjoint i32 %275, %16
  %277 = and i32 %234, %273
  %278 = shl nuw nsw i32 %277, 4
  %279 = add nuw nsw i32 %276, %278
  %280 = trunc i32 %279 to i8
  %281 = getelementptr i8, ptr %250, i32 3
  store i8 %280, ptr %281, align 1
  %282 = add i32 %238, 2
  %283 = add i32 %240, 32
  %284 = inttoptr i32 %282 to ptr
  %285 = load i8, ptr %284, align 1
  %286 = zext i8 %285 to i32
  %287 = and i32 %232, %286
  %288 = lshr i32 %287, 6
  %289 = and i32 %233, %286
  %290 = add nuw nsw i32 %289, %16
  %291 = add nuw nsw i32 %290, %288
  %292 = trunc i32 %291 to i8
  %293 = inttoptr i32 %283 to ptr
  store i8 %292, ptr %293, align 1
  %294 = add i32 %240, 33
  %295 = load i8, ptr %284, align 1
  %296 = zext i8 %295 to i32
  %297 = lshr i32 %296, 2
  %298 = and i32 %297, 3
  %299 = or disjoint i32 %298, %16
  %300 = and i32 %234, %296
  %301 = shl nuw nsw i32 %300, 4
  %302 = add nuw nsw i32 %299, %301
  %303 = trunc i32 %302 to i8
  %304 = inttoptr i32 %294 to ptr
  store i8 %303, ptr %304, align 1
  %305 = add i32 %238, 3
  %306 = add i32 %240, 34
  %307 = inttoptr i32 %305 to ptr
  %308 = load i8, ptr %307, align 1
  %309 = zext i8 %308 to i32
  %310 = and i32 %232, %309
  %311 = lshr i32 %310, 6
  %312 = and i32 %233, %309
  %313 = add nuw nsw i32 %312, %16
  %314 = add nuw nsw i32 %313, %311
  %315 = trunc i32 %314 to i8
  %316 = inttoptr i32 %306 to ptr
  store i8 %315, ptr %316, align 1
  %317 = add i32 %240, 35
  %318 = tail call i32 asm "", "={r3},{r3}"(i32 %317) #2, !srcloc !11
  %319 = load i8, ptr %307, align 1
  %320 = zext i8 %319 to i32
  %321 = lshr i32 %320, 2
  %322 = and i32 %321, 3
  %323 = or disjoint i32 %322, %16
  %324 = and i32 %234, %320
  %325 = shl nuw nsw i32 %324, 4
  %326 = add nuw nsw i32 %323, %325
  %327 = trunc i32 %326 to i8
  %328 = inttoptr i32 %318 to ptr
  store i8 %327, ptr %328, align 1
  %329 = add i32 %238, 4
  %330 = add nuw nsw i32 %239, 4
  %331 = and i32 %330, 224
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %236, label %333

333:                                              ; preds = %236
  %334 = add i32 %235, 64
  br label %335

335:                                              ; preds = %335, %333
  %336 = phi i32 [ 0, %333 ], [ %429, %335 ]
  %337 = phi i32 [ %329, %333 ], [ %428, %335 ]
  %338 = and i32 %336, 255
  %339 = add i32 %334, %338
  %340 = inttoptr i32 %337 to ptr
  %341 = load i8, ptr %340, align 1
  %342 = zext i8 %341 to i32
  %343 = and i32 %232, %342
  %344 = lshr i32 %343, 6
  %345 = and i32 %233, %342
  %346 = add nuw nsw i32 %345, %16
  %347 = add nuw nsw i32 %346, %344
  %348 = trunc i32 %347 to i8
  %349 = inttoptr i32 %339 to ptr
  store i8 %348, ptr %349, align 1
  %350 = load i8, ptr %340, align 1
  %351 = zext i8 %350 to i32
  %352 = lshr i32 %351, 2
  %353 = and i32 %352, 3
  %354 = or disjoint i32 %353, %16
  %355 = and i32 %234, %351
  %356 = shl nuw nsw i32 %355, 4
  %357 = add nuw nsw i32 %354, %356
  %358 = trunc i32 %357 to i8
  %359 = getelementptr i8, ptr %349, i32 1
  store i8 %358, ptr %359, align 1
  %360 = add i32 %337, 1
  %361 = inttoptr i32 %360 to ptr
  %362 = load i8, ptr %361, align 1
  %363 = zext i8 %362 to i32
  %364 = and i32 %232, %363
  %365 = lshr i32 %364, 6
  %366 = and i32 %233, %363
  %367 = add nuw nsw i32 %366, %16
  %368 = add nuw nsw i32 %367, %365
  %369 = trunc i32 %368 to i8
  %370 = getelementptr i8, ptr %349, i32 2
  store i8 %369, ptr %370, align 1
  %371 = load i8, ptr %361, align 1
  %372 = zext i8 %371 to i32
  %373 = lshr i32 %372, 2
  %374 = and i32 %373, 3
  %375 = or disjoint i32 %374, %16
  %376 = and i32 %234, %372
  %377 = shl nuw nsw i32 %376, 4
  %378 = add nuw nsw i32 %375, %377
  %379 = trunc i32 %378 to i8
  %380 = getelementptr i8, ptr %349, i32 3
  store i8 %379, ptr %380, align 1
  %381 = add i32 %337, 2
  %382 = add i32 %339, 32
  %383 = inttoptr i32 %381 to ptr
  %384 = load i8, ptr %383, align 1
  %385 = zext i8 %384 to i32
  %386 = and i32 %232, %385
  %387 = lshr i32 %386, 6
  %388 = and i32 %233, %385
  %389 = add nuw nsw i32 %388, %16
  %390 = add nuw nsw i32 %389, %387
  %391 = trunc i32 %390 to i8
  %392 = inttoptr i32 %382 to ptr
  store i8 %391, ptr %392, align 1
  %393 = add i32 %339, 33
  %394 = load i8, ptr %383, align 1
  %395 = zext i8 %394 to i32
  %396 = lshr i32 %395, 2
  %397 = and i32 %396, 3
  %398 = or disjoint i32 %397, %16
  %399 = and i32 %234, %395
  %400 = shl nuw nsw i32 %399, 4
  %401 = add nuw nsw i32 %398, %400
  %402 = trunc i32 %401 to i8
  %403 = inttoptr i32 %393 to ptr
  store i8 %402, ptr %403, align 1
  %404 = add i32 %337, 3
  %405 = add i32 %339, 34
  %406 = inttoptr i32 %404 to ptr
  %407 = load i8, ptr %406, align 1
  %408 = zext i8 %407 to i32
  %409 = and i32 %232, %408
  %410 = lshr i32 %409, 6
  %411 = and i32 %233, %408
  %412 = add nuw nsw i32 %411, %16
  %413 = add nuw nsw i32 %412, %410
  %414 = trunc i32 %413 to i8
  %415 = inttoptr i32 %405 to ptr
  store i8 %414, ptr %415, align 1
  %416 = add i32 %339, 35
  %417 = tail call i32 asm "", "={r3},{r3}"(i32 %416) #2, !srcloc !11
  %418 = load i8, ptr %406, align 1
  %419 = zext i8 %418 to i32
  %420 = lshr i32 %419, 2
  %421 = and i32 %420, 3
  %422 = or disjoint i32 %421, %16
  %423 = and i32 %234, %419
  %424 = shl nuw nsw i32 %423, 4
  %425 = add nuw nsw i32 %422, %424
  %426 = trunc i32 %425 to i8
  %427 = inttoptr i32 %417 to ptr
  store i8 %426, ptr %427, align 1
  %428 = add i32 %337, 4
  %429 = add nuw nsw i32 %338, 4
  %430 = and i32 %429, 224
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %335, label %432

432:                                              ; preds = %212, %335
  %433 = phi i32 [ %235, %335 ], [ %23, %212 ]
  %434 = or disjoint i32 %12, %9
  %435 = or disjoint i32 %434, 28
  br label %436

436:                                              ; preds = %451, %432
  %437 = phi i32 [ 0, %432 ], [ %452, %451 ]
  %438 = and i32 %437, 255
  %439 = and i32 %437, 3
  %440 = icmp ult i32 %439, %10
  %441 = and i32 %437, 63
  %442 = select i1 %440, i32 %434, i32 %435
  %443 = add nuw nsw i32 %442, %441
  %444 = icmp ult i32 %443, %13
  br i1 %444, label %445, label %451

445:                                              ; preds = %436
  %446 = add i32 %443, %1
  %447 = add i32 %438, %433
  %448 = inttoptr i32 %447 to ptr
  %449 = load i8, ptr %448, align 1
  %450 = inttoptr i32 %446 to ptr
  store i8 %449, ptr %450, align 1
  br label %451

451:                                              ; preds = %445, %436
  %452 = add nuw nsw i32 %438, 1
  %453 = and i32 %452, 192
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %436, label %455

455:                                              ; preds = %451, %471
  %456 = phi i32 [ %472, %471 ], [ 64, %451 ]
  %457 = and i32 %456, 255
  %458 = and i32 %456, 3
  %459 = icmp ult i32 %458, %10
  %460 = and i32 %456, 63
  %461 = select i1 %459, i32 %434, i32 %435
  %462 = add nuw nsw i32 %460, %13
  %463 = add nuw nsw i32 %462, %461
  %464 = icmp ult i32 %463, %14
  br i1 %464, label %465, label %471

465:                                              ; preds = %455
  %466 = add i32 %463, %1
  %467 = add i32 %457, %433
  %468 = inttoptr i32 %467 to ptr
  %469 = load i8, ptr %468, align 1
  %470 = inttoptr i32 %466 to ptr
  store i8 %469, ptr %470, align 1
  br label %471

471:                                              ; preds = %465, %455
  %472 = add nuw nsw i32 %457, 1
  %473 = and i32 %472, 128
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %455, label %475

475:                                              ; preds = %471
  %476 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %17) #3
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1401}
!5 = !{i64 3422}
!6 = !{i64 3547}
!7 = !{i64 6804}
!8 = !{i64 9679}
!9 = !{i64 9796}
!10 = !{i64 9980}
!11 = !{i64 13211}
