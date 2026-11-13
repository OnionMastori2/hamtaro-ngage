; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMirrorPrimarySourceAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMirrorPrimaryFallbackAnimation = external dso_local constant [0 x i8], align 1
@gMirrorPrimaryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMirrorSecondarySourceAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMirrorSecondaryFallbackAnimation = external dso_local constant [0 x i8], align 1
@gMirrorSecondaryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackMirrorActorZAndAnimation(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store i32 1, ptr %2, align 4
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 52), align 2
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gRenderClassSlots0, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 35), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.RenderSlot, ptr %7, i32 %11
  %13 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %6, %14
  %16 = shl i32 %15, 1
  %17 = add i32 %16, -1048576
  %18 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 5
  store i32 %17, ptr %18, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr @gMirrorPrimarySourceAnimations, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %115, label %24

24:                                               ; preds = %3
  %25 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = icmp eq i32 %20, %26
  br i1 %27, label %115, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 2), align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = icmp eq i32 %20, %30
  br i1 %31, label %115, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 3), align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = icmp eq i32 %20, %34
  br i1 %35, label %115, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 4), align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = icmp eq i32 %20, %38
  br i1 %39, label %115, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 5), align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = icmp eq i32 %20, %42
  br i1 %43, label %115, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 6), align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = icmp eq i32 %20, %46
  br i1 %47, label %115, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 7), align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = icmp eq i32 %20, %50
  br i1 %51, label %115, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 8), align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = icmp eq i32 %20, %54
  br i1 %55, label %115, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 9), align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = icmp eq i32 %20, %58
  br i1 %59, label %115, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 10), align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = icmp eq i32 %20, %62
  br i1 %63, label %115, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 11), align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = icmp eq i32 %20, %66
  br i1 %67, label %115, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 12), align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = icmp eq i32 %20, %70
  br i1 %71, label %115, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 13), align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = icmp eq i32 %20, %74
  br i1 %75, label %115, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 14), align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = icmp eq i32 %20, %78
  br i1 %79, label %115, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 15), align 4
  %82 = ptrtoint ptr %81 to i32
  %83 = icmp eq i32 %20, %82
  br i1 %83, label %115, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 16), align 4
  %86 = ptrtoint ptr %85 to i32
  %87 = icmp eq i32 %20, %86
  br i1 %87, label %115, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 17), align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = icmp eq i32 %20, %90
  br i1 %91, label %115, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 18), align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = icmp eq i32 %20, %94
  br i1 %95, label %115, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 19), align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = icmp eq i32 %20, %98
  br i1 %99, label %115, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 20), align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = icmp eq i32 %20, %102
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 21), align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = icmp eq i32 %20, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 22), align 4
  %110 = ptrtoint ptr %109 to i32
  %111 = icmp eq i32 %20, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 1
  store i32 ptrtoint (ptr @gMirrorPrimaryFallbackAnimation to i32), ptr %113, align 4
  %114 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 23, i32 3
  store i8 0, ptr %114, align 1
  br label %128

115:                                              ; preds = %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %3
  %116 = phi i32 [ 0, %3 ], [ 1, %24 ], [ 2, %28 ], [ 3, %32 ], [ 4, %36 ], [ 5, %40 ], [ 6, %44 ], [ 7, %48 ], [ 8, %52 ], [ 9, %56 ], [ 10, %60 ], [ 11, %64 ], [ 12, %68 ], [ 13, %72 ], [ 14, %76 ], [ 15, %80 ], [ 16, %84 ], [ 17, %88 ], [ 18, %92 ], [ 19, %96 ], [ 20, %100 ], [ 21, %104 ], [ 22, %108 ]
  %117 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr [0 x ptr], ptr @gMirrorPrimaryAnimations, i32 0, i32 %116
  %120 = load ptr, ptr %119, align 4
  %121 = ptrtoint ptr %120 to i32
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %115
  store i32 %121, ptr %117, align 4
  %124 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 23, i32 3
  store i8 0, ptr %124, align 1
  %125 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 23, i32 3
  store i8 0, ptr %125, align 1
  %126 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 16
  %127 = load i16, ptr %126, align 4
  br label %128

128:                                              ; preds = %112, %123
  %129 = phi i16 [ %127, %123 ], [ 0, %112 ]
  %130 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 16
  store i16 %129, ptr %130, align 4
  br label %131

131:                                              ; preds = %128, %115
  %132 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %236, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @gRenderSlots, align 4
  %136 = load i8, ptr @gRenderClassSlots1, align 1
  %137 = zext i8 %136 to i32
  %138 = getelementptr %struct.RenderSlot, ptr %135, i32 %137, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = sub i32 %6, %139
  %141 = shl i32 %140, 1
  %142 = add i32 %141, -1048576
  %143 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 5
  store i32 %142, ptr %143, align 4
  %144 = getelementptr %struct.RenderSlot, ptr %135, i32 %137, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = load ptr, ptr @gMirrorSecondarySourceAnimations, align 4
  %147 = ptrtoint ptr %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %220, label %149

