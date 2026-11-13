; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskFlagsSecond = external dso_local global [0 x i8], align 1
@gTaskFlagsFirst = external dso_local global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextBundles = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gTaskTextGroupsCFC8 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskConstructorByte646 = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextGroupsCF98 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextGroupsCFA4 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextGroupsCFB0 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextGroupsCFBC = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextVariables2BB0 = external dso_local global [0 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @CountTaskTextItems(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %343

2:                                                ; preds = %343
  %3 = icmp ult i8 %347, -32
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i32 %344, 1
  br label %340

6:                                                ; preds = %2
  switch i8 %347, label %336 [
    i8 -14, label %7
    i8 -13, label %7
    i8 -26, label %9
    i8 -25, label %12
    i8 -16, label %15
    i8 -15, label %38
    i8 -10, label %65
    i8 -9, label %112
    i8 -8, label %139
    i8 -7, label %166
    i8 -6, label %185
    i8 -5, label %208
    i8 -4, label %235
    i8 -3, label %282
    i8 -2, label %309
  ]

7:                                                ; preds = %6, %6
  %8 = getelementptr i8, ptr %345, i32 3
  br label %340

9:                                                ; preds = %6
  %10 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef nonnull @gTaskFlagsSecond) #2
  %11 = add i32 %10, %344
  br label %340

12:                                               ; preds = %6
  %13 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef nonnull @gTaskFlagsFirst) #2
  %14 = add i32 %13, %344
  br label %340

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %345, i32 2
  %17 = load i8, ptr %346, align 1
  %18 = icmp eq i8 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i8 [ %20, %19 ], [ %17, %15 ]
  %23 = zext i8 %22 to i32
  %24 = getelementptr [0 x ptr], ptr @gTaskTextBundles, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %23, ptr %25) #3, !srcloc !4
  %27 = icmp eq ptr %26, @gDefaultTaskContextScript
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr ptr, ptr %26, i32 %30
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %21, %28
  %34 = phi ptr [ %32, %28 ], [ @gDefaultTaskContextScript, %21 ]
  %35 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %34) #4
  %36 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %35) #2
  %37 = add i32 %36, %344
  br label %340

38:                                               ; preds = %6
  %39 = getelementptr i8, ptr %345, i32 2
  %40 = load i8, ptr %346, align 1
  %41 = icmp eq i8 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i8 [ %43, %42 ], [ %40, %38 ]
  %46 = zext i8 %45 to i32
  %47 = load i8, ptr @gTaskConstructorByte646, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFC8, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr ptr, ptr %50, i32 %46
  %52 = load ptr, ptr %51, align 4
  %53 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %46, ptr %52) #3, !srcloc !5
  %54 = icmp eq ptr %53, @gDefaultTaskContextScript
  br i1 %54, label %60, label %55

55:                                               ; preds = %44
  %56 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr ptr, ptr %53, i32 %57
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %44, %55
  %61 = phi ptr [ %59, %55 ], [ @gDefaultTaskContextScript, %44 ]
  %62 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %61) #4
  %63 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %62) #2
  %64 = add i32 %63, %344
  br label %340

65:                                               ; preds = %6
  %66 = getelementptr i8, ptr %345, i32 2
  %67 = load i8, ptr %346, align 1
  %68 = icmp eq i8 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i8 [ %70, %69 ], [ %67, %65 ]
  %73 = zext i8 %72 to i32
  %74 = icmp ult i8 %72, 4
  %75 = load i8, ptr @gTaskConstructorByte646, align 1
  %76 = zext i8 %75 to i32
  br i1 %74, label %77, label %94

77:                                               ; preds = %71
  %78 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCF98, i32 0, i32 %76
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr ptr, ptr %79, i32 %73
  %81 = load ptr, ptr %80, align 4
  %82 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %73, ptr %81) #3, !srcloc !6
  %83 = icmp eq ptr %82, @gDefaultTaskContextScript
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr ptr, ptr %82, i32 %86
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %77, %84
  %90 = phi ptr [ %88, %84 ], [ @gDefaultTaskContextScript, %77 ]
  %91 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %90) #4
  %92 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %91) #2
  %93 = add i32 %92, %344
  br label %340

94:                                               ; preds = %71
  %95 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFA4, i32 0, i32 %76
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr ptr, ptr %96, i32 %73
  %98 = getelementptr ptr, ptr %97, i32 -3
  %99 = load ptr, ptr %98, align 4
  %100 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %73, ptr %99) #3, !srcloc !7
  %101 = icmp eq ptr %100, @gDefaultTaskContextScript
  br i1 %101, label %107, label %102

