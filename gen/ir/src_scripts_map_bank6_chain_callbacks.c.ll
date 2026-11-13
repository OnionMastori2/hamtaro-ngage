; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local global ptr, align 4
@gAffineUsage = external dso_local global [32 x i8], align 1
@gMapBank6FirstChainSlots = external dso_local global [0 x i8], align 1
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gTaskTextVariables2BB0 = external dso_local global [0 x i32], align 4
@gRenderSineTable = external dso_local constant [0 x i16], align 2
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapBank6SecondChainSlots = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapBank6WrappedChainSlots = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gMapBank6ThirdChainSlots = external dso_local global [0 x i8], align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateMapBank6FirstChain(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gMapBank6FirstChainSlots, align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 104
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = add i32 %4, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr %struct.RenderSlot, ptr %8, i32 0, i32 23, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %13, ptr %9, align 1
  %14 = zext i8 %13 to i32
  %15 = add i32 %14, ptrtoint (ptr @gAffineUsage to i32)
  %16 = inttoptr i32 %15 to ptr
  store i8 1, ptr %16, align 1
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i32 [ %18, %12 ], [ %6, %1 ]
  %21 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 1) to ptr), align 1
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, 104
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr %struct.RenderSlot, ptr %25, i32 0, i32 23, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %30, ptr %26, align 1
  %31 = zext i8 %30 to i32
  %32 = add i32 %31, ptrtoint (ptr @gAffineUsage to i32)
  %33 = inttoptr i32 %32 to ptr
  store i8 1, ptr %33, align 1
  %34 = load ptr, ptr @gRenderSlots, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %36

36:                                               ; preds = %29, %19
  %37 = phi i32 [ %35, %29 ], [ %20, %19 ]
  %38 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 2) to ptr), align 1
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, 104
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr %struct.RenderSlot, ptr %42, i32 0, i32 23, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %47, ptr %43, align 1
  %48 = zext i8 %47 to i32
  %49 = add i32 %48, ptrtoint (ptr @gAffineUsage to i32)
  %50 = inttoptr i32 %49 to ptr
  store i8 1, ptr %50, align 1
  %51 = load ptr, ptr @gRenderSlots, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %53

53:                                               ; preds = %46, %36
  %54 = phi i32 [ %52, %46 ], [ %37, %36 ]
  %55 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 3) to ptr), align 1
  %56 = zext i8 %55 to i32
  %57 = mul nuw nsw i32 %56, 104
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr %struct.RenderSlot, ptr %59, i32 0, i32 23, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %64, ptr %60, align 1
  %65 = zext i8 %64 to i32
  %66 = add i32 %65, ptrtoint (ptr @gAffineUsage to i32)
  %67 = inttoptr i32 %66 to ptr
  store i8 1, ptr %67, align 1
  %68 = load ptr, ptr @gRenderSlots, align 4
  %69 = ptrtoint ptr %68 to i32
  br label %70

70:                                               ; preds = %63, %53
  %71 = phi i32 [ %69, %63 ], [ %54, %53 ]
  %72 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 4) to ptr), align 1
  %73 = zext i8 %72 to i32
  %74 = mul nuw nsw i32 %73, 104
  %75 = add i32 %74, %71
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr %struct.RenderSlot, ptr %76, i32 0, i32 23, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %81, ptr %77, align 1
  %82 = zext i8 %81 to i32
  %83 = add i32 %82, ptrtoint (ptr @gAffineUsage to i32)
  %84 = inttoptr i32 %83 to ptr
  store i8 1, ptr %84, align 1
  br label %85

85:                                               ; preds = %80, %70
  %86 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %90 = zext i16 %89 to i32
  %91 = shl nuw i32 %90, 16
  %92 = add i32 %91, 8388608
  %93 = tail call ptr asm "", "={r3},0"(ptr nonnull @gTaskTextVariables2BB0) #5, !srcloc !4
  store i32 %92, ptr %93, align 4
  %94 = getelementptr i32, ptr %93, i32 1
  store i32 -13598720, ptr %94, align 4
  %95 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %96 = zext i16 %95 to i32
  %97 = shl nuw i32 %96, 16
  %98 = getelementptr i32, ptr %93, i32 2
  store i32 %97, ptr %98, align 4
  %99 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  br label %100