149:                                              ; preds = %134
  %150 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 1), align 4
  %151 = ptrtoint ptr %150 to i32
  %152 = icmp eq i32 %145, %151
  br i1 %152, label %220, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 2), align 4
  %155 = ptrtoint ptr %154 to i32
  %156 = icmp eq i32 %145, %155
  br i1 %156, label %220, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 3), align 4
  %159 = ptrtoint ptr %158 to i32
  %160 = icmp eq i32 %145, %159
  br i1 %160, label %220, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 4), align 4
  %163 = ptrtoint ptr %162 to i32
  %164 = icmp eq i32 %145, %163
  br i1 %164, label %220, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 5), align 4
  %167 = ptrtoint ptr %166 to i32
  %168 = icmp eq i32 %145, %167
  br i1 %168, label %220, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 6), align 4
  %171 = ptrtoint ptr %170 to i32
  %172 = icmp eq i32 %145, %171
  br i1 %172, label %220, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 7), align 4
  %175 = ptrtoint ptr %174 to i32
  %176 = icmp eq i32 %145, %175
  br i1 %176, label %220, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 8), align 4
  %179 = ptrtoint ptr %178 to i32
  %180 = icmp eq i32 %145, %179
  br i1 %180, label %220, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 9), align 4
  %183 = ptrtoint ptr %182 to i32
  %184 = icmp eq i32 %145, %183
  br i1 %184, label %220, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 10), align 4
  %187 = ptrtoint ptr %186 to i32
  %188 = icmp eq i32 %145, %187
  br i1 %188, label %220, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 11), align 4
  %191 = ptrtoint ptr %190 to i32
  %192 = icmp eq i32 %145, %191
  br i1 %192, label %220, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 12), align 4
  %195 = ptrtoint ptr %194 to i32
  %196 = icmp eq i32 %145, %195
  br i1 %196, label %220, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 13), align 4
  %199 = ptrtoint ptr %198 to i32
  %200 = icmp eq i32 %145, %199
  br i1 %200, label %220, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 14), align 4
  %203 = ptrtoint ptr %202 to i32
  %204 = icmp eq i32 %145, %203
  br i1 %204, label %220, label %205

205:                                              ; preds = %201
  %206 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 15), align 4
  %207 = ptrtoint ptr %206 to i32
  %208 = icmp eq i32 %145, %207
  br i1 %208, label %220, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 16), align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = icmp eq i32 %145, %211
  br i1 %212, label %220, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 17), align 4
  %215 = ptrtoint ptr %214 to i32
  %216 = icmp eq i32 %145, %215
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 1
  store i32 ptrtoint (ptr @gMirrorSecondaryFallbackAnimation to i32), ptr %218, align 4
  %219 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 23, i32 3
  store i8 0, ptr %219, align 1
  br label %233

220:                                              ; preds = %213, %209, %205, %201, %197, %193, %189, %185, %181, %177, %173, %169, %165, %161, %157, %153, %149, %134
  %221 = phi i32 [ 0, %134 ], [ 1, %149 ], [ 2, %153 ], [ 3, %157 ], [ 4, %161 ], [ 5, %165 ], [ 6, %169 ], [ 7, %173 ], [ 8, %177 ], [ 9, %181 ], [ 10, %185 ], [ 11, %189 ], [ 12, %193 ], [ 13, %197 ], [ 14, %201 ], [ 15, %205 ], [ 16, %209 ], [ 17, %213 ]
  %222 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 1
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr [0 x ptr], ptr @gMirrorSecondaryAnimations, i32 0, i32 %221
  %225 = load ptr, ptr %224, align 4
  %226 = ptrtoint ptr %225 to i32
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %236, label %228

228:                                              ; preds = %220
  store i32 %226, ptr %222, align 4
  %229 = getelementptr %struct.RenderSlot, ptr %135, i32 %137, i32 23, i32 3
  store i8 0, ptr %229, align 1
  %230 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 23, i32 3
  store i8 0, ptr %230, align 1
  %231 = getelementptr %struct.RenderSlot, ptr %135, i32 %137, i32 16
  %232 = load i16, ptr %231, align 4
  br label %233

233:                                              ; preds = %228, %217
  %234 = phi i16 [ 0, %217 ], [ %232, %228 ]
  %235 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 16
  store i16 %234, ptr %235, align 4
  br label %236

236:                                              ; preds = %233, %220, %131
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
