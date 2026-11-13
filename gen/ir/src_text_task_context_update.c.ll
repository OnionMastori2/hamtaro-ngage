; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskQueryKeysHalfFB0 = external dso_local local_unnamed_addr global i16, align 2
@gTaskContextHead = external dso_local local_unnamed_addr global ptr, align 4
@gTaskContextSentinel = external dso_local global %struct.TaskContext, align 4
@gTaskGate644 = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextAdvanceWidths = external dso_local constant [0 x i8], align 1
@gTaskGlyphBlocks = external dso_local constant [0 x i8], align 1
@gTaskGraphicsByte645 = external dso_local local_unnamed_addr global i8, align 1
@gTaskLowCommandHandlers = external dso_local constant [16 x ptr], align 4
@gTaskHighCommandHandlers = external dso_local constant [16 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateTaskContexts() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %3 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 3, i8 noundef zeroext 1) #5
  store i16 %3, ptr @gTaskQueryKeysHalfFB0, align 2
  %4 = load ptr, ptr @gTaskContextHead, align 4
  %5 = icmp eq ptr %4, @gTaskContextSentinel
  br i1 %5, label %233, label %6

6:                                                ; preds = %0, %229
  %7 = phi ptr [ %231, %229 ], [ %4, %0 ]
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 127
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %229, label %11

11:                                               ; preds = %6
  switch i8 %9, label %37 [
    i8 2, label %12
    i8 4, label %21
  ]

12:                                               ; preds = %11
  %13 = load i8, ptr @gTaskGate644, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %229

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 6
  %17 = load i8, ptr %16, align 2
  %18 = add i8 %17, -1
  store i8 %18, ptr %16, align 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %229

20:                                               ; preds = %15
  call arm_apcscc void @CompleteTaskTextMapScroll(ptr noundef nonnull %7) #5
  call arm_apcscc void @StepTaskRenderSlotsUp(ptr noundef nonnull %7) #5
  br label %229

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 11
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 2, i8 noundef zeroext 0) #5
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 6
  %31 = load i8, ptr %30, align 2
  %32 = add i8 %31, -1
  store i8 %32, ptr %30, align 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %229

34:                                               ; preds = %29
  store i8 3, ptr %7, align 4
  br label %229

35:                                               ; preds = %26
  store i8 -125, ptr %7, align 4
  %36 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 6
  store i8 0, ptr %36, align 2
  br label %37

37:                                               ; preds = %35, %11
  %38 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 11
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i8 %39, -5
  store i8 %46, ptr %38, align 1
  %47 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 7
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = mul i32 %49, 1145324612
  store volatile i32 %50, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  %51 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 15
  %52 = load i32, ptr %51, align 4
  %53 = inttoptr i32 %52 to ptr
  store volatile ptr %53, ptr inttoptr (i32 67109080 to ptr), align 8
  %54 = shl nuw nsw i32 %45, 6
  %55 = call i32 asm "", "={r0},{r0}"(i32 %54) #6, !srcloc !4
  %56 = ashr i32 %55, 2
  %57 = or i32 %56, -2063597568
  store volatile i32 %57, ptr inttoptr (i32 67109084 to ptr), align 4
  %58 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  br label %59

59:                                               ; preds = %42, %37
  store volatile i32 1, ptr %2, align 4
  %60 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 13
  %61 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 17
  %63 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 15
  %67 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 16
  %69 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 5
  br label %71

71:                                               ; preds = %226, %59
  %72 = load ptr, ptr %60, align 4
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i8 -31, i8 %73
  %76 = zext i8 %75 to i32
  %77 = icmp eq i8 %75, 94
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = getelementptr i8, ptr %72, i32 1
  store ptr %79, ptr %60, align 4
  %80 = call arm_apcscc i32 @SelectTaskTextSecondaryVariant(ptr noundef nonnull %7) #5
  store volatile i32 %80, ptr %2, align 4
  br label %226

81:                                               ; preds = %71
  %82 = icmp ult i8 %75, -32
  br i1 %82, label %83, label %212

83:                                               ; preds = %81
  %84 = load i8, ptr %61, align 4
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 128
  %87 = call i32 asm "", "={r1},{r1}"(i32 %86) #6, !srcloc !5
  call void asm sideeffect "", "{r2}"(i32 127) #4, !srcloc !6
  call void asm sideeffect "", "{r8}"(i32 127) #4, !srcloc !7
  call void asm sideeffect "", "{r6}"(i32 127) #4, !srcloc !8
  %88 = load i16, ptr %62, align 2
  %89 = zext i16 %88 to i32
  %90 = load i8, ptr %63, align 2
  %91 = lshr i8 %90, 1
  %92 = zext nneg i8 %91 to i32
  %93 = load i8, ptr %38, align 1
  %94 = load i8, ptr %64, align 1
  %95 = load i8, ptr %65, align 1
  %96 = load i32, ptr %66, align 4
  call void asm sideeffect "", "{r6}"(i32 %96) #4, !srcloc !9
  %97 = load i32, ptr %67, align 4
  br label %98