100:                                              ; preds = %88, %85
  %101 = phi i16 [ %99, %88 ], [ %86, %85 ]
  %102 = zext i16 %101 to i32
  %103 = and i32 %102, 255
  %104 = getelementptr i16, ptr @gRenderSineTable, i32 %103
  %105 = load i16, ptr %104, align 2
  %106 = sub i16 0, %105
  %107 = zext i16 %106 to i32
  %108 = shl nuw i32 %107, 16
  %109 = ashr exact i32 %108, 4
  %110 = and i32 %109, -65536
  %111 = ashr i32 %108, 20
  %112 = and i32 %111, 255
  %113 = getelementptr i16, ptr @gRenderSineTable, i32 %112
  %114 = load i16, ptr %113, align 2
  %115 = sext i16 %114 to i32
  %116 = shl nsw i32 %115, 8
  %117 = add nsw i32 %111, 1
  %118 = and i32 %117, 255
  %119 = getelementptr i16, ptr @gRenderSineTable, i32 %118
  %120 = load i16, ptr %119, align 2
  %121 = sext i16 %120 to i32
  %122 = sub nsw i32 %121, %115
  %123 = shl nsw i32 %122, 4
  %124 = and i32 %108, 983040
  %125 = tail call i32 asm "", "={r5},{r5}"(i32 %124) #5, !srcloc !5
  %126 = ashr i32 %125, 16
  %127 = mul i32 %123, %126
  %128 = add i32 %127, %116
  %129 = getelementptr i16, ptr %113, i32 64
  %130 = load i16, ptr %129, align 2
  %131 = sext i16 %130 to i32
  %132 = shl nsw i32 %131, 8
  %133 = getelementptr i16, ptr %119, i32 64
  %134 = load i16, ptr %133, align 2
  %135 = sext i16 %134 to i32
  %136 = sub nsw i32 %135, %131
  %137 = shl nsw i32 %126, 4
  %138 = mul i32 %137, %136
  %139 = add i32 %138, %132
  %140 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %141 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 1), align 4
  %142 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 2), align 4
  %143 = tail call i32 asm "", "={r1},{r1}"(i32 %111) #5, !srcloc !6
  tail call void asm sideeffect "", "{r2}"(i32 %110) #6, !srcloc !7
  %144 = mul i32 %139, 96
  %145 = add i32 %144, %141
  tail call void asm sideeffect "", "{r3}"(i32 %128) #6, !srcloc !8
  %146 = mul i32 %128, 96
  %147 = add i32 %146, %140
  %148 = shl i32 %139, 5
  %149 = shl i32 %128, 5
  %150 = load ptr, ptr @gRenderSlots, align 4
  %151 = ptrtoint ptr %150 to i32
  %152 = trunc i32 %143 to i16
  %153 = shl i16 %152, 8
  %154 = load i8, ptr @gMapBank6FirstChainSlots, align 1
  %155 = zext i8 %154 to i32
  %156 = mul nuw nsw i32 %155, 104
  %157 = add i32 %156, %151
  %158 = inttoptr i32 %157 to ptr
  %159 = getelementptr inbounds %struct.RenderSlot, ptr %158, i32 0, i32 3
  store i32 %147, ptr %159, align 4
  %160 = getelementptr inbounds %struct.RenderSlot, ptr %158, i32 0, i32 4
  store i32 %145, ptr %160, align 4
  %161 = getelementptr inbounds %struct.RenderSlot, ptr %158, i32 0, i32 5
  store i32 %142, ptr %161, align 4
  %162 = getelementptr inbounds %struct.RenderSlot, ptr %158, i32 0, i32 10
  store i16 %153, ptr %162, align 2
  %163 = add i32 %145, %148
  %164 = add i32 %147, %149
  %165 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 1) to ptr), align 1
  %166 = zext i8 %165 to i32
  %167 = mul nuw nsw i32 %166, 104
  %168 = add i32 %167, %151
  %169 = inttoptr i32 %168 to ptr
  %170 = getelementptr inbounds %struct.RenderSlot, ptr %169, i32 0, i32 3
  store i32 %164, ptr %170, align 4
  %171 = add i32 %163, -2097152
  %172 = getelementptr inbounds %struct.RenderSlot, ptr %169, i32 0, i32 4
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.RenderSlot, ptr %169, i32 0, i32 5
  store i32 %142, ptr %173, align 4
  %174 = getelementptr inbounds %struct.RenderSlot, ptr %169, i32 0, i32 10
  store i16 %153, ptr %174, align 2
  %175 = add i32 %163, %148
  %176 = add i32 %164, %149
  %177 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 2) to ptr), align 1
  %178 = zext i8 %177 to i32
  %179 = mul nuw nsw i32 %178, 104
  %180 = add i32 %179, %151
  %181 = inttoptr i32 %180 to ptr
  %182 = getelementptr inbounds %struct.RenderSlot, ptr %181, i32 0, i32 3
  store i32 %176, ptr %182, align 4
  %183 = add i32 %175, -4194304
  %184 = getelementptr inbounds %struct.RenderSlot, ptr %181, i32 0, i32 4
  store i32 %183, ptr %184, align 4
  %185 = getelementptr inbounds %struct.RenderSlot, ptr %181, i32 0, i32 5
  store i32 %142, ptr %185, align 4
  %186 = getelementptr inbounds %struct.RenderSlot, ptr %181, i32 0, i32 10
  store i16 %153, ptr %186, align 2
  %187 = add i32 %175, %148
  %188 = add i32 %176, %149
  %189 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 3) to ptr), align 1
  %190 = zext i8 %189 to i32
  %191 = mul nuw nsw i32 %190, 104
  %192 = add i32 %191, %151
  %193 = inttoptr i32 %192 to ptr
  %194 = getelementptr inbounds %struct.RenderSlot, ptr %193, i32 0, i32 3
  store i32 %188, ptr %194, align 4
  %195 = add i32 %187, -6291456
  %196 = getelementptr inbounds %struct.RenderSlot, ptr %193, i32 0, i32 4
  store i32 %195, ptr %196, align 4
  %197 = getelementptr inbounds %struct.RenderSlot, ptr %193, i32 0, i32 5
  store i32 %142, ptr %197, align 4
  %198 = getelementptr inbounds %struct.RenderSlot, ptr %193, i32 0, i32 10
  store i16 %153, ptr %198, align 2
  %199 = add i32 %187, %148
  %200 = add i32 %188, %149
  %201 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6FirstChainSlots to i32), i32 4) to ptr), align 1
  %202 = zext i8 %201 to i32
  %203 = mul nuw nsw i32 %202, 104
  %204 = add i32 %203, %151
  %205 = inttoptr i32 %204 to ptr
  %206 = getelementptr inbounds %struct.RenderSlot, ptr %205, i32 0, i32 3
  store i32 %200, ptr %206, align 4
  %207 = add i32 %199, -8388608
  %208 = getelementptr inbounds %struct.RenderSlot, ptr %205, i32 0, i32 4
  store i32 %207, ptr %208, align 4
  %209 = getelementptr inbounds %struct.RenderSlot, ptr %205, i32 0, i32 5
  store i32 %142, ptr %209, align 4
  %210 = getelementptr inbounds %struct.RenderSlot, ptr %205, i32 0, i32 10
  store i16 %153, ptr %210, align 2
  %211 = shl i32 %128, 1
  %212 = icmp ne ptr %0, null
  %213 = icmp ult i16 %101, 66
  %214 = and i1 %212, %213
  br i1 %214, label %215, label %344

215:                                              ; preds = %100
  tail call void asm sideeffect "", "~{r3}"() #6, !srcloc !9
  %216 = icmp ugt i16 %101, 54
  br i1 %216, label %217, label %308

217:                                              ; preds = %215
  %218 = load i8, ptr @gRenderClassSlots0, align 1
  %219 = zext i8 %218 to i32
  %220 = load ptr, ptr @gRenderSlots, align 4
  %221 = mul nuw nsw i32 %219, 104
  %222 = ptrtoint ptr %220 to i32
  %223 = add i32 %221, %222
  %224 = inttoptr i32 %223 to ptr
  tail call void asm sideeffect "", "{r0}"(i32 %110) #6, !srcloc !10
  %225 = shl nsw i32 %111, 8
  %226 = getelementptr inbounds %struct.RenderSlot, ptr %224, i32 0, i32 10
  %227 = trunc i32 %225 to i16
  %228 = add i16 %227, -5376
  store i16 %228, ptr %226, align 2
  %229 = load i8, ptr @gRenderClassSlots0, align 1
  %230 = zext i8 %229 to i32
  %231 = mul nuw nsw i32 %230, 104
  %232 = add i32 %231, %222
  %233 = inttoptr i32 %232 to ptr
  %234 = getelementptr inbounds %struct.RenderSlot, ptr %233, i32 0, i32 5
  store i32 %142, ptr %234, align 4
  %235 = load i8, ptr @gRenderClassSlots1, align 1
  %236 = zext i8 %235 to i32
  %237 = mul nuw nsw i32 %236, 104
  %238 = add i32 %237, %222
  %239 = inttoptr i32 %238 to ptr
  %240 = getelementptr inbounds %struct.RenderSlot, ptr %239, i32 0, i32 10
  store i16 -7168, ptr %240, align 2
  %241 = getelementptr inbounds %struct.RenderSlot, ptr %239, i32 0, i32 5
  store i32 %142, ptr %241, align 4
  %242 = add i32 %222, 2184
  %243 = inttoptr i32 %242 to ptr
  %244 = add i32 %222, 2248
  %245 = inttoptr i32 %244 to ptr
  store i16 %227, ptr %245, align 2
  %246 = icmp eq i16 %101, 65
  br i1 %246, label %247, label %264

247:                                              ; preds = %217
  %248 = load i8, ptr @gRenderClassSlots0, align 1
  %249 = zext i8 %248 to i32
  %250 = mul nuw nsw i32 %249, 104
  %251 = add i32 %250, %222
  %252 = inttoptr i32 %251 to ptr
  %253 = getelementptr inbounds %struct.RenderSlot, ptr %252, i32 0, i32 10
  store i16 0, ptr %253, align 2
  tail call void asm sideeffect "", "{r4}"(i32 -7733248) #6, !srcloc !11
  %254 = add i32 %140, -7733248
  %255 = getelementptr inbounds %struct.RenderSlot, ptr %252, i32 0, i32 3
  store i32 %254, ptr %255, align 4
  %256 = load i8, ptr @gRenderClassSlots1, align 1
  %257 = zext i8 %256 to i32
  %258 = mul nuw nsw i32 %257, 104
  %259 = add i32 %258, %222
  %260 = inttoptr i32 %259 to ptr
  %261 = getelementptr inbounds %struct.RenderSlot, ptr %260, i32 0, i32 10
  store i16 0, ptr %261, align 2
  tail call void asm sideeffect "", "{r5}"(i32 -6815744) #6, !srcloc !12
  %262 = add i32 %140, -6815744
  %263 = getelementptr inbounds %struct.RenderSlot, ptr %260, i32 0, i32 3
  store i32 %262, ptr %263, align 4
  br label %344

264:                                              ; preds = %217
  %265 = tail call i32 asm "", "={r6},{r6}"(i32 %102) #5, !srcloc !13
  %266 = icmp slt i32 %265, 58
  %267 = load i8, ptr @gRenderClassSlots0, align 1
  %268 = zext i8 %267 to i32
  %269 = mul nuw nsw i32 %268, 104
  %270 = add i32 %269, %222
  %271 = inttoptr i32 %270 to ptr
  br i1 %266, label %272, label %290

