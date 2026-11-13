; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskTextAdvanceWidths = external dso_local local_unnamed_addr constant [0 x i8], align 1
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

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @MeasureTaskTextWidth(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br label %325

4:                                                ; preds = %325
  %5 = icmp ult i8 %329, -32
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  br i1 %3, label %13, label %7

7:                                                ; preds = %6
  %8 = add nuw nsw i32 %330, 255
  %9 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add i32 %327, %11
  br label %322

13:                                               ; preds = %6
  %14 = add nsw i32 %330, -1
  %15 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %327, %17
  br label %322

19:                                               ; preds = %4
  switch i8 %329, label %318 [
    i8 -14, label %20
    i8 -13, label %20
    i8 -26, label %22
    i8 -25, label %25
    i8 -16, label %28
    i8 -15, label %50
    i8 -10, label %76
    i8 -9, label %121
    i8 -8, label %147
    i8 -6, label %173
    i8 -5, label %195
    i8 -4, label %221
    i8 -3, label %266
    i8 -2, label %292
  ]

20:                                               ; preds = %19, %19
  %21 = getelementptr i8, ptr %326, i32 3
  br label %322

22:                                               ; preds = %19
  %23 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef nonnull @gTaskFlagsSecond, i8 noundef zeroext %1) #2
  %24 = add i32 %23, %327
  br label %322

25:                                               ; preds = %19
  %26 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef nonnull @gTaskFlagsFirst, i8 noundef zeroext %1) #2
  %27 = add i32 %26, %327
  br label %322

28:                                               ; preds = %19
  %29 = getelementptr i8, ptr %326, i32 2
  %30 = load i8, ptr %328, align 1
  %31 = icmp eq i8 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i8 [ %33, %32 ], [ %30, %28 ]
  %36 = zext i8 %35 to i32
  %37 = getelementptr [0 x ptr], ptr @gTaskTextBundles, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, @gDefaultTaskContextScript
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr ptr, ptr %38, i32 %42
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %34, %40
  %46 = phi ptr [ %44, %40 ], [ @gDefaultTaskContextScript, %34 ]
  %47 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %46) #3
  %48 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %47, i8 noundef zeroext %1) #2
  %49 = add i32 %48, %327
  br label %322

50:                                               ; preds = %19
  %51 = getelementptr i8, ptr %326, i32 2
  %52 = load i8, ptr %328, align 1
  %53 = icmp eq i8 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i8 [ %55, %54 ], [ %52, %50 ]
  %58 = zext i8 %57 to i32
  %59 = load i8, ptr @gTaskConstructorByte646, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFC8, i32 0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr ptr, ptr %62, i32 %58
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, @gDefaultTaskContextScript
  br i1 %65, label %71, label %66

66:                                               ; preds = %56
  %67 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr ptr, ptr %64, i32 %68
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %56, %66
  %72 = phi ptr [ %70, %66 ], [ @gDefaultTaskContextScript, %56 ]
  %73 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %72) #3
  %74 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %73, i8 noundef zeroext %1) #2
  %75 = add i32 %74, %327
  br label %322

76:                                               ; preds = %19
  %77 = getelementptr i8, ptr %326, i32 2
  %78 = load i8, ptr %328, align 1
  %79 = icmp eq i8 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i8 [ %81, %80 ], [ %78, %76 ]
  %84 = zext i8 %83 to i32
  %85 = icmp ult i8 %83, 4
  %86 = load i8, ptr @gTaskConstructorByte646, align 1
  %87 = zext i8 %86 to i32
  br i1 %85, label %88, label %104

88:                                               ; preds = %82
  %89 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCF98, i32 0, i32 %87
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr ptr, ptr %90, i32 %84
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, @gDefaultTaskContextScript
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr ptr, ptr %92, i32 %96
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %88, %94
  %100 = phi ptr [ %98, %94 ], [ @gDefaultTaskContextScript, %88 ]
  %101 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %100) #3
  %102 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %101, i8 noundef zeroext %1) #2
  %103 = add i32 %102, %327
  br label %322