98:                                               ; preds = %98, %83
  %99 = phi i32 [ %89, %83 ], [ %101, %98 ]
  %100 = icmp slt i32 %99, %92
  %101 = sub nsw i32 %99, %92
  br i1 %100, label %102, label %98

102:                                              ; preds = %98
  %103 = and i32 %87, 255
  %104 = and i32 %85, 127
  %105 = zext i8 %93 to i32
  %106 = zext i8 %94 to i32
  %107 = zext i8 %95 to i32
  %108 = add i8 %75, -1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %103, 0
  br i1 %110, label %141, label %111

111:                                              ; preds = %102
  %112 = and i32 %105, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %111
  %115 = call i32 asm "", "={r1},{r1}"(i32 256) #6, !srcloc !10
  %116 = add i32 %109, ptrtoint (ptr @gTaskTextAdvanceWidths to i32)
  %117 = add i32 %116, %115
  %118 = inttoptr i32 %117 to ptr
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 %104, %120
  %122 = lshr i32 %121, 1
  %123 = and i32 %122, 255
  %124 = load volatile i16, ptr %68, align 4
  %125 = zext i16 %124 to i32
  call void asm sideeffect "", "{r6}"(i32 %125) #4, !srcloc !11
  %126 = add nuw nsw i32 %123, %125
  br label %138

127:                                              ; preds = %111
  %128 = add i32 %109, ptrtoint (ptr @gTaskTextAdvanceWidths to i32)
  %129 = inttoptr i32 %128 to ptr
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  call void asm sideeffect "", "{r6}"(i32 %104) #4, !srcloc !12
  %132 = sub nsw i32 %104, %131
  %133 = lshr i32 %132, 1
  %134 = and i32 %133, 255
  %135 = load volatile i16, ptr %68, align 4
  %136 = zext i16 %135 to i32
  call void asm sideeffect "", "{r1}"(i32 %136) #4, !srcloc !13
  %137 = add nuw nsw i32 %134, %136
  br label %138

138:                                              ; preds = %127, %114
  %139 = phi i32 [ %126, %114 ], [ %137, %127 ]
  %140 = trunc i32 %139 to i16
  br label %144

141:                                              ; preds = %102
  %142 = load i16, ptr %68, align 4
  %143 = and i32 %105, 8
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i32 [ %143, %141 ], [ %112, %138 ]
  %146 = phi i16 [ %142, %141 ], [ %140, %138 ]
  %147 = zext i16 %146 to i32
  %148 = icmp eq i32 %145, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = call i32 asm "", "={r2},{r2}"(i32 256) #6, !srcloc !14
  %151 = add i32 %150, %109
  call void asm sideeffect "", "{r2}"(i32 %107) #4, !srcloc !15
  br label %152

152:                                              ; preds = %144, %149
  %153 = phi i32 [ %151, %149 ], [ %109, %144 ]
  %154 = shl i32 %153, 6
  %155 = add i32 %154, ptrtoint (ptr @gTaskGlyphBlocks to i32)
  call arm_apcscc void @BlitTaskGlyphToShadow(i32 noundef %155, i32 noundef %96, i32 noundef %106, i32 noundef %147, i32 noundef %107) #5
  br i1 %110, label %156, label %170

156:                                              ; preds = %152
  %157 = load i8, ptr %38, align 1
  %158 = and i8 %157, 8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = call i32 asm "", "={r1},{r1}"(i32 256) #6, !srcloc !16
  %162 = add i32 %161, %109
  br label %163

163:                                              ; preds = %156, %160
  %164 = phi i32 [ %162, %160 ], [ %109, %156 ]
  %165 = add i32 %164, ptrtoint (ptr @gTaskTextAdvanceWidths to i32)
  %166 = inttoptr i32 %165 to ptr
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = add nuw nsw i32 %104, %168
  br label %170

