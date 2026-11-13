; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.AudioPsgCorePrefix = type { [10 x i8], i8, [17 x i8], ptr }
%struct.AudioPsgChannelStride = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [11 x i8], i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, [20 x i8] }

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4
@gAudioPsgWaveVolumes9E10 = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateAudioPsgChannels() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %2 = getelementptr inbounds %struct.AudioPsgCorePrefix, ptr %1, i32 0, i32 1
  %3 = load i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 0
  %5 = add i8 %3, -1
  %6 = select i1 %4, i8 14, i8 %5
  store i8 %6, ptr %2, align 2
  %7 = getelementptr inbounds %struct.AudioPsgCorePrefix, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %0, %340
  %10 = phi i32 [ 1, %0 ], [ %341, %340 ]
  %11 = phi ptr [ %8, %0 ], [ %342, %340 ]
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -57
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %340, label %15

15:                                               ; preds = %9
  switch i32 %10, label %18 [
    i32 1, label %19
    i32 2, label %16
    i32 3, label %17
  ]

16:                                               ; preds = %15
  br label %19

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %15, %18, %17, %16
  %20 = phi ptr [ inttoptr (i32 67108988 to ptr), %18 ], [ inttoptr (i32 67108980 to ptr), %17 ], [ inttoptr (i32 67108972 to ptr), %16 ], [ inttoptr (i32 67108964 to ptr), %15 ]
  %21 = phi ptr [ inttoptr (i32 67108989 to ptr), %18 ], [ inttoptr (i32 67108981 to ptr), %17 ], [ inttoptr (i32 67108973 to ptr), %16 ], [ inttoptr (i32 67108965 to ptr), %15 ]
  %22 = phi ptr [ inttoptr (i32 67108985 to ptr), %18 ], [ inttoptr (i32 67108979 to ptr), %17 ], [ inttoptr (i32 67108969 to ptr), %16 ], [ inttoptr (i32 67108963 to ptr), %15 ]
  %23 = phi ptr [ inttoptr (i32 67108984 to ptr), %18 ], [ inttoptr (i32 67108978 to ptr), %17 ], [ inttoptr (i32 67108968 to ptr), %16 ], [ inttoptr (i32 67108962 to ptr), %15 ]
  %24 = phi ptr [ inttoptr (i32 67108977 to ptr), %18 ], [ inttoptr (i32 67108976 to ptr), %17 ], [ inttoptr (i32 67108961 to ptr), %16 ], [ inttoptr (i32 67108960 to ptr), %15 ]
  %25 = load i8, ptr %2, align 2
  %26 = zext i8 %25 to i32
  %27 = load volatile i8, ptr %22, align 1
  %28 = zext i8 %27 to i32
  %29 = zext i8 %12 to i32
  %30 = icmp sgt i8 %12, -1
  br i1 %30, label %103, label %31

31:                                               ; preds = %19
  %32 = and i32 %29, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %31
  store i8 3, ptr %11, align 4
  %35 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  store i8 3, ptr %35, align 1
  tail call arm_apcscc void @UpdateAudioPsgVolume(ptr noundef nonnull %11) #2
  switch i32 %10, label %74 [
    i32 1, label %36
    i32 2, label %39
    i32 3, label %48
  ]

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 21
  %38 = load i8, ptr %37, align 1
  store volatile i8 %38, ptr %24, align 1
  br label %39

39:                                               ; preds = %34, %36
  %40 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 23
  %41 = load ptr, ptr %40, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 20
  %44 = load i8, ptr %43, align 2
  %45 = trunc i32 %42 to i8
  %46 = shl i8 %45, 6
  %47 = add i8 %46, %44
  store volatile i8 %47, ptr %23, align 2
  br label %82

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 23
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %67, label %54

