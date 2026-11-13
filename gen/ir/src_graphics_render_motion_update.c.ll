; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderMotionContext = type { i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderMotionContexts10E0 = external dso_local global [0 x %struct.RenderMotionContext], align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderMotionStopFlags431C = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRenderMotionIdleAnimations0618 = external dso_local local_unnamed_addr global [0 x [4 x ptr]], align 4
@gRenderMotionMovingAnimations05D8 = external dso_local local_unnamed_addr global [0 x [4 x ptr]], align 4
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateRenderMotion(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  %5 = call arm_apcscc ptr @memset(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 4) #4
  %6 = load i8, ptr %1, align 1
  %7 = load i8, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 11), align 2
  %8 = icmp eq i8 %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRenderMotionContexts10E0 to i32), i32 36) to ptr), i32 30), align 2
  %11 = icmp eq i8 %10, %6
  br i1 %11, label %12, label %232

12:                                               ; preds = %3, %9
  %13 = phi i32 [ 0, %3 ], [ 1, %9 ]
  %14 = phi ptr [ @gRenderMotionContexts10E0, %3 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gRenderMotionContexts10E0 to i32), i32 36) to ptr), %9 ]
  %15 = load ptr, ptr @gRenderSlots, align 4
  %16 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 11
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = getelementptr %struct.RenderSlot, ptr %15, i32 %18
  %20 = getelementptr [0 x i16], ptr @gRenderMotionStopFlags431C, i32 0, i32 %13
  %21 = load i16, ptr %20, align 2
  %22 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %21) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %12
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext %21, i32 noundef 0) #4
  %25 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 13
  %26 = call i32 asm "", "={r0},{r0}"(i32 0) #5, !srcloc !4
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %25, align 1
  %28 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 5
  store i32 %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  store i8 %27, ptr %29, align 4
  %30 = getelementptr %struct.RenderSlot, ptr %15, i32 %18, i32 6
  %31 = getelementptr %struct.RenderSlot, ptr %15, i32 %18, i32 6, i32 2
  store i32 %26, ptr %31, align 4
  store i32 %26, ptr %30, align 4
  %32 = load i8, ptr %16, align 2
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 12
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.RenderSlot, ptr %15, i32 %18, i32 23
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, -1
  %41 = getelementptr [0 x [4 x ptr]], ptr @gRenderMotionIdleAnimations0618, i32 0, i32 %36, i32 %40
  %42 = load ptr, ptr %41, align 4
  call arm_apcscc void @SetRenderAnimation(i32 noundef %33, ptr noundef %42) #4
  br label %231

43:                                               ; preds = %12
  %44 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 13
  %45 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 6
  %46 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 5
  %47 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 4
  %48 = getelementptr %struct.RenderSlot, ptr %15, i32 %18, i32 23
  %49 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 10
  %50 = load i8, ptr %44, align 1
  br label %51

51:                                               ; preds = %230, %43
  %52 = phi i8 [ 0, %230 ], [ %50, %43 ]
  br label %53

53:                                               ; preds = %51, %53
  switch i8 %52, label %53 [
    i8 0, label %54
    i8 1, label %182
    i8 2, label %226
  ]

54:                                               ; preds = %53
  %55 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 4) #4
  %56 = trunc i16 %55 to i8
  %57 = and i16 %55, 255
  %58 = zext nneg i16 %57 to i32
  %59 = getelementptr [4 x i8], ptr %4, i32 0, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %148, label %139

62:                                               ; preds = %148
  %63 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 4) #4
  %64 = trunc i16 %63 to i8
  %65 = and i16 %63, 255
  %66 = zext nneg i16 %65 to i32
  %67 = getelementptr [4 x i8], ptr %4, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %62, %70
  %71 = phi i8 [ %74, %70 ], [ %64, %62 ]
  %72 = add i8 %71, 1
  %73 = icmp ugt i8 %72, 3
  %74 = select i1 %73, i8 0, i8 %72
  %75 = zext i8 %74 to i32
  %76 = getelementptr [4 x i8], ptr %4, i32 0, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %70