170:                                              ; preds = %152, %163
  %171 = phi i32 [ %169, %163 ], [ %104, %152 ]
  %172 = load i16, ptr %68, align 4
  %173 = trunc i32 %171 to i16
  %174 = add i16 %172, %173
  store i16 %174, ptr %68, align 4
  %175 = load i8, ptr %7, align 4
  %176 = icmp sgt i8 %175, -1
  br i1 %176, label %180, label %177

177:                                              ; preds = %170
  store i8 0, ptr %69, align 2
  %178 = load ptr, ptr %60, align 4
  %179 = getelementptr i8, ptr %178, i32 1
  store ptr %179, ptr %60, align 4
  store i8 1, ptr @gTaskGraphicsByte645, align 1
  br label %226

180:                                              ; preds = %170
  %181 = load i8, ptr %70, align 1
  store i8 %181, ptr %69, align 2
  %182 = load ptr, ptr %60, align 4
  %183 = getelementptr i8, ptr %182, i32 1
  store ptr %183, ptr %60, align 4
  store i8 1, ptr @gTaskGraphicsByte645, align 1
  %184 = icmp eq i8 %181, 0
  br i1 %184, label %226, label %185

185:                                              ; preds = %180
  %186 = shl nuw nsw i32 %147, 2
  %187 = and i32 %186, 992
  %188 = load i8, ptr %64, align 1
  %189 = zext i8 %188 to i32
  %190 = shl nuw nsw i32 %189, 5
  %191 = sub nsw i32 %190, %187
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %185
  %194 = shl nuw nsw i32 %106, 6
  %195 = mul i32 %194, %99
  %196 = add i32 %195, %97
  %197 = load i32, ptr %66, align 4
  %198 = add i32 %197, %187
  %199 = add i32 %187, %196
  %200 = call i32 asm "", "=r,0"(i32 %191) #6, !srcloc !17
  %201 = icmp ugt i32 %191, 96
  %202 = select i1 %201, i32 96, i32 %200
  call arm_apcscc void @QueueDmaTransfer(i32 noundef %198, i32 noundef %199, i32 noundef %202) #5
  %203 = load i8, ptr %64, align 1
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 5
  %206 = load i32, ptr %66, align 4
  %207 = add nuw nsw i32 %205, %187
  %208 = add i32 %207, %206
  %209 = add i32 %199, %205
  %210 = call i32 @llvm.smin.i32(i32 %191, i32 96)
  call arm_apcscc void @QueueDmaTransfer(i32 noundef %208, i32 noundef %209, i32 noundef %210) #5
  br label %211

211:                                              ; preds = %185, %193
  store i8 4, ptr %7, align 4
  br label %229

212:                                              ; preds = %81
  %213 = icmp ult i8 %75, -16
  br i1 %213, label %216, label %214

214:                                              ; preds = %212
  %215 = getelementptr i8, ptr %72, i32 1
  store ptr %215, ptr %60, align 4
  br label %216

216:                                              ; preds = %212, %214
  %217 = phi i32 [ 268435456, %214 ], [ 536870912, %212 ]
  %218 = phi i32 [ ptrtoint (ptr @gTaskHighCommandHandlers to i32), %214 ], [ ptrtoint (ptr @gTaskLowCommandHandlers to i32), %212 ]
  %219 = shl nuw i32 %76, 24
  %220 = add nsw i32 %219, %217
  %221 = lshr exact i32 %220, 22
  %222 = add i32 %221, %218
  %223 = inttoptr i32 %222 to ptr
  %224 = load ptr, ptr %223, align 4
  %225 = call arm_apcscc i32 %224(ptr noundef nonnull %7) #5
  store volatile i32 %225, ptr %2, align 4
  br label %226

226:                                              ; preds = %177, %180, %216, %78
  %227 = load volatile i32, ptr %2, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %71

229:                                              ; preds = %226, %29, %34, %211, %12, %20, %15, %6
  %230 = getelementptr inbounds %struct.TaskContext, ptr %7, i32 0, i32 22
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, @gTaskContextSentinel
  br i1 %232, label %233, label %6

233:                                              ; preds = %229, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @CompleteTaskTextMapScroll(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @StepTaskRenderSlotsUp(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @SelectTaskTextSecondaryVariant(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BlitTaskGlyphToShadow(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

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
!4 = !{i64 1984}
!5 = !{i64 3273}
!6 = !{i64 3415}
!7 = !{i64 3482}
!8 = !{i64 3558}
!9 = !{i64 3941}
!10 = !{i64 4444}
!11 = !{i64 4858}
!12 = !{i64 5155}
!13 = !{i64 5376}
!14 = !{i64 5725}
!15 = !{i64 5918}
!16 = !{i64 6579}
!17 = !{i64 7506}