102:                                              ; preds = %94
  %103 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr ptr, ptr %100, i32 %104
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %94, %102
  %108 = phi ptr [ %106, %102 ], [ @gDefaultTaskContextScript, %94 ]
  %109 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %108) #4
  %110 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %109) #2
  %111 = add i32 %110, %344
  br label %340

112:                                              ; preds = %6
  %113 = getelementptr i8, ptr %345, i32 2
  %114 = load i8, ptr %346, align 1
  %115 = icmp eq i8 %114, -1
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi i8 [ %117, %116 ], [ %114, %112 ]
  %120 = zext i8 %119 to i32
  %121 = load i8, ptr @gTaskConstructorByte646, align 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFB0, i32 0, i32 %122
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr ptr, ptr %124, i32 %120
  %126 = load ptr, ptr %125, align 4
  %127 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %120, ptr %126) #3, !srcloc !8
  %128 = icmp eq ptr %127, @gDefaultTaskContextScript
  br i1 %128, label %134, label %129

129:                                              ; preds = %118
  %130 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %131 = zext i8 %130 to i32
  %132 = getelementptr ptr, ptr %127, i32 %131
  %133 = load ptr, ptr %132, align 4
  br label %134

134:                                              ; preds = %118, %129
  %135 = phi ptr [ %133, %129 ], [ @gDefaultTaskContextScript, %118 ]
  %136 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %135) #4
  %137 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %136) #2
  %138 = add i32 %137, %344
  br label %340

139:                                              ; preds = %6
  %140 = getelementptr i8, ptr %345, i32 2
  %141 = load i8, ptr %346, align 1
  %142 = icmp eq i8 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi i8 [ %144, %143 ], [ %141, %139 ]
  %147 = zext i8 %146 to i32
  %148 = load i8, ptr @gTaskConstructorByte646, align 1
  %149 = zext i8 %148 to i32
  %150 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFBC, i32 0, i32 %149
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr ptr, ptr %151, i32 %147
  %153 = load ptr, ptr %152, align 4
  %154 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %147, ptr %153) #3, !srcloc !9
  %155 = icmp eq ptr %154, @gDefaultTaskContextScript
  br i1 %155, label %161, label %156

156:                                              ; preds = %145
  %157 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr ptr, ptr %154, i32 %158
  %160 = load ptr, ptr %159, align 4
  br label %161

161:                                              ; preds = %145, %156
  %162 = phi ptr [ %160, %156 ], [ @gDefaultTaskContextScript, %145 ]
  %163 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %162) #4
  %164 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %163) #2
  %165 = add i32 %164, %344
  br label %340

166:                                              ; preds = %6
  %167 = getelementptr i8, ptr %345, i32 2
  %168 = load i8, ptr %346, align 1
  %169 = shl i8 %168, 2
  %170 = and i8 %169, 60
  %171 = zext nneg i8 %170 to i32
  %172 = getelementptr i8, ptr @gTaskTextVariables2BB0, i32 %171
  tail call arm_apcscc void @RetargetTaskTextBundle(ptr noundef %172) #4
  %173 = load i32, ptr %172, align 4
  %174 = inttoptr i32 %173 to ptr
  %175 = icmp eq ptr %174, @gDefaultTaskContextScript
  br i1 %175, label %181, label %176

176:                                              ; preds = %166
  %177 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %178 = zext i8 %177 to i32
  %179 = getelementptr ptr, ptr %174, i32 %178
  %180 = load ptr, ptr %179, align 4
  br label %181

181:                                              ; preds = %166, %176
  %182 = phi ptr [ %180, %176 ], [ @gDefaultTaskContextScript, %166 ]
  %183 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %182) #2
  %184 = add i32 %183, %344
  br label %340

185:                                              ; preds = %6
  %186 = getelementptr i8, ptr %345, i32 2
  %187 = load i8, ptr %346, align 1
  %188 = icmp eq i8 %187, -1
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %191

191:                                              ; preds = %189, %185
  %192 = phi i8 [ %190, %189 ], [ %187, %185 ]
  %193 = zext i8 %192 to i32
  %194 = getelementptr [0 x ptr], ptr @gTaskTextBundles, i32 0, i32 %193
  %195 = load ptr, ptr %194, align 4
  %196 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %193, ptr %195) #3, !srcloc !10
  %197 = icmp eq ptr %196, @gDefaultTaskContextScript
  br i1 %197, label %203, label %198