272:                                              ; preds = %264
  tail call void asm sideeffect "", "{r4}"(i32 -6160384) #6, !srcloc !14
  %273 = add i32 %140, -6160384
  %274 = getelementptr inbounds %struct.RenderSlot, ptr %271, i32 0, i32 3
  store i32 %273, ptr %274, align 4
  %275 = add i32 %141, 11272192
  %276 = getelementptr inbounds %struct.RenderSlot, ptr %271, i32 0, i32 4
  store i32 %275, ptr %276, align 4
  %277 = load i8, ptr @gRenderClassSlots1, align 1
  %278 = zext i8 %277 to i32
  %279 = mul nuw nsw i32 %278, 104
  %280 = add i32 %279, %222
  %281 = inttoptr i32 %280 to ptr
  tail call void asm sideeffect "", "{r5}"(i32 -5242880) #6, !srcloc !15
  %282 = add i32 %140, -5242880
  %283 = getelementptr inbounds %struct.RenderSlot, ptr %281, i32 0, i32 3
  store i32 %282, ptr %283, align 4
  %284 = add i32 %141, 9830400
  %285 = getelementptr inbounds %struct.RenderSlot, ptr %281, i32 0, i32 4
  store i32 %284, ptr %285, align 4
  %286 = add i32 %140, -9502720
  %287 = getelementptr inbounds %struct.RenderSlot, ptr %243, i32 0, i32 3
  store i32 %286, ptr %287, align 4
  %288 = add i32 %141, 10223616
  %289 = getelementptr inbounds %struct.RenderSlot, ptr %243, i32 0, i32 4
  store i32 %288, ptr %289, align 4
  br label %344

290:                                              ; preds = %264
  %291 = add i32 %140, -6225920
  %292 = getelementptr inbounds %struct.RenderSlot, ptr %271, i32 0, i32 3
  store i32 %291, ptr %292, align 4
  %293 = add i32 %141, 11010048
  %294 = getelementptr inbounds %struct.RenderSlot, ptr %271, i32 0, i32 4
  store i32 %293, ptr %294, align 4
  %295 = load i8, ptr @gRenderClassSlots1, align 1
  %296 = zext i8 %295 to i32
  %297 = mul nuw nsw i32 %296, 104
  %298 = add i32 %297, %222
  %299 = inttoptr i32 %298 to ptr
  %300 = add i32 %140, -5308416
  %301 = getelementptr inbounds %struct.RenderSlot, ptr %299, i32 0, i32 3
  store i32 %300, ptr %301, align 4
  %302 = add i32 %141, 9830400
  %303 = getelementptr inbounds %struct.RenderSlot, ptr %299, i32 0, i32 4
  store i32 %302, ptr %303, align 4
  %304 = add i32 %140, -9568256
  %305 = getelementptr inbounds %struct.RenderSlot, ptr %243, i32 0, i32 3
  store i32 %304, ptr %305, align 4
  %306 = add i32 %141, 10223616
  %307 = getelementptr inbounds %struct.RenderSlot, ptr %243, i32 0, i32 4
  store i32 %306, ptr %307, align 4
  br label %344

308:                                              ; preds = %215
  %309 = add i32 %141, -1048576
  %310 = load i8, ptr @gRenderClassSlots0, align 1
  %311 = zext i8 %310 to i32
  %312 = mul nuw nsw i32 %311, 104
  %313 = load ptr, ptr @gRenderSlots, align 4
  %314 = ptrtoint ptr %313 to i32
  %315 = add i32 %312, %314
  %316 = inttoptr i32 %315 to ptr
  %317 = mul i32 %128, 208
  tail call void asm sideeffect "", "{r2}"(i32 %140) #6, !srcloc !16
  %318 = add i32 %317, %140
  %319 = mul i32 %139, -2
  %320 = add i32 %318, %319
  %321 = getelementptr inbounds %struct.RenderSlot, ptr %316, i32 0, i32 3
  store i32 %320, ptr %321, align 4
  %322 = mul i32 %139, 208
  %323 = add i32 %322, %309
  %324 = getelementptr inbounds %struct.RenderSlot, ptr %316, i32 0, i32 4
  store i32 %323, ptr %324, align 4
  tail call void asm sideeffect "", "{r0}"(i32 %128) #6, !srcloc !17
  tail call void asm sideeffect "", "{r1}"(i32 %142) #6, !srcloc !18
  %325 = sub i32 %142, %211
  %326 = getelementptr inbounds %struct.RenderSlot, ptr %316, i32 0, i32 5
  store i32 %325, ptr %326, align 4
  %327 = shl nsw i32 %111, 8
  %328 = getelementptr inbounds %struct.RenderSlot, ptr %316, i32 0, i32 10
  %329 = trunc i32 %327 to i16
  store i16 %329, ptr %328, align 2
  %330 = load i8, ptr @gRenderClassSlots1, align 1
  %331 = zext i8 %330 to i32
  %332 = mul nuw nsw i32 %331, 104
  %333 = add i32 %332, %314
  %334 = inttoptr i32 %333 to ptr
  %335 = mul i32 %128, 180
  %336 = add i32 %335, %140
  %337 = add i32 %336, %319
  %338 = getelementptr inbounds %struct.RenderSlot, ptr %334, i32 0, i32 3
  store i32 %337, ptr %338, align 4
  %339 = mul i32 %139, 180
  %340 = add i32 %339, %309
  %341 = getelementptr inbounds %struct.RenderSlot, ptr %334, i32 0, i32 4
  store i32 %340, ptr %341, align 4
  %342 = getelementptr inbounds %struct.RenderSlot, ptr %334, i32 0, i32 5
  store i32 %325, ptr %342, align 4
  %343 = getelementptr inbounds %struct.RenderSlot, ptr %334, i32 0, i32 10
  store i16 %329, ptr %343, align 2
  br label %344

344:                                              ; preds = %308, %272, %290, %247, %100
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindUnusedAffineMatrix() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPlaceMapBank6AtSharedPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 3
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 2), align 4
  %8 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 5
  store i32 %7, ptr %8, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateMapBank6SecondChain(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = load i8, ptr @gMapBank6SecondChainSlots, align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 104
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %7, %9
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr %struct.RenderSlot, ptr %11, i32 0, i32 23, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %16, ptr %12, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %17, ptrtoint (ptr @gAffineUsage to i32)
  %19 = inttoptr i32 %18 to ptr
  store i8 1, ptr %19, align 1
  %20 = load ptr, ptr @gRenderSlots, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i32 [ %21, %15 ], [ %9, %1 ]
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 1), align 1
  %25 = zext i8 %24 to i32
  %26 = mul nuw nsw i32 %25, 104
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr %struct.RenderSlot, ptr %28, i32 0, i32 23, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %33, ptr %29, align 1
  %34 = zext i8 %33 to i32
  %35 = add i32 %34, ptrtoint (ptr @gAffineUsage to i32)
  %36 = inttoptr i32 %35 to ptr
  store i8 1, ptr %36, align 1
  %37 = load ptr, ptr @gRenderSlots, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %39

39:                                               ; preds = %32, %22
  %40 = phi i32 [ %38, %32 ], [ %23, %22 ]
  %41 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 2), align 1
  %42 = zext i8 %41 to i32
  %43 = mul nuw nsw i32 %42, 104
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr %struct.RenderSlot, ptr %45, i32 0, i32 23, i32 4
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %50, ptr %46, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 %51, ptrtoint (ptr @gAffineUsage to i32)
  %53 = inttoptr i32 %52 to ptr
  store i8 1, ptr %53, align 1
  %54 = load ptr, ptr @gRenderSlots, align 4
  %55 = ptrtoint ptr %54 to i32
  br label %56