54:                                               ; preds = %48
  store volatile i8 64, ptr %24, align 1
  %55 = load ptr, ptr %49, align 4
  %56 = load i32, ptr %55, align 4
  store volatile i32 %56, ptr inttoptr (i32 67109008 to ptr), align 16
  %57 = load ptr, ptr %49, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  %59 = load i32, ptr %58, align 4
  store volatile i32 %59, ptr inttoptr (i32 67109012 to ptr), align 4
  %60 = load ptr, ptr %49, align 4
  %61 = getelementptr i32, ptr %60, i32 2
  %62 = load i32, ptr %61, align 4
  store volatile i32 %62, ptr inttoptr (i32 67109016 to ptr), align 8
  %63 = load ptr, ptr %49, align 4
  %64 = getelementptr i32, ptr %63, i32 3
  %65 = load i32, ptr %64, align 4
  store volatile i32 %65, ptr inttoptr (i32 67109020 to ptr), align 4
  %66 = load ptr, ptr %49, align 4
  store ptr %66, ptr %51, align 4
  br label %67

67:                                               ; preds = %54, %48
  store volatile i8 0, ptr %24, align 1
  %68 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 20
  %69 = load i8, ptr %68, align 2
  store volatile i8 %69, ptr %23, align 2
  %70 = icmp eq i8 %69, 0
  %71 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 16
  br i1 %70, label %73, label %72

72:                                               ; preds = %67
  store i8 -64, ptr %71, align 2
  br label %93

73:                                               ; preds = %67
  store i8 -128, ptr %71, align 2
  br label %93

74:                                               ; preds = %34
  %75 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 20
  %76 = load i8, ptr %75, align 2
  store volatile i8 %76, ptr %23, align 2
  %77 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 23
  %78 = load ptr, ptr %77, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = trunc i32 %79 to i8
  %81 = shl i8 %80, 3
  store volatile i8 %81, ptr %20, align 4
  br label %82

82:                                               ; preds = %74, %39
  %83 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 4
  %84 = load i8, ptr %83, align 4
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %85, 8
  %87 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 20
  %88 = load i8, ptr %87, align 2
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 16
  br i1 %89, label %92, label %91

91:                                               ; preds = %82
  store i8 64, ptr %90, align 2
  br label %93

92:                                               ; preds = %82
  store i8 0, ptr %90, align 2
  br label %93

93:                                               ; preds = %91, %92, %72, %73
  %94 = phi i32 [ %86, %91 ], [ %86, %92 ], [ %28, %72 ], [ %28, %73 ]
  %95 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 4
  %96 = load i8, ptr %95, align 4
  %97 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 11
  store i8 %96, ptr %97, align 1
  %98 = icmp eq i8 %96, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i8, ptr %11, align 4
  br label %219

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  store i8 0, ptr %102, align 1
  br label %241

103:                                              ; preds = %19
  %104 = and i32 %29, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 13
  %108 = load i8, ptr %107, align 1
  %109 = add i8 %108, -1
  store i8 %109, ptr %107, align 1
  %110 = icmp slt i8 %109, 1
  br i1 %110, label %111, label %248

111:                                              ; preds = %154, %106, %31
  %112 = trunc i32 %10 to i8
  tail call arm_apcscc void @StopAudioPsgOscillator(i8 noundef zeroext %112) #2
  store i8 0, ptr %11, align 4
  br label %338

113:                                              ; preds = %103
  %114 = icmp ult i8 %12, 64
  %115 = and i32 %29, 3
  %116 = icmp eq i32 %115, 0
  %117 = or i1 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 11
  %120 = load i8, ptr %119, align 1
  br label %134

121:                                              ; preds = %113
  %122 = and i8 %12, 120
  store i8 %122, ptr %11, align 4
  %123 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 7
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 11
  store i8 %124, ptr %125, align 1
  %126 = icmp eq i8 %124, 0
  br i1 %126, label %154, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  %129 = load i8, ptr %128, align 1
  %130 = or i8 %129, 1
  store i8 %130, ptr %128, align 1
  %131 = icmp eq i32 %10, 3
  %132 = zext i8 %124 to i32
  %133 = select i1 %131, i32 %28, i32 %132
  br label %241