104:                                              ; preds = %82
  %105 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFA4, i32 0, i32 %87
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr ptr, ptr %106, i32 %84
  %108 = getelementptr ptr, ptr %107, i32 -3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, @gDefaultTaskContextScript
  br i1 %110, label %116, label %111

111:                                              ; preds = %104
  %112 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr ptr, ptr %109, i32 %113
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %104, %111
  %117 = phi ptr [ %115, %111 ], [ @gDefaultTaskContextScript, %104 ]
  %118 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %117) #3
  %119 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %118, i8 noundef zeroext %1) #2
  %120 = add i32 %119, %327
  br label %322

121:                                              ; preds = %19
  %122 = getelementptr i8, ptr %326, i32 2
  %123 = load i8, ptr %328, align 1
  %124 = icmp eq i8 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %127

127:                                              ; preds = %125, %121
  %128 = phi i8 [ %126, %125 ], [ %123, %121 ]
  %129 = zext i8 %128 to i32
  %130 = load i8, ptr @gTaskConstructorByte646, align 1
  %131 = zext i8 %130 to i32
  %132 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFB0, i32 0, i32 %131
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr ptr, ptr %133, i32 %129
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, @gDefaultTaskContextScript
  br i1 %136, label %142, label %137

137:                                              ; preds = %127
  %138 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %139 = zext i8 %138 to i32
  %140 = getelementptr ptr, ptr %135, i32 %139
  %141 = load ptr, ptr %140, align 4
  br label %142

142:                                              ; preds = %127, %137
  %143 = phi ptr [ %141, %137 ], [ @gDefaultTaskContextScript, %127 ]
  %144 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %143) #3
  %145 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %144, i8 noundef zeroext %1) #2
  %146 = add i32 %145, %327
  br label %322

147:                                              ; preds = %19
  %148 = getelementptr i8, ptr %326, i32 2
  %149 = load i8, ptr %328, align 1
  %150 = icmp eq i8 %149, -1
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %153

153:                                              ; preds = %151, %147
  %154 = phi i8 [ %152, %151 ], [ %149, %147 ]
  %155 = zext i8 %154 to i32
  %156 = load i8, ptr @gTaskConstructorByte646, align 1
  %157 = zext i8 %156 to i32
  %158 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFBC, i32 0, i32 %157
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr ptr, ptr %159, i32 %155
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, @gDefaultTaskContextScript
  br i1 %162, label %168, label %163

163:                                              ; preds = %153
  %164 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %165 = zext i8 %164 to i32
  %166 = getelementptr ptr, ptr %161, i32 %165
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %153, %163
  %169 = phi ptr [ %167, %163 ], [ @gDefaultTaskContextScript, %153 ]
  %170 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %169) #3
  %171 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %170, i8 noundef zeroext %1) #2
  %172 = add i32 %171, %327
  br label %322

173:                                              ; preds = %19
  %174 = getelementptr i8, ptr %326, i32 2
  %175 = load i8, ptr %328, align 1
  %176 = icmp eq i8 %175, -1
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %179

179:                                              ; preds = %177, %173
  %180 = phi i8 [ %178, %177 ], [ %175, %173 ]
  %181 = zext i8 %180 to i32
  %182 = getelementptr [0 x ptr], ptr @gTaskTextBundles, i32 0, i32 %181
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, @gDefaultTaskContextScript
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %187 = zext i8 %186 to i32
  %188 = getelementptr ptr, ptr %183, i32 %187
  %189 = load ptr, ptr %188, align 4
  br label %190

190:                                              ; preds = %179, %185
  %191 = phi ptr [ %189, %185 ], [ @gDefaultTaskContextScript, %179 ]
  %192 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %191) #3
  %193 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %192, i8 noundef zeroext %1) #2
  %194 = add i32 %193, %327
  br label %322