56:                                               ; preds = %49, %39
  %57 = phi i32 [ %55, %49 ], [ %40, %39 ]
  %58 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 3), align 1
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %59, 104
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr %struct.RenderSlot, ptr %62, i32 0, i32 23, i32 4
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %67, ptr %63, align 1
  %68 = zext i8 %67 to i32
  %69 = add i32 %68, ptrtoint (ptr @gAffineUsage to i32)
  %70 = inttoptr i32 %69 to ptr
  store i8 1, ptr %70, align 1
  %71 = load ptr, ptr @gRenderSlots, align 4
  %72 = ptrtoint ptr %71 to i32
  br label %73

73:                                               ; preds = %66, %56
  %74 = phi i32 [ %72, %66 ], [ %57, %56 ]
  %75 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 4), align 1
  %76 = zext i8 %75 to i32
  %77 = mul nuw nsw i32 %76, 104
  %78 = add i32 %77, %74
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr %struct.RenderSlot, ptr %79, i32 0, i32 23, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %84, ptr %80, align 1
  %85 = zext i8 %84 to i32
  %86 = add i32 %85, ptrtoint (ptr @gAffineUsage to i32)
  %87 = inttoptr i32 %86 to ptr
  store i8 1, ptr %87, align 1
  br label %88

88:                                               ; preds = %83, %73
  %89 = zext i8 %2 to i32
  %90 = zext i8 %4 to i32
  %91 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %88
  %94 = load ptr, ptr @gRenderSlots, align 4
  %95 = ptrtoint ptr %94 to i32
  %96 = add i32 %95, 2496
  %97 = inttoptr i32 %96 to ptr
  %98 = getelementptr inbounds %struct.RenderSlot, ptr %97, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  store i32 %99, ptr @gTaskTextVariables2BB0, align 4
  %100 = getelementptr inbounds %struct.RenderSlot, ptr %97, i32 0, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, -6291456
  %103 = tail call ptr asm "", "=l,r,0"(i32 -6291456, ptr nonnull @gTaskTextVariables2BB0) #5, !srcloc !19
  %104 = getelementptr i32, ptr %103, i32 1
  store i32 %102, ptr %104, align 4
  %105 = getelementptr inbounds %struct.RenderSlot, ptr %97, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i32, ptr %103, i32 2
  store i32 %106, ptr %107, align 4
  tail call void asm sideeffect "", "r"(i32 -6291456) #6, !srcloc !20
  %108 = mul nuw nsw i32 %89, 104
  %109 = add i32 %108, %95
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.RenderSlot, ptr %110, i32 0, i32 10
  store i16 0, ptr %111, align 4
  %112 = icmp eq i8 %4, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %93
  %114 = mul nuw nsw i32 %90, 104
  %115 = add i32 %114, %95
  %116 = inttoptr i32 %115 to ptr
  %117 = getelementptr inbounds %struct.RenderSlot, ptr %116, i32 0, i32 10
  store i16 0, ptr %117, align 4
  br label %118

118:                                              ; preds = %113, %93, %88
  %119 = tail call i32 asm "", "=l,0,~{r4}"(i32 255) #5, !srcloc !21
  %120 = load i8, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  %121 = zext i8 %120 to i32
  %122 = getelementptr i16, ptr @gRenderSineTable, i32 %121
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = shl nuw i32 %124, 16
  %126 = ashr i32 %125, 20
  tail call void asm sideeffect "", "r"(i32 %126) #6, !srcloc !22
  %127 = and i32 %126, %119
  %128 = getelementptr i16, ptr @gRenderSineTable, i32 %127
  %129 = load i16, ptr %128, align 2
  %130 = sext i16 %129 to i32
  %131 = shl nsw i32 %130, 8
  tail call void asm sideeffect "", "r"(i32 %119) #6, !srcloc !23
  %132 = add nsw i32 %126, 1
  %133 = and i32 %132, %119
  %134 = getelementptr i16, ptr @gRenderSineTable, i32 %133
  %135 = load i16, ptr %134, align 2
  %136 = sext i16 %135 to i32
  %137 = sub nsw i32 %136, %130
  %138 = shl nuw nsw i32 %124, 4
  %139 = and i32 %138, 240
  %140 = mul nsw i32 %139, %137
  %141 = add nsw i32 %140, %131
  %142 = getelementptr i16, ptr %128, i32 64
  %143 = load i16, ptr %142, align 2
  %144 = sext i16 %143 to i32
  %145 = shl nsw i32 %144, 8
  %146 = tail call i32 asm "", "={r3}"() #5, !srcloc !24
  %147 = getelementptr i16, ptr %134, i32 64
  %148 = load i16, ptr %147, align 2
  %149 = sext i16 %148 to i32
  %150 = sub nsw i32 %149, %144
  %151 = mul nsw i32 %139, %150
  %152 = add nsw i32 %151, %145
  tail call void asm sideeffect "", "r,{r3}"(ptr nonnull %142, i32 %146) #6, !srcloc !25
  %153 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %154 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 1), align 4
  %155 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 2), align 4
  %156 = tail call i32 asm "", "={r3},{r3}"(i32 %126) #5, !srcloc !26
  %157 = mul i32 %152, 96
  %158 = add i32 %157, %154
  %159 = mul i32 %141, 96
  %160 = add i32 %159, %153
  %161 = shl nsw i32 %152, 5
  %162 = shl nsw i32 %141, 5
  %163 = load ptr, ptr @gRenderSlots, align 4
  %164 = ptrtoint ptr %163 to i32
  %165 = trunc i32 %156 to i16
  %166 = shl i16 %165, 8
  %167 = load i8, ptr @gMapBank6SecondChainSlots, align 1
  %168 = zext i8 %167 to i32
  %169 = mul nuw nsw i32 %168, 104
  %170 = add i32 %169, %164
  %171 = inttoptr i32 %170 to ptr
  %172 = getelementptr inbounds %struct.RenderSlot, ptr %171, i32 0, i32 3
  store i32 %160, ptr %172, align 4
  %173 = getelementptr inbounds %struct.RenderSlot, ptr %171, i32 0, i32 4
  store i32 %158, ptr %173, align 4
  %174 = getelementptr inbounds %struct.RenderSlot, ptr %171, i32 0, i32 5
  store i32 %155, ptr %174, align 4
  %175 = getelementptr inbounds %struct.RenderSlot, ptr %171, i32 0, i32 10
  store i16 %166, ptr %175, align 2
  %176 = add i32 %158, %161
  %177 = add i32 %160, %162
  %178 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 1), align 1
  %179 = zext i8 %178 to i32
  %180 = mul nuw nsw i32 %179, 104
  %181 = add i32 %180, %164
  %182 = inttoptr i32 %181 to ptr
  %183 = getelementptr inbounds %struct.RenderSlot, ptr %182, i32 0, i32 3
  store i32 %177, ptr %183, align 4
  %184 = add i32 %176, -2097152
  %185 = getelementptr inbounds %struct.RenderSlot, ptr %182, i32 0, i32 4
  store i32 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.RenderSlot, ptr %182, i32 0, i32 5
  store i32 %155, ptr %186, align 4
  %187 = getelementptr inbounds %struct.RenderSlot, ptr %182, i32 0, i32 10
  store i16 %166, ptr %187, align 2
  %188 = add i32 %176, %161
  %189 = add i32 %177, %162
  %190 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 2), align 1
  %191 = zext i8 %190 to i32
  %192 = mul nuw nsw i32 %191, 104
  %193 = add i32 %192, %164
  %194 = inttoptr i32 %193 to ptr
  %195 = getelementptr inbounds %struct.RenderSlot, ptr %194, i32 0, i32 3
  store i32 %189, ptr %195, align 4
  %196 = add i32 %188, -4194304
  %197 = getelementptr inbounds %struct.RenderSlot, ptr %194, i32 0, i32 4
  store i32 %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.RenderSlot, ptr %194, i32 0, i32 5
  store i32 %155, ptr %198, align 4
  %199 = getelementptr inbounds %struct.RenderSlot, ptr %194, i32 0, i32 10
  store i16 %166, ptr %199, align 2
  %200 = add i32 %188, %161
  %201 = add i32 %189, %162
  %202 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 3), align 1
  %203 = zext i8 %202 to i32
  %204 = mul nuw nsw i32 %203, 104
  %205 = add i32 %204, %164
  %206 = inttoptr i32 %205 to ptr
  %207 = getelementptr inbounds %struct.RenderSlot, ptr %206, i32 0, i32 3
  store i32 %201, ptr %207, align 4
  %208 = add i32 %200, -6291456
  %209 = getelementptr inbounds %struct.RenderSlot, ptr %206, i32 0, i32 4
  store i32 %208, ptr %209, align 4
  %210 = getelementptr inbounds %struct.RenderSlot, ptr %206, i32 0, i32 5
  store i32 %155, ptr %210, align 4
  %211 = getelementptr inbounds %struct.RenderSlot, ptr %206, i32 0, i32 10
  store i16 %166, ptr %211, align 2
  %212 = add i32 %200, %161
  %213 = add i32 %201, %162
  %214 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6SecondChainSlots, i32 0, i32 4), align 1
  %215 = zext i8 %214 to i32
  %216 = mul nuw nsw i32 %215, 104
  %217 = add i32 %216, %164
  %218 = inttoptr i32 %217 to ptr
  %219 = getelementptr inbounds %struct.RenderSlot, ptr %218, i32 0, i32 3
  store i32 %213, ptr %219, align 4
  %220 = add i32 %212, -8388608
  %221 = getelementptr inbounds %struct.RenderSlot, ptr %218, i32 0, i32 4
  store i32 %220, ptr %221, align 4
  %222 = getelementptr inbounds %struct.RenderSlot, ptr %218, i32 0, i32 5
  store i32 %155, ptr %222, align 4
  %223 = getelementptr inbounds %struct.RenderSlot, ptr %218, i32 0, i32 10
  store i16 %166, ptr %223, align 2
  %224 = add i32 %154, -1048576
  %225 = tail call ptr asm "", "={r4},{r4}"(ptr nonnull %0) #5, !srcloc !27
  %226 = icmp eq ptr %225, null
  br i1 %226, label %258, label %227