79:                                               ; preds = %70, %62
  %80 = phi i32 [ %66, %62 ], [ %75, %70 ]
  %81 = phi i8 [ %64, %62 ], [ %74, %70 ]
  %82 = getelementptr [4 x i8], ptr %4, i32 0, i32 %80
  store i8 -1, ptr %82, align 1
  %83 = load i32, ptr %47, align 4
  call arm_apcscc void @SetRenderMotionVelocity(ptr noundef %19, i32 noundef %83, i8 noundef zeroext %81) #4
  %84 = trunc i32 %80 to i8
  %85 = add i8 %84, 1
  store i8 %85, ptr %48, align 1
  %86 = call arm_apcscc i32 @CheckRenderMotionBounds(ptr noundef %14, ptr noundef %19, i8 noundef zeroext %81) #4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %157, label %88

88:                                               ; preds = %79
  %89 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 4) #4
  %90 = trunc i16 %89 to i8
  %91 = and i16 %89, 255
  %92 = zext nneg i16 %91 to i32
  %93 = getelementptr [4 x i8], ptr %4, i32 0, i32 %92
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %88, %96
  %97 = phi i8 [ %100, %96 ], [ %90, %88 ]
  %98 = add i8 %97, 1
  %99 = icmp ugt i8 %98, 3
  %100 = select i1 %99, i8 0, i8 %98
  %101 = zext i8 %100 to i32
  %102 = getelementptr [4 x i8], ptr %4, i32 0, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %96

105:                                              ; preds = %96, %88
  %106 = phi i32 [ %92, %88 ], [ %101, %96 ]
  %107 = phi i8 [ %90, %88 ], [ %100, %96 ]
  %108 = getelementptr [4 x i8], ptr %4, i32 0, i32 %106
  store i8 -1, ptr %108, align 1
  %109 = load i32, ptr %47, align 4
  call arm_apcscc void @SetRenderMotionVelocity(ptr noundef %19, i32 noundef %109, i8 noundef zeroext %107) #4
  %110 = trunc i32 %106 to i8
  %111 = add i8 %110, 1
  store i8 %111, ptr %48, align 1
  %112 = call arm_apcscc i32 @CheckRenderMotionBounds(ptr noundef %14, ptr noundef %19, i8 noundef zeroext %107) #4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %157, label %114

114:                                              ; preds = %105
  %115 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 4) #4
  %116 = trunc i16 %115 to i8
  %117 = and i16 %115, 255
  %118 = zext nneg i16 %117 to i32
  %119 = getelementptr [4 x i8], ptr %4, i32 0, i32 %118
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %114, %122
  %123 = phi i8 [ %126, %122 ], [ %116, %114 ]
  %124 = add i8 %123, 1
  %125 = icmp ugt i8 %124, 3
  %126 = select i1 %125, i8 0, i8 %124
  %127 = zext i8 %126 to i32
  %128 = getelementptr [4 x i8], ptr %4, i32 0, i32 %127
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %122

131:                                              ; preds = %122, %114
  %132 = phi i32 [ %118, %114 ], [ %127, %122 ]
  %133 = phi i8 [ %116, %114 ], [ %126, %122 ]
  %134 = getelementptr [4 x i8], ptr %4, i32 0, i32 %132
  store i8 -1, ptr %134, align 1
  %135 = load i32, ptr %47, align 4
  call arm_apcscc void @SetRenderMotionVelocity(ptr noundef %19, i32 noundef %135, i8 noundef zeroext %133) #4
  %136 = trunc i32 %132 to i8
  %137 = add i8 %136, 1
  store i8 %137, ptr %48, align 1
  %138 = call arm_apcscc i32 @CheckRenderMotionBounds(ptr noundef %14, ptr noundef %19, i8 noundef zeroext %133) #4
  br label %157

139:                                              ; preds = %54, %139
  %140 = phi i8 [ %143, %139 ], [ %56, %54 ]
  %141 = add i8 %140, 1
  %142 = icmp ugt i8 %141, 3
  %143 = select i1 %142, i8 0, i8 %141
  %144 = zext i8 %143 to i32
  %145 = getelementptr [4 x i8], ptr %4, i32 0, i32 %144
  %146 = load i8, ptr %145, align 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %139

148:                                              ; preds = %139, %54
  %149 = phi i32 [ %58, %54 ], [ %144, %139 ]
  %150 = phi i8 [ %56, %54 ], [ %143, %139 ]
  %151 = getelementptr [4 x i8], ptr %4, i32 0, i32 %149
  store i8 -1, ptr %151, align 1
  %152 = load i32, ptr %47, align 4
  call arm_apcscc void @SetRenderMotionVelocity(ptr noundef %19, i32 noundef %152, i8 noundef zeroext %150) #4
  %153 = trunc i32 %149 to i8
  %154 = add i8 %153, 1
  store i8 %154, ptr %48, align 1
  %155 = call arm_apcscc i32 @CheckRenderMotionBounds(ptr noundef %14, ptr noundef %19, i8 noundef zeroext %150) #4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %62