198:                                              ; preds = %191
  %199 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %200 = zext i8 %199 to i32
  %201 = getelementptr ptr, ptr %196, i32 %200
  %202 = load ptr, ptr %201, align 4
  br label %203

203:                                              ; preds = %191, %198
  %204 = phi ptr [ %202, %198 ], [ @gDefaultTaskContextScript, %191 ]
  %205 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %204) #4
  %206 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %205) #2
  %207 = add i32 %206, %344
  br label %340

208:                                              ; preds = %6
  %209 = getelementptr i8, ptr %345, i32 2
  %210 = load i8, ptr %346, align 1
  %211 = icmp eq i8 %210, -1
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %214

214:                                              ; preds = %212, %208
  %215 = phi i8 [ %213, %212 ], [ %210, %208 ]
  %216 = zext i8 %215 to i32
  %217 = load i8, ptr @gTaskConstructorByte646, align 1
  %218 = zext i8 %217 to i32
  %219 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFC8, i32 0, i32 %218
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr ptr, ptr %220, i32 %216
  %222 = load ptr, ptr %221, align 4
  %223 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %216, ptr %222) #3, !srcloc !11
  %224 = icmp eq ptr %223, @gDefaultTaskContextScript
  br i1 %224, label %230, label %225

225:                                              ; preds = %214
  %226 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %227 = zext i8 %226 to i32
  %228 = getelementptr ptr, ptr %223, i32 %227
  %229 = load ptr, ptr %228, align 4
  br label %230

230:                                              ; preds = %214, %225
  %231 = phi ptr [ %229, %225 ], [ @gDefaultTaskContextScript, %214 ]
  %232 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %231) #4
  %233 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %232) #2
  %234 = add i32 %233, %344
  br label %340

235:                                              ; preds = %6
  %236 = getelementptr i8, ptr %345, i32 2
  %237 = load i8, ptr %346, align 1
  %238 = icmp eq i8 %237, -1
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %241

241:                                              ; preds = %239, %235
  %242 = phi i8 [ %240, %239 ], [ %237, %235 ]
  %243 = zext i8 %242 to i32
  %244 = icmp ult i8 %242, 4
  %245 = load i8, ptr @gTaskConstructorByte646, align 1
  %246 = zext i8 %245 to i32
  br i1 %244, label %247, label %264

247:                                              ; preds = %241
  %248 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCF98, i32 0, i32 %246
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr ptr, ptr %249, i32 %243
  %251 = load ptr, ptr %250, align 4
  %252 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %243, ptr %251) #3, !srcloc !12
  %253 = icmp eq ptr %252, @gDefaultTaskContextScript
  br i1 %253, label %259, label %254

254:                                              ; preds = %247
  %255 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %256 = zext i8 %255 to i32
  %257 = getelementptr ptr, ptr %252, i32 %256
  %258 = load ptr, ptr %257, align 4
  br label %259

259:                                              ; preds = %247, %254
  %260 = phi ptr [ %258, %254 ], [ @gDefaultTaskContextScript, %247 ]
  %261 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %260) #4
  %262 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %261) #2
  %263 = add i32 %262, %344
  br label %340

264:                                              ; preds = %241
  %265 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFA4, i32 0, i32 %246
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr ptr, ptr %266, i32 %243
  %268 = getelementptr ptr, ptr %267, i32 -3
  %269 = load ptr, ptr %268, align 4
  %270 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %243, ptr %269) #3, !srcloc !13
  %271 = icmp eq ptr %270, @gDefaultTaskContextScript
  br i1 %271, label %277, label %272

272:                                              ; preds = %264
  %273 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %274 = zext i8 %273 to i32
  %275 = getelementptr ptr, ptr %270, i32 %274
  %276 = load ptr, ptr %275, align 4
  br label %277

277:                                              ; preds = %264, %272
  %278 = phi ptr [ %276, %272 ], [ @gDefaultTaskContextScript, %264 ]
  %279 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %278) #4
  %280 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %279) #2
  %281 = add i32 %280, %344
  br label %340

282:                                              ; preds = %6
  %283 = getelementptr i8, ptr %345, i32 2
  %284 = load i8, ptr %346, align 1
  %285 = icmp eq i8 %284, -1
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %288

288:                                              ; preds = %286, %282
  %289 = phi i8 [ %287, %286 ], [ %284, %282 ]
  %290 = zext i8 %289 to i32
  %291 = load i8, ptr @gTaskConstructorByte646, align 1
  %292 = zext i8 %291 to i32
  %293 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFB0, i32 0, i32 %292
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr ptr, ptr %294, i32 %290
  %296 = load ptr, ptr %295, align 4
  %297 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %290, ptr %296) #3, !srcloc !14
  %298 = icmp eq ptr %297, @gDefaultTaskContextScript
  br i1 %298, label %304, label %299