134:                                              ; preds = %118, %241
  %135 = phi i8 [ %120, %118 ], [ %246, %241 ]
  %136 = phi i32 [ %28, %118 ], [ %243, %241 ]
  %137 = phi i32 [ %26, %118 ], [ -1, %241 ]
  %138 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 11
  %139 = icmp eq i8 %135, 0
  br i1 %139, label %140, label %241

140:                                              ; preds = %134
  %141 = icmp eq i32 %10, 3
  br i1 %141, label %142, label %146

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  %144 = load i8, ptr %143, align 1
  %145 = or i8 %144, 1
  store i8 %145, ptr %143, align 1
  br label %146

146:                                              ; preds = %142, %140
  tail call arm_apcscc void @UpdateAudioPsgVolume(ptr noundef nonnull %11) #2
  %147 = load i8, ptr %11, align 4
  %148 = and i8 %147, 3
  switch i8 %148, label %212 [
    i8 0, label %149
    i8 1, label %179
    i8 2, label %186
  ]

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  %151 = load i8, ptr %150, align 1
  %152 = add i8 %151, -1
  store i8 %152, ptr %150, align 1
  %153 = icmp slt i8 %152, 1
  br i1 %153, label %154, label %176

154:                                              ; preds = %149, %121, %200
  %155 = phi i8 [ %147, %149 ], [ %201, %200 ], [ %122, %121 ]
  %156 = phi i32 [ %136, %149 ], [ %195, %200 ], [ %28, %121 ]
  %157 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 10
  %158 = load i8, ptr %157, align 2
  %159 = zext i8 %158 to i32
  %160 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 12
  %161 = load i8, ptr %160, align 4
  %162 = zext i8 %161 to i32
  %163 = mul nuw nsw i32 %162, %159
  %164 = add nuw nsw i32 %163, 255
  %165 = lshr i32 %164, 8
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  store i8 %166, ptr %167, align 1
  %168 = icmp eq i8 %166, 0
  br i1 %168, label %111, label %169

169:                                              ; preds = %154
  %170 = or i8 %155, 4
  store i8 %170, ptr %11, align 4
  %171 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  %172 = load i8, ptr %171, align 1
  %173 = or i8 %172, 1
  store i8 %173, ptr %171, align 1
  %174 = icmp eq i32 %10, 3
  %175 = select i1 %174, i32 %156, i32 8
  br label %248

176:                                              ; preds = %149
  %177 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 7
  %178 = load i8, ptr %177, align 1
  store i8 %178, ptr %138, align 1
  br label %241

179:                                              ; preds = %202, %146
  %180 = phi i32 [ %136, %146 ], [ %208, %202 ]
  %181 = phi i32 [ %137, %146 ], [ %196, %202 ]
  %182 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 15
  %183 = load i8, ptr %182, align 1
  %184 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  store i8 %183, ptr %184, align 1
  %185 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 11
  store i8 7, ptr %185, align 1
  br label %241

186:                                              ; preds = %146
  %187 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  %188 = load i8, ptr %187, align 1
  %189 = add i8 %188, -1
  store i8 %189, ptr %187, align 1
  %190 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 15
  %191 = load i8, ptr %190, align 1
  %192 = icmp sgt i8 %189, %191
  br i1 %192, label %209, label %193

193:                                              ; preds = %219, %186
  %194 = phi i8 [ %147, %186 ], [ %223, %219 ]
  %195 = phi i32 [ %136, %186 ], [ %221, %219 ]
  %196 = phi i32 [ %137, %186 ], [ %222, %219 ]
  %197 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 6
  %198 = load i8, ptr %197, align 2
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = and i8 %194, -4
  store i8 %201, ptr %11, align 4
  br label %154

202:                                              ; preds = %193
  %203 = add i8 %194, -1
  store i8 %203, ptr %11, align 4
  %204 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  %205 = load i8, ptr %204, align 1
  %206 = or i8 %205, 1
  store i8 %206, ptr %204, align 1
  %207 = icmp eq i32 %10, 3
  %208 = select i1 %207, i32 %195, i32 8
  br label %179