227:                                              ; preds = %118
  %228 = mul nuw nsw i32 %89, 104
  %229 = tail call ptr asm "", "={r1},0"(ptr nonnull @gRenderSlots) #5, !srcloc !28
  %230 = load ptr, ptr %229, align 4
  %231 = ptrtoint ptr %230 to i32
  %232 = add i32 %228, %231
  %233 = inttoptr i32 %232 to ptr
  %234 = mul i32 %141, 208
  %235 = add i32 %234, %153
  %236 = getelementptr inbounds %struct.RenderSlot, ptr %233, i32 0, i32 3
  store i32 %235, ptr %236, align 4
  %237 = mul i32 %152, 208
  %238 = add i32 %237, %224
  %239 = getelementptr inbounds %struct.RenderSlot, ptr %233, i32 0, i32 4
  store i32 %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.RenderSlot, ptr %233, i32 0, i32 5
  store i32 %155, ptr %240, align 4
  %241 = tail call i32 asm "", "=r,0"(i32 %126) #5, !srcloc !29
  %242 = getelementptr inbounds %struct.RenderSlot, ptr %233, i32 0, i32 10
  %243 = trunc i32 %241 to i16
  %244 = shl i16 %243, 8
  store i16 %244, ptr %242, align 2
  %245 = icmp eq i8 %4, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %227
  %247 = mul nuw nsw i32 %90, 104
  %248 = add i32 %247, %231
  %249 = inttoptr i32 %248 to ptr
  %250 = mul i32 %141, 180
  %251 = add i32 %250, %153
  %252 = getelementptr inbounds %struct.RenderSlot, ptr %249, i32 0, i32 3
  store i32 %251, ptr %252, align 4
  %253 = mul i32 %152, 180
  %254 = add i32 %253, %224
  %255 = getelementptr inbounds %struct.RenderSlot, ptr %249, i32 0, i32 4
  store i32 %254, ptr %255, align 4
  %256 = getelementptr inbounds %struct.RenderSlot, ptr %249, i32 0, i32 5
  store i32 %155, ptr %256, align 4
  %257 = getelementptr inbounds %struct.RenderSlot, ptr %249, i32 0, i32 10
  store i16 %244, ptr %257, align 2
  br label %258

258:                                              ; preds = %227, %246, %118
  ret i32 2
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateMapBank6Chains(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef %0) #4
  %5 = icmp eq i8 %4, 22
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call arm_apcscc i32 @UpdateMapBank6FirstChain(ptr noundef null) #7
  br label %10

8:                                                ; preds = %3
  %9 = tail call arm_apcscc i32 @UpdateMapBank6SecondChain(ptr noundef null) #7
  br label %10

10:                                               ; preds = %8, %6
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackLandMapBank6AtClassPosition(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = icmp slt i32 %8, 32768
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = load i8, ptr @gRenderClassSlots0, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %12, i32 %14
  %16 = icmp eq ptr %15, %0
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %18 = select i1 %16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36)
  %19 = select i1 %16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 37)
  %20 = load i16, ptr %18, align 2
  %21 = zext i16 %20 to i32
  %22 = shl nuw i32 %21, 16
  %23 = or disjoint i32 %22, 32768
  store i32 %23, ptr %17, align 4
  %24 = load i16, ptr %19, align 2
  %25 = zext i16 %24 to i32
  %26 = shl nuw i32 %25, 16
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  store i32 32768, ptr %4, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %6, align 4
  %28 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %3, %10
  %30 = phi i32 [ 3, %10 ], [ 0, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackCheckMapBank6RectContainment(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  %5 = zext i8 %4 to i32
  %6 = mul nuw nsw i32 %5, 104
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = add i32 %6, %8
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr i8, ptr %10, i32 26
  %12 = load i16, ptr %11, align 2
  %13 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 39), align 2
  %14 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 40), align 2
  %15 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 41), align 2
  %16 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 38), align 2
  %17 = getelementptr i8, ptr %10, i32 34
  %18 = load i16, ptr %17, align 2
  %19 = icmp slt i16 %16, %18
  %20 = sext i16 %18 to i32
  %21 = add nsw i32 %20, 40
  %22 = sext i16 %13 to i32
  %23 = icmp slt i32 %21, %22
  %24 = select i1 %19, i1 %23, i1 false
  %25 = zext i16 %14 to i32
  %26 = shl nuw i32 %25, 16
  %27 = zext i16 %12 to i32
  %28 = shl nuw i32 %27, 16
  %29 = icmp slt i32 %26, %28
  %30 = select i1 %24, i1 %29, i1 false
  %31 = sext i16 %12 to i32
  %32 = add nsw i32 %31, 40
  %33 = sext i16 %15 to i32
  %34 = icmp slt i32 %32, %33
  %35 = select i1 %30, i1 %34, i1 false
  br i1 %35, label %48, label %36

36:                                               ; preds = %3
  tail call void asm sideeffect "", "{r5},{r6},r"(i16 %13, i16 %14, i16 %15) #6, !srcloc !30
  %37 = getelementptr inbounds %struct.RenderSlot, ptr %10, i32 0, i32 23
  %38 = load i8, ptr %37, align 1
  switch i8 %38, label %45 [
    i8 1, label %42
    i8 2, label %39
    i8 3, label %40
    i8 4, label %41
  ]

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %36, %39, %40, %41
  %43 = phi ptr [ inttoptr (i32 143311156 to ptr), %41 ], [ inttoptr (i32 143311101 to ptr), %40 ], [ inttoptr (i32 143310991 to ptr), %39 ], [ inttoptr (i32 143311046 to ptr), %36 ]
  %44 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %44, ptr noundef nonnull %43) #4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 163), align 1
  %47 = zext i8 %46 to i16
  tail call arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext %47) #4
  br label %48

