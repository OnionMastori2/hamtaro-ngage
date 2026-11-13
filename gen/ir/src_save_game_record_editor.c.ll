; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%union.EditorRecord = type { %struct.anon }
%struct.anon = type { i32 }
%struct.EditorFlagByte = type { i8 }

@gScriptCallbackHalf3AF8 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3CD0 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3E38 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3564 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3670 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackRecordSnapshot3CCC = external dso_local local_unnamed_addr global %union.EditorRecord, align 2
@gSaveGroup2Block1CB20 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetGameRecordSelection12958(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  store i16 0, ptr @gScriptCallbackHalf3E38, align 2
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackGameRecordNoop12994(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEditGameRecord12998(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1009, i8 noundef zeroext 2) #6
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %230, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %6 = zext i16 %5 to i32
  %7 = shl nuw nsw i32 %6, 1
  %8 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %9 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %10 = icmp ugt i16 %9, 2
  %11 = zext i16 %8 to i32
  %12 = add nuw nsw i32 %11, 2
  %13 = add nuw nsw i32 %12, %7
  %14 = trunc i32 %13 to i16
  %15 = trunc i32 %7 to i16
  %16 = add i16 %8, %15
  %17 = select i1 %10, i16 %14, i16 %16
  %18 = load i16, ptr @gScriptCallbackHalf3AF8, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %4
  %21 = zext i16 %2 to i32
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = icmp eq i16 %9, 0
  %26 = icmp ne i16 %5, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = add i16 %5, -1
  store i16 %29, ptr @gScriptCallbackHalf3670, align 2
  store i16 2, ptr @gScriptCallbackHalf3E38, align 2
  br label %230

30:                                               ; preds = %24
  %31 = tail call i16 @llvm.usub.sat.i16(i16 %9, i16 1)
  store i16 %31, ptr @gScriptCallbackHalf3E38, align 2
  br label %230

32:                                               ; preds = %20
  %33 = and i32 %21, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = icmp eq i16 %9, 5
  %37 = icmp ult i16 %5, 15
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = add nuw nsw i16 %5, 1
  store i16 %40, ptr @gScriptCallbackHalf3670, align 2
  store i16 3, ptr @gScriptCallbackHalf3E38, align 2
  br label %230

41:                                               ; preds = %35
  %42 = icmp ult i16 %9, 5
  %43 = zext i1 %42 to i16
  %44 = add nuw nsw i16 %9, %43
  store i16 %44, ptr @gScriptCallbackHalf3E38, align 2
  br label %230

45:                                               ; preds = %32
  %46 = and i32 %21, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  br label %230

49:                                               ; preds = %45
  %50 = and i32 %21, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i16 1, ptr @gScriptCallbackHalf3564, align 2
  br label %230

53:                                               ; preds = %49
  %54 = and i32 %21, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = add i16 %5, -1
  store i16 %57, ptr @gScriptCallbackHalf3670, align 2
  br label %230

58:                                               ; preds = %53
  %59 = and i32 %21, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = add i16 %5, 1
  store i16 %62, ptr @gScriptCallbackHalf3670, align 2
  br label %230

63:                                               ; preds = %58
  %64 = and i32 %21, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %230, label %66

66:                                               ; preds = %63
  %67 = zext i16 %17 to i32
  %68 = shl nuw nsw i32 %67, 2
  %69 = getelementptr i8, ptr @gSaveGroup2Block1CB20, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = load i32, ptr @gScriptCallbackRecordSnapshot3CCC, align 2
  %72 = and i8 %70, 127
  %73 = zext nneg i8 %72 to i32
  %74 = and i32 %71, -128
  %75 = or disjoint i32 %74, %73
  store i32 %75, ptr @gScriptCallbackRecordSnapshot3CCC, align 2
  %76 = load i16, ptr %69, align 2
  %77 = and i16 %76, 3968
  %78 = zext nneg i16 %77 to i32
  %79 = and i32 %75, -8065
  %80 = or disjoint i32 %79, %78
  %81 = and i16 %76, 4096
  %82 = zext nneg i16 %81 to i32
  %83 = or disjoint i32 %80, %82
  store i32 %83, ptr @gScriptCallbackRecordSnapshot3CCC, align 2
  store i16 1, ptr @gScriptCallbackHalf3AF8, align 2
  br label %230

84:                                               ; preds = %4
  %85 = zext i16 %17 to i32
  %86 = getelementptr %union.EditorRecord, ptr @gSaveGroup2Block1CB20, i32 %85
  %87 = zext i16 %9 to i32
  %88 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %87, i32 noundef 3) #6
  %89 = zext i16 %2 to i32
  %90 = and i32 %89, 64
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %84
  %93 = trunc i32 %88 to i8
  switch i8 %93, label %230 [
    i8 0, label %94
    i8 1, label %174
    i8 2, label %102
  ]

94:                                               ; preds = %92
  %95 = load i32, ptr %86, align 2
  %96 = and i32 %95, 127
  tail call void asm sideeffect "", "{r0}"(i32 %96) #7, !srcloc !4
  %97 = add i32 %95, 1
  %98 = load i32, ptr %86, align 2
  %99 = and i32 %97, 127
  %100 = and i32 %98, -128
  %101 = or disjoint i32 %100, %99
  store i32 %101, ptr %86, align 2
  br label %230

102:                                              ; preds = %92
  %103 = load i32, ptr %86, align 2
  %104 = or i32 %103, 4096
  store i32 %104, ptr %86, align 2
  br label %230

105:                                              ; preds = %84
  %106 = and i32 %89, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %131, label %108

108:                                              ; preds = %105
  %109 = trunc i32 %88 to i8
  switch i8 %109, label %230 [
    i8 0, label %110
    i8 1, label %119
    i8 2, label %128
  ]

110:                                              ; preds = %108
  %111 = load i32, ptr %86, align 2
  %112 = and i32 %111, 127
  %113 = icmp eq i32 %112, 0
  %114 = add i32 %111, 127
  %115 = select i1 %113, i32 %111, i32 %114
  %116 = and i32 %115, 127
  %117 = and i32 %111, -128
  %118 = or disjoint i32 %116, %117
  store i32 %118, ptr %86, align 2
  br label %230

119:                                              ; preds = %108
  %120 = load i32, ptr %86, align 2
  %121 = and i32 %120, 3968
  %122 = icmp eq i32 %121, 0
  %123 = add i32 %120, 3968
  %124 = select i1 %122, i32 %120, i32 %123
  %125 = and i32 %124, 3968
  %126 = and i32 %120, -3969
  %127 = or disjoint i32 %125, %126
  store i32 %127, ptr %86, align 2
  br label %230

128:                                              ; preds = %108
  %129 = load i32, ptr %86, align 2
  %130 = and i32 %129, -4097
  store i32 %130, ptr %86, align 2
  br label %230

131:                                              ; preds = %105
  %132 = and i32 %89, 32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %163, label %134

134:                                              ; preds = %131
  %135 = trunc i32 %88 to i8
  switch i8 %135, label %230 [
    i8 0, label %136
    i8 1, label %151
    i8 2, label %160
  ]

136:                                              ; preds = %134
  %137 = load i32, ptr %86, align 4
  %138 = and i32 %137, 127
  %139 = icmp ugt i32 %138, 10
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = shl i32 %137, 25
  tail call void asm sideeffect "", "{r1}"(i32 %141) #7, !srcloc !5
  %142 = add i32 %137, 118
  %143 = load i32, ptr %86, align 2
  %144 = and i32 %142, 127
  %145 = and i32 %143, -128
  %146 = or disjoint i32 %145, %144
  br label %149

147:                                              ; preds = %136
  %148 = and i32 %137, -128
  br label %149

149:                                              ; preds = %147, %140
  %150 = phi i32 [ %148, %147 ], [ %146, %140 ]
  store i32 %150, ptr %86, align 2
  br label %230

151:                                              ; preds = %134
  %152 = load i32, ptr %86, align 2
  %153 = and i32 %152, 3968
  %154 = icmp eq i32 %153, 0
  %155 = add i32 %152, 3968
  %156 = select i1 %154, i32 %152, i32 %155
  %157 = and i32 %156, 3968
  %158 = and i32 %152, -3969
  %159 = or disjoint i32 %157, %158
  store i32 %159, ptr %86, align 2
  br label %230

160:                                              ; preds = %134
  %161 = load i32, ptr %86, align 2
  %162 = and i32 %161, -4097
  store i32 %162, ptr %86, align 2
  br label %230

163:                                              ; preds = %131
  %164 = and i32 %89, 16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %189, label %166

166:                                              ; preds = %163
  %167 = trunc i32 %88 to i8
  switch i8 %167, label %230 [
    i8 0, label %168
    i8 1, label %174
    i8 2, label %186
  ]

168:                                              ; preds = %166
  %169 = load i32, ptr %86, align 4
  %170 = add i32 %169, 10
  %171 = and i32 %170, 127
  %172 = and i32 %169, -128
  %173 = or disjoint i32 %171, %172
  store i32 %173, ptr %86, align 2
  br label %230

174:                                              ; preds = %166, %92
  %175 = load i32, ptr %86, align 2
  %176 = lshr i32 %175, 7
  %177 = and i32 %176, 31
  tail call void asm sideeffect "", "{r0}"(i32 %177) #7, !srcloc !6
  %178 = icmp ult i32 %177, 7
  %179 = add nuw nsw i32 %176, 1
  %180 = and i32 %179, 31
  %181 = select i1 %178, i32 %180, i32 %177
  %182 = load i32, ptr %86, align 2
  %183 = shl nuw nsw i32 %181, 7
  %184 = and i32 %182, -3969
  %185 = or disjoint i32 %183, %184
  store i32 %185, ptr %86, align 2
  br label %230

186:                                              ; preds = %166
  %187 = load i32, ptr %86, align 2
  %188 = or i32 %187, 4096
  store i32 %188, ptr %86, align 2
  br label %230

189:                                              ; preds = %163
  %190 = and i32 %89, 512
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %189
  %193 = trunc i32 %88 to i8
  switch i8 %193, label %230 [
    i8 0, label %194
    i8 1, label %197
    i8 2, label %200
  ]

194:                                              ; preds = %192
  %195 = load i32, ptr %86, align 2
  %196 = and i32 %195, -128
  store i32 %196, ptr %86, align 2
  br label %230

197:                                              ; preds = %192
  %198 = load i32, ptr %86, align 2
  %199 = and i32 %198, -3969
  store i32 %199, ptr %86, align 2
  br label %230

200:                                              ; preds = %192
  %201 = load i32, ptr %86, align 2
  %202 = and i32 %201, -4097
  store i32 %202, ptr %86, align 2
  br label %230

203:                                              ; preds = %189
  %204 = and i32 %89, 256
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %203
  %207 = trunc i32 %88 to i8
  switch i8 %207, label %230 [
    i8 0, label %208
    i8 1, label %211
    i8 2, label %215
  ]

208:                                              ; preds = %206
  %209 = load i32, ptr %86, align 2
  %210 = or i32 %209, 127
  store i32 %210, ptr %86, align 2
  br label %230

211:                                              ; preds = %206
  %212 = load i32, ptr %86, align 2
  %213 = and i32 %212, -3969
  %214 = or disjoint i32 %213, 896
  store i32 %214, ptr %86, align 2
  br label %230

215:                                              ; preds = %206
  %216 = load i32, ptr %86, align 2
  %217 = or i32 %216, 4096
  store i32 %217, ptr %86, align 2
  br label %230

218:                                              ; preds = %203
  %219 = and i32 %89, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %218
  %222 = getelementptr %struct.EditorFlagByte, ptr %86, i32 1
  %223 = load i8, ptr %222, align 1
  %224 = and i8 %223, 16
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %221
  %227 = load i32, ptr %86, align 2
  %228 = and i32 %227, -3969
  store i32 %228, ptr %86, align 2
  br label %229

229:                                              ; preds = %226, %221
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  br label %230

230:                                              ; preds = %41, %39, %52, %61, %66, %63, %56, %48, %28, %30, %108, %128, %119, %110, %166, %186, %174, %168, %206, %215, %211, %208, %229, %218, %194, %197, %200, %192, %149, %151, %160, %134, %94, %102, %92, %1
  %231 = phi i32 [ 0, %1 ], [ 5, %92 ], [ 5, %102 ], [ 5, %94 ], [ 5, %134 ], [ 5, %160 ], [ 5, %151 ], [ 5, %149 ], [ 5, %192 ], [ 5, %200 ], [ 5, %197 ], [ 5, %194 ], [ 5, %218 ], [ 5, %229 ], [ 5, %208 ], [ 5, %211 ], [ 5, %215 ], [ 5, %206 ], [ 5, %168 ], [ 5, %174 ], [ 5, %186 ], [ 5, %166 ], [ 5, %110 ], [ 5, %119 ], [ 5, %128 ], [ 5, %108 ], [ 5, %30 ], [ 5, %28 ], [ 5, %48 ], [ 5, %56 ], [ 5, %63 ], [ 5, %66 ], [ 5, %61 ], [ 5, %52 ], [ 5, %39 ], [ 5, %41 ]
  ret i32 %231
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreGameRecord12CEC(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 1
  %5 = load i16, ptr @gScriptCallbackHalf3564, align 2
  %6 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %7 = icmp ugt i16 %6, 2
  %8 = zext i16 %5 to i32
  %9 = add nuw nsw i32 %8, 2
  %10 = add nuw nsw i32 %9, %4
  %11 = trunc i32 %10 to i16
  %12 = trunc i32 %4 to i16
  %13 = add i16 %5, %12
  %14 = select i1 %7, i16 %11, i16 %13
  %15 = zext i16 %14 to i32
  %16 = shl nuw nsw i32 %15, 2
  %17 = getelementptr i8, ptr @gSaveGroup2Block1CB20, i32 %16
  %18 = load i32, ptr @gScriptCallbackRecordSnapshot3CCC, align 2
  %19 = load i32, ptr %17, align 2
  %20 = and i32 %19, -8192
  %21 = and i32 %18, 8191
  %22 = or disjoint i32 %20, %21
  store i32 %22, ptr %17, align 2
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3879}
!5 = !{i64 5123}
!6 = !{i64 6305}