157:                                              ; preds = %131, %105, %79, %148
  %158 = phi i8 [ %111, %105 ], [ %85, %79 ], [ %154, %148 ], [ %137, %131 ]
  %159 = phi i8 [ %107, %105 ], [ %81, %79 ], [ %150, %148 ], [ %133, %131 ]
  %160 = load i8, ptr %16, align 2
  %161 = zext i8 %160 to i32
  %162 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 12
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = zext i8 %159 to i32
  %166 = getelementptr [0 x [4 x ptr]], ptr @gRenderMotionMovingAnimations05D8, i32 0, i32 %164, i32 %165
  %167 = load ptr, ptr %166, align 4
  call arm_apcscc void @SetRenderAnimation(i32 noundef %161, ptr noundef %167) #4
  store i8 %158, ptr %48, align 1
  %168 = load i32, ptr %46, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 7
  %172 = load i8, ptr %171, align 2
  %173 = zext i8 %172 to i16
  %174 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 8
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i16
  %177 = add nuw nsw i16 %176, 1
  %178 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext %173, i16 noundef zeroext %177) #4
  %179 = zext i16 %178 to i32
  %180 = shl i32 %179, 19
  store i32 %180, ptr %46, align 4
  br label %181

181:                                              ; preds = %170, %157
  store i8 1, ptr %44, align 1
  br label %231

182:                                              ; preds = %53
  %183 = load i32, ptr %46, align 4
  %184 = load i32, ptr %47, align 4
  %185 = sub i32 %183, %184
  store i32 %185, ptr %46, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %210

187:                                              ; preds = %182
  store i32 0, ptr %46, align 4
  %188 = load i8, ptr %49, align 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %230, label %190

190:                                              ; preds = %187
  %191 = getelementptr %struct.RenderSlot, ptr %15, i32 %18, i32 6
  %192 = getelementptr %struct.RenderSlot, ptr %15, i32 %18, i32 6, i32 2
  store i32 0, ptr %192, align 4
  store i32 0, ptr %191, align 4
  %193 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 9
  %194 = load i8, ptr %193, align 4
  %195 = zext i8 %194 to i16
  %196 = load i8, ptr %49, align 1
  %197 = zext i8 %196 to i16
  %198 = add nuw nsw i16 %197, 1
  %199 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext %195, i16 noundef zeroext %198) #4
  store i16 %199, ptr %45, align 4
  %200 = load i8, ptr %16, align 2
  %201 = zext i8 %200 to i32
  %202 = getelementptr inbounds %struct.RenderMotionContext, ptr %14, i32 0, i32 12
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, ptr %48, align 4
  %206 = zext i8 %205 to i32
  %207 = add nsw i32 %206, -1
  %208 = getelementptr [0 x [4 x ptr]], ptr @gRenderMotionIdleAnimations0618, i32 0, i32 %204, i32 %207
  %209 = load ptr, ptr %208, align 4
  call arm_apcscc void @SetRenderAnimation(i32 noundef %201, ptr noundef %209) #4
  store i8 2, ptr %44, align 1
  br label %231

210:                                              ; preds = %182
  %211 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %212 = and i8 %211, 8
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load i8, ptr %48, align 4
  %216 = and i8 %215, 15
  %217 = add nsw i8 %216, -1
  br label %218

218:                                              ; preds = %210, %214
  %219 = phi i8 [ %217, %214 ], [ -1, %210 ]
  %220 = call arm_apcscc i32 @CheckRenderMotionBounds(ptr noundef nonnull %14, ptr noundef %19, i8 noundef zeroext %219) #4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %218
  %223 = load i32, ptr %46, align 4
  %224 = icmp slt i32 %223, 16
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  store i32 16, ptr %46, align 4
  br label %230

226:                                              ; preds = %53
  %227 = load i16, ptr %45, align 4
  %228 = add i16 %227, -1
  store i16 %228, ptr %45, align 4
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226, %222, %225, %187
  store i8 0, ptr %44, align 1
  br label %51

231:                                              ; preds = %226, %218, %181, %190, %24
  store i32 1, ptr %2, align 4
  br label %232

232:                                              ; preds = %9, %231
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderMotionVelocity(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @CheckRenderMotionBounds(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

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
!4 = !{i64 1723}