209:                                              ; preds = %186
  %210 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 5
  %211 = load i8, ptr %210, align 1
  store i8 %211, ptr %138, align 1
  br label %241

212:                                              ; preds = %146
  %213 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  %214 = load i8, ptr %213, align 1
  %215 = add i8 %214, 1
  store i8 %215, ptr %213, align 1
  %216 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 10
  %217 = load i8, ptr %216, align 2
  %218 = icmp ult i8 %215, %217
  br i1 %218, label %238, label %219

219:                                              ; preds = %99, %212
  %220 = phi i8 [ %147, %212 ], [ %100, %99 ]
  %221 = phi i32 [ %136, %212 ], [ %94, %99 ]
  %222 = phi i32 [ %137, %212 ], [ %26, %99 ]
  %223 = add i8 %220, -1
  store i8 %223, ptr %11, align 4
  %224 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 5
  %225 = load i8, ptr %224, align 1
  %226 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 11
  store i8 %225, ptr %226, align 1
  %227 = icmp eq i8 %225, 0
  br i1 %227, label %193, label %228

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  %230 = load i8, ptr %229, align 1
  %231 = or i8 %230, 1
  store i8 %231, ptr %229, align 1
  %232 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 10
  %233 = load i8, ptr %232, align 2
  %234 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  store i8 %233, ptr %234, align 1
  %235 = icmp eq i32 %10, 3
  %236 = zext i8 %225 to i32
  %237 = select i1 %235, i32 %221, i32 %236
  br label %241

238:                                              ; preds = %212
  %239 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 4
  %240 = load i8, ptr %239, align 4
  store i8 %240, ptr %138, align 1
  br label %241

241:                                              ; preds = %228, %127, %176, %209, %238, %179, %134, %101
  %242 = phi i8 [ %96, %101 ], [ %135, %134 ], [ %178, %176 ], [ 7, %179 ], [ %211, %209 ], [ %240, %238 ], [ %124, %127 ], [ %225, %228 ]
  %243 = phi i32 [ %94, %101 ], [ %136, %134 ], [ %136, %176 ], [ %180, %179 ], [ %136, %209 ], [ %136, %238 ], [ %133, %127 ], [ %237, %228 ]
  %244 = phi i32 [ %26, %101 ], [ %137, %134 ], [ %137, %176 ], [ %181, %179 ], [ %137, %209 ], [ %137, %238 ], [ %26, %127 ], [ %222, %228 ]
  %245 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 11
  %246 = add i8 %242, -1
  store i8 %246, ptr %245, align 1
  %247 = icmp eq i32 %244, 0
  br i1 %247, label %134, label %248

248:                                              ; preds = %169, %241, %106
  %249 = phi i32 [ %243, %241 ], [ %28, %106 ], [ %175, %169 ]
  %250 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  %251 = load i8, ptr %250, align 1
  %252 = and i8 %251, 2
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %293, label %254

254:                                              ; preds = %248
  %255 = icmp eq i32 %10, 4
  br i1 %255, label %277, label %256

256:                                              ; preds = %254
  %257 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 1
  %258 = load i8, ptr %257, align 1
  %259 = and i8 %258, 8
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %273, label %261

261:                                              ; preds = %256
  %262 = load volatile i8, ptr inttoptr (i32 67109001 to ptr), align 1
  %263 = icmp ult i8 %262, 64
  br i1 %263, label %266, label %264

264:                                              ; preds = %261
  %265 = icmp sgt i8 %262, -1
  br i1 %265, label %266, label %273

266:                                              ; preds = %264, %261
  %267 = phi i32 [ 2, %261 ], [ 1, %264 ]
  %268 = phi i32 [ 2044, %261 ], [ 2046, %264 ]
  %269 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 22
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, %267
  %272 = and i32 %271, %268
  store i32 %272, ptr %269, align 4
  br label %273

273:                                              ; preds = %266, %256, %264
  %274 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 22
  %275 = load i32, ptr %274, align 4
  %276 = trunc i32 %275 to i8
  br label %284