48:                                               ; preds = %3, %45
  %49 = phi i32 [ 3, %45 ], [ 0, %3 ]
  store i32 1, ptr %2, align 4
  ret i32 %49
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackCheckMapBank6RectOverlap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  %5 = zext i8 %4 to i32
  %6 = mul nuw nsw i32 %5, 104
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = add i32 %6, %8
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr i8, ptr %10, i32 26
  %12 = load i16, ptr %11, align 2
  %13 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 39), align 2
  %14 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 40), align 2
  %15 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 41), align 2
  %16 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 38), align 2
  %17 = sext i16 %16 to i32
  %18 = getelementptr i8, ptr %10, i32 34
  %19 = load i16, ptr %18, align 2
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %20, 40
  %22 = icmp sgt i32 %21, %17
  %23 = icmp slt i16 %19, %13
  %24 = select i1 %22, i1 %23, i1 false
  %25 = sext i16 %14 to i32
  %26 = sext i16 %12 to i32
  %27 = add nsw i32 %26, 40
  %28 = icmp sgt i32 %27, %25
  %29 = select i1 %24, i1 %28, i1 false
  %30 = icmp slt i16 %12, %15
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %10, i32 0, i32 23
  %34 = load i8, ptr %33, align 1
  switch i8 %34, label %40 [
    i8 1, label %38
    i8 2, label %35
    i8 3, label %36
    i8 4, label %37
  ]

35:                                               ; preds = %32
  br label %38

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %35, %36, %32, %37
  %39 = phi ptr [ inttoptr (i32 143311156 to ptr), %37 ], [ inttoptr (i32 143311101 to ptr), %36 ], [ inttoptr (i32 143310991 to ptr), %35 ], [ inttoptr (i32 143311046 to ptr), %32 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %4, ptr noundef nonnull %39) #4
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 163), align 1
  %42 = zext i8 %41 to i16
  tail call arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext %42) #4
  br label %44

43:                                               ; preds = %3
  tail call void asm sideeffect "", "{r5},{r6},r"(i16 %13, i16 %14, i16 %15) #6, !srcloc !31
  br label %44

44:                                               ; preds = %40, %43
  %45 = phi i32 [ 0, %43 ], [ 3, %40 ]
  store i32 1, ptr %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @AnimationCallbackUpdateMapBank6SineFlight(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef %0) #4
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 1
  %7 = add i32 %6, add (i32 ptrtoint (ptr @gAnimationClassValues to i32), i32 410)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = add i16 %9, 1
  store i16 %11, ptr %8, align 2
  %12 = shl nuw nsw i32 %5, 8
  %13 = add nsw i32 %12, -6400
  %14 = and i32 %10, 255
  %15 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %13, %17
  %19 = shl nuw nsw i32 %10, 6
  %20 = mul i32 %18, %19
  %21 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 687) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = add nsw i32 %10, -64
  %25 = shl i32 %24, 17
  %26 = mul i32 %20, 3
  %27 = add i32 %26, %25
  %28 = icmp sgt i32 %27, 37748736
  br i1 %28, label %35, label %37

29:                                               ; preds = %3
  %30 = sub nsw i32 384, %10
  %31 = shl i32 %30, 17
  %32 = mul i32 %20, -3
  %33 = add i32 %32, %31
  %34 = icmp slt i32 %33, 4194304
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23
  %36 = phi i32 [ %24, %23 ], [ %30, %29 ]
  store i16 48, ptr %8, align 2
  br label %37

37:                                               ; preds = %35, %29, %23
  %38 = phi i32 [ %24, %23 ], [ %30, %29 ], [ %36, %35 ]
  %39 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 686) #4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 8, i32 0
  %42 = shl i32 %38, 16
  %43 = tail call i32 asm "", "={r0},{r0}"(i32 32768) #5, !srcloc !32
  %44 = add i32 %43, %42
  %45 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = add i32 %20, -18841600
  %47 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 18907136, ptr %48, align 4
  store i32 0, ptr %2, align 4
  ret i32 %41
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackApproachMapBank6FixedPosition(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6
  %8 = icmp eq ptr %7, %0
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 9469952, i32 12091392
  %12 = sub i32 %11, %10
  %13 = sdiv i32 %12, 32
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 11567104, %16
  %18 = sdiv i32 %17, 32
  %19 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 %18, ptr %19, align 4
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackWrapMapBank6ChainY(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = load i32, ptr @gMapBank6WrappedChainSlots, align 4
  %7 = mul i32 %6, 104
  %8 = add i32 %7, %5
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %9, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = icmp sgt i32 %14, 524288
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = add i32 %11, -4194304
  store i32 %17, ptr %10, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32, ptr getelementptr ([0 x i32], ptr @gMapBank6WrappedChainSlots, i32 0, i32 1), align 4
  %20 = mul i32 %19, 104
  %21 = add i32 %20, %5
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.RenderSlot, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.RenderSlot, ptr %22, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = icmp sgt i32 %27, 524288
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = add i32 %24, -4194304
  store i32 %30, ptr %23, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i32, ptr getelementptr ([0 x i32], ptr @gMapBank6WrappedChainSlots, i32 0, i32 2), align 4
  %33 = mul i32 %32, 104
  %34 = add i32 %33, %5
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.RenderSlot, ptr %35, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %35, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %37
  %41 = icmp sgt i32 %40, 524288
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = add i32 %37, -4194304
  store i32 %43, ptr %36, align 4
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i32, ptr getelementptr ([0 x i32], ptr @gMapBank6WrappedChainSlots, i32 0, i32 3), align 4
  %46 = mul i32 %45, 104
  %47 = add i32 %46, %5
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.RenderSlot, ptr %48, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.RenderSlot, ptr %48, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %50
  %54 = icmp sgt i32 %53, 524288
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = add i32 %50, -4194304
  store i32 %56, ptr %49, align 4
  br label %57

57:                                               ; preds = %55, %44
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateMapBank6ThirdChain() local_unnamed_addr #0 {
  %1 = load i8, ptr @gMapBank6ThirdChainSlots, align 1
  %2 = zext i8 %1 to i32
  %3 = mul nuw nsw i32 %2, 104
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %3, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 0, i32 23, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %0
  %12 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %12, ptr %8, align 1
  %13 = zext i8 %12 to i32
  %14 = add i32 %13, ptrtoint (ptr @gAffineUsage to i32)
  %15 = inttoptr i32 %14 to ptr
  store i8 1, ptr %15, align 1
  %16 = load ptr, ptr @gRenderSlots, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %18

18:                                               ; preds = %11, %0
  %19 = phi i32 [ %17, %11 ], [ %5, %0 ]
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6ThirdChainSlots, i32 0, i32 1), align 1
  %21 = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %21, 104
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr %struct.RenderSlot, ptr %24, i32 0, i32 23, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %29, ptr %25, align 1
  %30 = zext i8 %29 to i32
  %31 = add i32 %30, ptrtoint (ptr @gAffineUsage to i32)
  %32 = inttoptr i32 %31 to ptr
  store i8 1, ptr %32, align 1
  %33 = load ptr, ptr @gRenderSlots, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %35

35:                                               ; preds = %28, %18
  %36 = phi i32 [ %34, %28 ], [ %19, %18 ]
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6ThirdChainSlots, i32 0, i32 2), align 1
  %38 = zext i8 %37 to i32
  %39 = mul nuw nsw i32 %38, 104
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr %struct.RenderSlot, ptr %41, i32 0, i32 23, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %46, ptr %42, align 1
  %47 = zext i8 %46 to i32
  %48 = add i32 %47, ptrtoint (ptr @gAffineUsage to i32)
  %49 = inttoptr i32 %48 to ptr
  store i8 1, ptr %49, align 1
  %50 = load ptr, ptr @gRenderSlots, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %52