195:                                              ; preds = %19
  %196 = getelementptr i8, ptr %326, i32 2
  %197 = load i8, ptr %328, align 1
  %198 = icmp eq i8 %197, -1
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %201

201:                                              ; preds = %199, %195
  %202 = phi i8 [ %200, %199 ], [ %197, %195 ]
  %203 = zext i8 %202 to i32
  %204 = load i8, ptr @gTaskConstructorByte646, align 1
  %205 = zext i8 %204 to i32
  %206 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFC8, i32 0, i32 %205
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr ptr, ptr %207, i32 %203
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, @gDefaultTaskContextScript
  br i1 %210, label %216, label %211

211:                                              ; preds = %201
  %212 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %213 = zext i8 %212 to i32
  %214 = getelementptr ptr, ptr %209, i32 %213
  %215 = load ptr, ptr %214, align 4
  br label %216

216:                                              ; preds = %201, %211
  %217 = phi ptr [ %215, %211 ], [ @gDefaultTaskContextScript, %201 ]
  %218 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %217) #3
  %219 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %218, i8 noundef zeroext %1) #2
  %220 = add i32 %219, %327
  br label %322

221:                                              ; preds = %19
  %222 = getelementptr i8, ptr %326, i32 2
  %223 = load i8, ptr %328, align 1
  %224 = icmp eq i8 %223, -1
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %227

227:                                              ; preds = %225, %221
  %228 = phi i8 [ %226, %225 ], [ %223, %221 ]
  %229 = zext i8 %228 to i32
  %230 = icmp ult i8 %228, 4
  %231 = load i8, ptr @gTaskConstructorByte646, align 1
  %232 = zext i8 %231 to i32
  br i1 %230, label %233, label %249

233:                                              ; preds = %227
  %234 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCF98, i32 0, i32 %232
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr ptr, ptr %235, i32 %229
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, @gDefaultTaskContextScript
  br i1 %238, label %244, label %239

239:                                              ; preds = %233
  %240 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %241 = zext i8 %240 to i32
  %242 = getelementptr ptr, ptr %237, i32 %241
  %243 = load ptr, ptr %242, align 4
  br label %244

244:                                              ; preds = %233, %239
  %245 = phi ptr [ %243, %239 ], [ @gDefaultTaskContextScript, %233 ]
  %246 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %245) #3
  %247 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %246, i8 noundef zeroext %1) #2
  %248 = add i32 %247, %327
  br label %322

249:                                              ; preds = %227
  %250 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFA4, i32 0, i32 %232
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr ptr, ptr %251, i32 %229
  %253 = getelementptr ptr, ptr %252, i32 -3
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, @gDefaultTaskContextScript
  br i1 %255, label %261, label %256

256:                                              ; preds = %249
  %257 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %258 = zext i8 %257 to i32
  %259 = getelementptr ptr, ptr %254, i32 %258
  %260 = load ptr, ptr %259, align 4
  br label %261

261:                                              ; preds = %249, %256
  %262 = phi ptr [ %260, %256 ], [ @gDefaultTaskContextScript, %249 ]
  %263 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %262) #3
  %264 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %263, i8 noundef zeroext %1) #2
  %265 = add i32 %264, %327
  br label %322

266:                                              ; preds = %19
  %267 = getelementptr i8, ptr %326, i32 2
  %268 = load i8, ptr %328, align 1
  %269 = icmp eq i8 %268, -1
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %272

272:                                              ; preds = %270, %266
  %273 = phi i8 [ %271, %270 ], [ %268, %266 ]
  %274 = zext i8 %273 to i32
  %275 = load i8, ptr @gTaskConstructorByte646, align 1
  %276 = zext i8 %275 to i32
  %277 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFB0, i32 0, i32 %276
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr ptr, ptr %278, i32 %274
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, @gDefaultTaskContextScript
  br i1 %281, label %287, label %282