277:                                              ; preds = %254
  %278 = load volatile i8, ptr %20, align 4
  %279 = and i8 %278, 8
  %280 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 22
  %281 = load i32, ptr %280, align 4
  %282 = trunc i32 %281 to i8
  %283 = or i8 %279, %282
  br label %284

284:                                              ; preds = %277, %273
  %285 = phi i8 [ %283, %277 ], [ %276, %273 ]
  store volatile i8 %285, ptr %20, align 4
  %286 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 16
  %287 = load i8, ptr %286, align 2
  %288 = and i8 %287, -64
  %289 = getelementptr i8, ptr %11, i32 33
  %290 = load i8, ptr %289, align 1
  %291 = add i8 %288, %290
  store i8 %291, ptr %286, align 2
  store volatile i8 %291, ptr %21, align 1
  %292 = load i8, ptr %250, align 1
  br label %293

293:                                              ; preds = %284, %248
  %294 = phi i8 [ %292, %284 ], [ %251, %248 ]
  %295 = and i8 %294, 1
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %338, label %297

297:                                              ; preds = %293
  %298 = load volatile i8, ptr inttoptr (i32 67108993 to ptr), align 1
  %299 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 18
  %300 = load i8, ptr %299, align 4
  %301 = xor i8 %300, -1
  %302 = and i8 %298, %301
  %303 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 17
  %304 = load i8, ptr %303, align 1
  %305 = or i8 %302, %304
  store volatile i8 %305, ptr inttoptr (i32 67108993 to ptr), align 1
  %306 = icmp eq i32 %10, 3
  br i1 %306, label %307, label %319

307:                                              ; preds = %297
  %308 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  %309 = load i8, ptr %308, align 1
  %310 = zext i8 %309 to i32
  %311 = getelementptr [0 x i8], ptr @gAudioPsgWaveVolumes9E10, i32 0, i32 %310
  %312 = load i8, ptr %311, align 1
  store volatile i8 %312, ptr %22, align 1
  %313 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 16
  %314 = load i8, ptr %313, align 2
  %315 = icmp sgt i8 %314, -1
  br i1 %315, label %338, label %316

316:                                              ; preds = %307
  store volatile i8 -128, ptr %24, align 1
  %317 = load i8, ptr %313, align 2
  store volatile i8 %317, ptr %21, align 1
  %318 = and i8 %317, 127
  store i8 %318, ptr %313, align 2
  br label %338

319:                                              ; preds = %297
  %320 = and i32 %249, 15
  %321 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 9
  %322 = load i8, ptr %321, align 1
  %323 = zext i8 %322 to i32
  %324 = shl nuw nsw i32 %323, 4
  %325 = or disjoint i32 %324, %320
  %326 = trunc i32 %325 to i8
  store volatile i8 %326, ptr %22, align 1
  %327 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 16
  %328 = load i8, ptr %327, align 2
  %329 = or i8 %328, -128
  store volatile i8 %329, ptr %21, align 1
  %330 = icmp eq i32 %10, 1
  br i1 %330, label %331, label %338

331:                                              ; preds = %319
  %332 = load volatile i8, ptr %24, align 1
  %333 = and i8 %332, 8
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %331
  %336 = load i8, ptr %327, align 2
  %337 = or i8 %336, -128
  store volatile i8 %337, ptr %21, align 1
  br label %338

338:                                              ; preds = %316, %307, %335, %331, %319, %293, %111
  %339 = getelementptr inbounds %struct.AudioPsgChannelStride, ptr %11, i32 0, i32 19
  store i8 0, ptr %339, align 1
  br label %340

340:                                              ; preds = %9, %338
  %341 = add nuw nsw i32 %10, 1
  %342 = getelementptr %struct.AudioPsgChannelStride, ptr %11, i32 1
  %343 = icmp eq i32 %341, 5
  br i1 %343, label %344, label %9

344:                                              ; preds = %340
  ret void
}

declare dso_local arm_apcscc void @UpdateAudioPsgVolume(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @StopAudioPsgOscillator(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