52:                                               ; preds = %45, %35
  %53 = phi i32 [ %51, %45 ], [ %36, %35 ]
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6ThirdChainSlots, i32 0, i32 3), align 1
  %55 = zext i8 %54 to i32
  %56 = mul nuw nsw i32 %55, 104
  %57 = add i32 %56, %53
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr %struct.RenderSlot, ptr %58, i32 0, i32 23, i32 4
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %63, ptr %59, align 1
  %64 = zext i8 %63 to i32
  %65 = add i32 %64, ptrtoint (ptr @gAffineUsage to i32)
  %66 = inttoptr i32 %65 to ptr
  store i8 1, ptr %66, align 1
  %67 = load ptr, ptr @gRenderSlots, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %69

69:                                               ; preds = %62, %52
  %70 = phi i32 [ %68, %62 ], [ %53, %52 ]
  %71 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6ThirdChainSlots, i32 0, i32 4), align 1
  %72 = zext i8 %71 to i32
  %73 = mul nuw nsw i32 %72, 104
  %74 = add i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr %struct.RenderSlot, ptr %75, i32 0, i32 23, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %80, ptr %76, align 1
  %81 = zext i8 %80 to i32
  %82 = add i32 %81, ptrtoint (ptr @gAffineUsage to i32)
  %83 = inttoptr i32 %82 to ptr
  store i8 1, ptr %83, align 1
  %84 = load ptr, ptr @gRenderSlots, align 4
  %85 = ptrtoint ptr %84 to i32
  br label %86

86:                                               ; preds = %79, %69
  %87 = phi i32 [ %85, %79 ], [ %70, %69 ]
  %88 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank6ThirdChainSlots, i32 0, i32 5), align 1
  %89 = zext i8 %88 to i32
  %90 = mul nuw nsw i32 %89, 104
  %91 = add i32 %90, %87
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr %struct.RenderSlot, ptr %92, i32 0, i32 23, i32 4
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %97, ptr %93, align 1
  %98 = zext i8 %97 to i32
  %99 = add i32 %98, ptrtoint (ptr @gAffineUsage to i32)
  %100 = inttoptr i32 %99 to ptr
  store i8 1, ptr %100, align 1
  br label %101

101:                                              ; preds = %96, %86
  %102 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %106 = zext i16 %105 to i32
  %107 = shl nuw i32 %106, 16
  %108 = add i32 %107, 8388608
  store i32 %108, ptr @gTaskTextVariables2BB0, align 4
  store i32 -13598720, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 1), align 4
  %109 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %110 = zext i16 %109 to i32
  %111 = shl nuw i32 %110, 16
  store i32 %111, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 2), align 4
  br label %112