282:                                              ; preds = %272
  %283 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %284 = zext i8 %283 to i32
  %285 = getelementptr ptr, ptr %280, i32 %284
  %286 = load ptr, ptr %285, align 4
  br label %287

287:                                              ; preds = %272, %282
  %288 = phi ptr [ %286, %282 ], [ @gDefaultTaskContextScript, %272 ]
  %289 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %288) #3
  %290 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %289, i8 noundef zeroext %1) #2
  %291 = add i32 %290, %327
  br label %322

292:                                              ; preds = %19
  %293 = getelementptr i8, ptr %326, i32 2
  %294 = load i8, ptr %328, align 1
  %295 = icmp eq i8 %294, -1
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %298

298:                                              ; preds = %296, %292
  %299 = phi i8 [ %297, %296 ], [ %294, %292 ]
  %300 = zext i8 %299 to i32
  %301 = load i8, ptr @gTaskConstructorByte646, align 1
  %302 = zext i8 %301 to i32
  %303 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFBC, i32 0, i32 %302
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr ptr, ptr %304, i32 %300
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, @gDefaultTaskContextScript
  br i1 %307, label %313, label %308

308:                                              ; preds = %298
  %309 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %310 = zext i8 %309 to i32
  %311 = getelementptr ptr, ptr %306, i32 %310
  %312 = load ptr, ptr %311, align 4
  br label %313

313:                                              ; preds = %298, %308
  %314 = phi ptr [ %312, %308 ], [ @gDefaultTaskContextScript, %298 ]
  %315 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %314) #3
  %316 = tail call arm_apcscc i32 @MeasureTaskTextWidth(ptr noundef %315, i8 noundef zeroext %1) #2
  %317 = add i32 %316, %327
  br label %322

318:                                              ; preds = %19
  %319 = icmp ugt i8 %329, -16
  %320 = getelementptr i8, ptr %326, i32 2
  %321 = select i1 %319, ptr %320, ptr %328
  br label %322

322:                                              ; preds = %318, %20, %22, %25, %45, %71, %142, %168, %190, %216, %287, %313, %116, %99, %261, %244, %7, %13
  %323 = phi ptr [ %328, %7 ], [ %328, %13 ], [ %293, %313 ], [ %267, %287 ], [ %222, %244 ], [ %222, %261 ], [ %196, %216 ], [ %174, %190 ], [ %148, %168 ], [ %122, %142 ], [ %77, %99 ], [ %77, %116 ], [ %51, %71 ], [ %29, %45 ], [ %328, %25 ], [ %328, %22 ], [ %21, %20 ], [ %321, %318 ]
  %324 = phi i32 [ %12, %7 ], [ %18, %13 ], [ %317, %313 ], [ %291, %287 ], [ %248, %244 ], [ %265, %261 ], [ %220, %216 ], [ %194, %190 ], [ %172, %168 ], [ %146, %142 ], [ %103, %99 ], [ %120, %116 ], [ %75, %71 ], [ %49, %45 ], [ %27, %25 ], [ %24, %22 ], [ %327, %20 ], [ %327, %318 ]
  br label %325

325:                                              ; preds = %322, %2
  %326 = phi ptr [ %0, %2 ], [ %323, %322 ]
  %327 = phi i32 [ 0, %2 ], [ %324, %322 ]
  %328 = getelementptr i8, ptr %326, i32 1
  %329 = load i8, ptr %326, align 1
  %330 = zext i8 %329 to i32
  switch i8 %329, label %4 [
    i8 0, label %331
    i8 -28, label %331
    i8 -29, label %331
    i8 -30, label %331
    i8 -31, label %331
    i8 -32, label %331
  ]

331:                                              ; preds = %325, %325, %325, %325, %325, %325
  ret i32 %327
}

declare dso_local arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