299:                                              ; preds = %288
  %300 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %301 = zext i8 %300 to i32
  %302 = getelementptr ptr, ptr %297, i32 %301
  %303 = load ptr, ptr %302, align 4
  br label %304

304:                                              ; preds = %288, %299
  %305 = phi ptr [ %303, %299 ], [ @gDefaultTaskContextScript, %288 ]
  %306 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %305) #4
  %307 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %306) #2
  %308 = add i32 %307, %344
  br label %340

309:                                              ; preds = %6
  %310 = getelementptr i8, ptr %345, i32 2
  %311 = load i8, ptr %346, align 1
  %312 = icmp eq i8 %311, -1
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %315

315:                                              ; preds = %313, %309
  %316 = phi i8 [ %314, %313 ], [ %311, %309 ]
  %317 = zext i8 %316 to i32
  %318 = load i8, ptr @gTaskConstructorByte646, align 1
  %319 = zext i8 %318 to i32
  %320 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFBC, i32 0, i32 %319
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr ptr, ptr %321, i32 %317
  %323 = load ptr, ptr %322, align 4
  %324 = tail call ptr asm "", "={r1},{r4},{r1}"(i32 %317, ptr %323) #3, !srcloc !15
  %325 = icmp eq ptr %324, @gDefaultTaskContextScript
  br i1 %325, label %331, label %326

326:                                              ; preds = %315
  %327 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %328 = zext i8 %327 to i32
  %329 = getelementptr ptr, ptr %324, i32 %328
  %330 = load ptr, ptr %329, align 4
  br label %331

331:                                              ; preds = %315, %326
  %332 = phi ptr [ %330, %326 ], [ @gDefaultTaskContextScript, %315 ]
  %333 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %332) #4
  %334 = tail call arm_apcscc i32 @CountTaskTextItems(ptr noundef %333) #2
  %335 = add i32 %334, %344
  br label %340

336:                                              ; preds = %6
  %337 = icmp ugt i8 %347, -16
  %338 = getelementptr i8, ptr %345, i32 2
  %339 = select i1 %337, ptr %338, ptr %346
  br label %340

340:                                              ; preds = %336, %7, %9, %12, %33, %60, %134, %161, %181, %203, %230, %304, %331, %107, %89, %277, %259, %4
  %341 = phi i32 [ %5, %4 ], [ %335, %331 ], [ %308, %304 ], [ %263, %259 ], [ %281, %277 ], [ %234, %230 ], [ %207, %203 ], [ %184, %181 ], [ %165, %161 ], [ %138, %134 ], [ %93, %89 ], [ %111, %107 ], [ %64, %60 ], [ %37, %33 ], [ %14, %12 ], [ %11, %9 ], [ %344, %7 ], [ %344, %336 ]
  %342 = phi ptr [ %346, %4 ], [ %310, %331 ], [ %283, %304 ], [ %236, %259 ], [ %236, %277 ], [ %209, %230 ], [ %186, %203 ], [ %167, %181 ], [ %140, %161 ], [ %113, %134 ], [ %66, %89 ], [ %66, %107 ], [ %39, %60 ], [ %16, %33 ], [ %346, %12 ], [ %346, %9 ], [ %8, %7 ], [ %339, %336 ]
  br label %343

343:                                              ; preds = %340, %1
  %344 = phi i32 [ 0, %1 ], [ %341, %340 ]
  %345 = phi ptr [ %0, %1 ], [ %342, %340 ]
  %346 = getelementptr i8, ptr %345, i32 1
  %347 = load i8, ptr %345, align 1
  switch i8 %347, label %2 [
    i8 0, label %348
    i8 -28, label %348
    i8 -29, label %348
    i8 -30, label %348
    i8 -31, label %348
    i8 -32, label %348
  ]

348:                                              ; preds = %343, %343, %343, %343, %343, %343
  ret i32 %344
}

declare dso_local arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RetargetTaskTextBundle(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 997}
!5 = !{i64 1577}
!6 = !{i64 2197}
!7 = !{i64 2650}
!8 = !{i64 3249}
!9 = !{i64 3829}
!10 = !{i64 4969}
!11 = !{i64 5560}
!12 = !{i64 6191}
!13 = !{i64 6655}
!14 = !{i64 7265}
!15 = !{i64 7856}