112:                                              ; preds = %104, %101
  %113 = and i16 %102, 255
  %114 = zext nneg i16 %113 to i32
  %115 = getelementptr i16, ptr @gRenderSineTable, i32 %114
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = shl nuw i32 %117, 16
  %119 = ashr exact i32 %118, 4
  %120 = and i32 %119, -65536
  %121 = ashr i32 %118, 20
  tail call void asm sideeffect "", "{r2}"(i32 %121) #6, !srcloc !33
  %122 = and i32 %121, 255
  %123 = getelementptr i16, ptr @gRenderSineTable, i32 %122
  %124 = load i16, ptr %123, align 2
  %125 = sext i16 %124 to i32
  %126 = shl nsw i32 %125, 8
  %127 = add nsw i32 %121, 1
  %128 = and i32 %127, 255
  %129 = getelementptr i16, ptr @gRenderSineTable, i32 %128
  %130 = load i16, ptr %129, align 2
  %131 = sext i16 %130 to i32
  %132 = sub nsw i32 %131, %125
  %133 = shl nuw nsw i32 %117, 4
  %134 = and i32 %133, 240
  %135 = mul nsw i32 %134, %132
  %136 = add nsw i32 %135, %126
  %137 = getelementptr i16, ptr %123, i32 64
  %138 = load i16, ptr %137, align 2
  %139 = sext i16 %138 to i32
  %140 = shl nsw i32 %139, 8
  %141 = getelementptr i16, ptr %129, i32 64
  %142 = load i16, ptr %141, align 2
  %143 = sext i16 %142 to i32
  %144 = sub nsw i32 %143, %139
  %145 = mul nsw i32 %134, %144
  %146 = add nsw i32 %145, %140
  %147 = tail call ptr asm "", "={r3},{r3}"(ptr nonnull @gTaskTextVariables2BB0) #5, !srcloc !34
  %148 = load i32, ptr %147, align 4
  %149 = tail call ptr asm "", "=r,0"(ptr nonnull @gTaskTextVariables2BB0) #5, !srcloc !35
  %150 = getelementptr i32, ptr %149, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull @gTaskTextVariables2BB0) #5, !srcloc !36
  %153 = getelementptr i32, ptr %152, i32 2
  %154 = load i32, ptr %153, align 4
  tail call void asm sideeffect "", "{r2}"(i32 %120) #6, !srcloc !37
  %155 = trunc i32 %121 to i16
  %156 = mul i16 %155, -256
  %157 = load i8, ptr @gMapBank6ThirdChainSlots, align 1
  %158 = zext i8 %157 to i32
  tail call void asm sideeffect "", "{r1}"(i32 104) #6, !srcloc !38
  %159 = mul nuw nsw i32 %158, 104
  %160 = load ptr, ptr @gRenderSlots, align 4
  %161 = ptrtoint ptr %160 to i32
  %162 = add i32 %159, %161
  %163 = inttoptr i32 %162 to ptr
  tail call void asm sideeffect "", "{r3}"(i32 %148) #6, !srcloc !39
  %164 = getelementptr inbounds %struct.RenderSlot, ptr %163, i32 0, i32 3
  store i32 %148, ptr %164, align 4
  %165 = getelementptr inbounds %struct.RenderSlot, ptr %163, i32 0, i32 4
  store i32 %151, ptr %165, align 4
  %166 = getelementptr inbounds %struct.RenderSlot, ptr %163, i32 0, i32 5
  store i32 %154, ptr %166, align 4
  tail call arm_apcscc void @ApplyMapBank6PlanarTransform(ptr noundef %163, i32 noundef %136, i32 noundef %146, i32 noundef -8, i32 noundef 96) #4
  %167 = getelementptr inbounds %struct.RenderSlot, ptr %163, i32 0, i32 10
  store i16 %156, ptr %167, align 2
  %168 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6ThirdChainSlots to i32), i32 1) to ptr), align 1
  %169 = zext i8 %168 to i32
  tail call void asm sideeffect "", "{r1}"(i32 104) #6, !srcloc !38
  %170 = mul nuw nsw i32 %169, 104
  %171 = load ptr, ptr @gRenderSlots, align 4
  %172 = ptrtoint ptr %171 to i32
  %173 = add i32 %170, %172
  %174 = inttoptr i32 %173 to ptr
  tail call void asm sideeffect "", "{r3}"(i32 %148) #6, !srcloc !39
  %175 = getelementptr inbounds %struct.RenderSlot, ptr %174, i32 0, i32 3
  store i32 %148, ptr %175, align 4
  %176 = getelementptr inbounds %struct.RenderSlot, ptr %174, i32 0, i32 4
  store i32 %151, ptr %176, align 4
  %177 = getelementptr inbounds %struct.RenderSlot, ptr %174, i32 0, i32 5
  store i32 %154, ptr %177, align 4
  tail call arm_apcscc void @ApplyMapBank6PlanarTransform(ptr noundef %174, i32 noundef %136, i32 noundef %146, i32 noundef -8, i32 noundef 128) #4
  %178 = load i32, ptr %176, align 4
  %179 = add i32 %178, -2097152
  store i32 %179, ptr %176, align 4
  %180 = getelementptr inbounds %struct.RenderSlot, ptr %174, i32 0, i32 10
  store i16 %156, ptr %180, align 2
  %181 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6ThirdChainSlots to i32), i32 2) to ptr), align 1
  %182 = zext i8 %181 to i32
  tail call void asm sideeffect "", "{r1}"(i32 104) #6, !srcloc !38
  %183 = mul nuw nsw i32 %182, 104
  %184 = load ptr, ptr @gRenderSlots, align 4
  %185 = ptrtoint ptr %184 to i32
  %186 = add i32 %183, %185
  %187 = inttoptr i32 %186 to ptr
  tail call void asm sideeffect "", "{r3}"(i32 %148) #6, !srcloc !39
  %188 = getelementptr inbounds %struct.RenderSlot, ptr %187, i32 0, i32 3
  store i32 %148, ptr %188, align 4
  %189 = getelementptr inbounds %struct.RenderSlot, ptr %187, i32 0, i32 4
  store i32 %151, ptr %189, align 4
  %190 = getelementptr inbounds %struct.RenderSlot, ptr %187, i32 0, i32 5
  store i32 %154, ptr %190, align 4
  tail call arm_apcscc void @ApplyMapBank6PlanarTransform(ptr noundef %187, i32 noundef %136, i32 noundef %146, i32 noundef -8, i32 noundef 160) #4
  %191 = load i32, ptr %189, align 4
  %192 = add i32 %191, -4194304
  store i32 %192, ptr %189, align 4
  %193 = getelementptr inbounds %struct.RenderSlot, ptr %187, i32 0, i32 10
  store i16 %156, ptr %193, align 2
  %194 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6ThirdChainSlots to i32), i32 3) to ptr), align 1
  %195 = zext i8 %194 to i32
  tail call void asm sideeffect "", "{r1}"(i32 104) #6, !srcloc !38
  %196 = mul nuw nsw i32 %195, 104
  %197 = load ptr, ptr @gRenderSlots, align 4
  %198 = ptrtoint ptr %197 to i32
  %199 = add i32 %196, %198
  %200 = inttoptr i32 %199 to ptr
  tail call void asm sideeffect "", "{r3}"(i32 %148) #6, !srcloc !39
  %201 = getelementptr inbounds %struct.RenderSlot, ptr %200, i32 0, i32 3
  store i32 %148, ptr %201, align 4
  %202 = getelementptr inbounds %struct.RenderSlot, ptr %200, i32 0, i32 4
  store i32 %151, ptr %202, align 4
  %203 = getelementptr inbounds %struct.RenderSlot, ptr %200, i32 0, i32 5
  store i32 %154, ptr %203, align 4
  tail call arm_apcscc void @ApplyMapBank6PlanarTransform(ptr noundef %200, i32 noundef %136, i32 noundef %146, i32 noundef -8, i32 noundef 192) #4
  %204 = load i32, ptr %202, align 4
  %205 = add i32 %204, -6291456
  store i32 %205, ptr %202, align 4
  %206 = getelementptr inbounds %struct.RenderSlot, ptr %200, i32 0, i32 10
  store i16 %156, ptr %206, align 2
  %207 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6ThirdChainSlots to i32), i32 4) to ptr), align 1
  %208 = zext i8 %207 to i32
  tail call void asm sideeffect "", "{r1}"(i32 104) #6, !srcloc !38
  %209 = mul nuw nsw i32 %208, 104
  %210 = load ptr, ptr @gRenderSlots, align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = add i32 %209, %211
  %213 = inttoptr i32 %212 to ptr
  tail call void asm sideeffect "", "{r3}"(i32 %148) #6, !srcloc !39
  %214 = getelementptr inbounds %struct.RenderSlot, ptr %213, i32 0, i32 3
  store i32 %148, ptr %214, align 4
  %215 = getelementptr inbounds %struct.RenderSlot, ptr %213, i32 0, i32 4
  store i32 %151, ptr %215, align 4
  %216 = getelementptr inbounds %struct.RenderSlot, ptr %213, i32 0, i32 5
  store i32 %154, ptr %216, align 4
  tail call arm_apcscc void @ApplyMapBank6PlanarTransform(ptr noundef %213, i32 noundef %136, i32 noundef %146, i32 noundef -8, i32 noundef 224) #4
  %217 = load i32, ptr %215, align 4
  %218 = add i32 %217, -8388608
  store i32 %218, ptr %215, align 4
  %219 = getelementptr inbounds %struct.RenderSlot, ptr %213, i32 0, i32 10
  store i16 %156, ptr %219, align 2
  %220 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6ThirdChainSlots to i32), i32 5) to ptr), align 1
  %221 = zext i8 %220 to i32
  %222 = mul nuw nsw i32 %221, 104
  %223 = load ptr, ptr @gRenderSlots, align 4
  %224 = ptrtoint ptr %223 to i32
  %225 = add i32 %222, %224
  %226 = inttoptr i32 %225 to ptr
  tail call void asm sideeffect "", "{r0}"(i32 %148) #6, !srcloc !40
  %227 = getelementptr inbounds %struct.RenderSlot, ptr %226, i32 0, i32 3
  store i32 %148, ptr %227, align 4
  tail call void asm sideeffect "", "{r1}"(i32 %151) #6, !srcloc !41
  %228 = getelementptr inbounds %struct.RenderSlot, ptr %226, i32 0, i32 4
  store i32 %151, ptr %228, align 4
  tail call void asm sideeffect "", "{r2}"(i32 %154) #6, !srcloc !42
  %229 = getelementptr inbounds %struct.RenderSlot, ptr %226, i32 0, i32 5
  store i32 %154, ptr %229, align 4
  tail call arm_apcscc void @ApplyMapBank6PlanarTransform(ptr noundef %226, i32 noundef %136, i32 noundef %146, i32 noundef -75, i32 noundef 216) #4
  %230 = load i32, ptr %228, align 4
  tail call void asm sideeffect "", "{r3}"(i32 -2621440) #6, !srcloc !43
  %231 = add i32 %230, -2621440
  store i32 %231, ptr %228, align 4
  %232 = getelementptr inbounds %struct.RenderSlot, ptr %226, i32 0, i32 10
  store i16 %156, ptr %232, align 2
  ret i32 0
}

declare dso_local arm_apcscc void @ApplyMapBank6PlanarTransform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank6PreviousClassIndicator() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext %2, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i32 143605885 to ptr)) #4
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %4, ptr noundef nonnull inttoptr (i32 143605885 to ptr)) #4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2012}
!5 = !{i64 3028}
!6 = !{i64 4595}
!7 = !{i64 4767}
!8 = !{i64 4961}
!9 = !{i64 6482}
!10 = !{i64 7383}
!11 = !{i64 9742}
!12 = !{i64 10290}
!13 = !{i64 10693}
!14 = !{i64 11295}
!15 = !{i64 11809}
!16 = !{i64 15612}
!17 = !{i64 16011}
!18 = !{i64 16154}
!19 = !{i64 19500}
!20 = !{i64 19649}
!21 = !{i64 20726}
!22 = !{i64 21003}
!23 = !{i64 21145}
!24 = !{i64 21739}
!25 = !{i64 21903}
!26 = !{i64 22668}
!27 = !{i64 24134}
!28 = !{i64 24622}
!29 = !{i64 25149}
!30 = !{i64 28046}
!31 = !{i64 30566}
!32 = !{i64 31795}
!33 = !{i64 34906}
!34 = !{i64 35722}
!35 = !{i64 35799}
!36 = !{i64 35899}
!37 = !{i64 36061}
!38 = !{i64 36426}
!39 = !{i64 36875}
!40 = !{i64 37963}
!41 = !{i64 38066}
!42 = !{i64 38169}
!43 = !{i64 38375}
