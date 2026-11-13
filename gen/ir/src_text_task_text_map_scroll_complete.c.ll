; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskGate644 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @CompleteTaskTextMapScroll(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = mul i32 %7, 1145324612
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  %9 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %12, label %111

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 1
  %16 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 64
  %19 = inttoptr i32 %18 to ptr
  %20 = inttoptr i32 %17 to ptr
  %21 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %19, ptr noundef %20, i32 noundef %23) #4
  %24 = load i32, ptr %16, align 4
  %25 = add i32 %24, 128
  %26 = inttoptr i32 %25 to ptr
  %27 = add i32 %24, 64
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %21, align 1
  %30 = zext i8 %29 to i32
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %26, ptr noundef %28, i32 noundef %30) #4
  %31 = load i32, ptr %16, align 4
  %32 = add i32 %31, 192
  %33 = inttoptr i32 %32 to ptr
  %34 = add i32 %31, 128
  %35 = inttoptr i32 %34 to ptr
  %36 = load i8, ptr %21, align 1
  %37 = zext i8 %36 to i32
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %33, ptr noundef %35, i32 noundef %37) #4
  %38 = icmp eq i16 %15, 0
  %39 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  br i1 %38, label %40, label %75

40:                                               ; preds = %12
  store i32 %8, ptr %2, align 4
  %41 = load i32, ptr %39, align 4
  %42 = load i8, ptr %21, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 5
  %45 = add i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  %47 = shl nuw nsw i32 %43, 3
  %48 = or disjoint i32 %47, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %2, ptr noundef %46, i32 noundef %48) #4
  %49 = load i8, ptr %21, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %109, label %51

51:                                               ; preds = %40
  %52 = zext i8 %49 to i32
  %53 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !4
  %54 = load i32, ptr %16, align 4
  %55 = call i32 asm "", "={r1},{r1}"(i32 %54) #5, !srcloc !5
  %56 = add i32 %55, 192
  %57 = inttoptr i32 %56 to ptr
  %58 = call i32 asm "", "={r0},{r0}"(i32 %53) #5, !srcloc !6
  br label %59

59:                                               ; preds = %59, %51
  %60 = phi ptr [ %57, %51 ], [ %70, %59 ]
  %61 = phi i32 [ %52, %51 ], [ %73, %59 ]
  %62 = phi i32 [ 0, %51 ], [ %71, %59 ]
  %63 = load i16, ptr %60, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %58, %64
  %66 = add nuw nsw i32 %62, %61
  %67 = add nuw nsw i32 %66, %65
  %68 = trunc i32 %67 to i16
  %69 = add i16 %68, 1
  store i16 %69, ptr %60, align 2
  %70 = getelementptr i16, ptr %60, i32 1
  %71 = add nuw nsw i32 %62, 1
  %72 = load i8, ptr %21, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %59, label %109

75:                                               ; preds = %12
  store i32 %8, ptr %3, align 4
  %76 = load i32, ptr %39, align 4
  %77 = load i8, ptr %21, align 1
  %78 = zext i8 %77 to i32
  %79 = mul nuw nsw i32 %78, 96
  %80 = add i32 %79, %76
  %81 = inttoptr i32 %80 to ptr
  %82 = shl nuw nsw i32 %78, 3
  %83 = or disjoint i32 %82, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %3, ptr noundef %81, i32 noundef %83) #4
  %84 = load i8, ptr %21, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %109, label %86

86:                                               ; preds = %75
  %87 = zext i8 %84 to i32
  %88 = load i32, ptr %16, align 4
  %89 = add i32 %88, 192
  %90 = inttoptr i32 %89 to ptr
  %91 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !7
  br label %92

92:                                               ; preds = %92, %86
  %93 = phi ptr [ %90, %86 ], [ %104, %92 ]
  %94 = phi i32 [ %87, %86 ], [ %107, %92 ]
  %95 = phi i32 [ 0, %86 ], [ %105, %92 ]
  %96 = load i16, ptr %93, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 %91, %97
  %99 = mul nuw nsw i32 %94, 3
  %100 = add nuw nsw i32 %95, %99
  %101 = add nuw nsw i32 %100, %98
  %102 = trunc i32 %101 to i16
  %103 = add i16 %102, 1
  store i16 %103, ptr %93, align 2
  %104 = getelementptr i16, ptr %93, i32 1
  %105 = add nuw nsw i32 %95, 1
  %106 = load i8, ptr %21, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ult i32 %105, %107
  br i1 %108, label %92, label %109

109:                                              ; preds = %92, %59, %75, %40
  %110 = load i8, ptr %9, align 2
  br label %111

111:                                              ; preds = %109, %1
  %112 = phi i8 [ %110, %109 ], [ %10, %1 ]
  %113 = icmp eq i8 %112, 6
  br i1 %113, label %114, label %261

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %116 = load i16, ptr %115, align 2
  %117 = freeze i16 %116
  %118 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 20
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  %121 = load i8, ptr %120, align 1
  %122 = urem i16 %117, 3
  %123 = zext i8 %121 to i32
  %124 = add i32 %119, 64
  %125 = inttoptr i32 %124 to ptr
  %126 = inttoptr i32 %119 to ptr
  call arm_apcscc void @BiosCpuSet(ptr noundef %125, ptr noundef %126, i32 noundef %123) #4
  %127 = load i32, ptr %118, align 4
  %128 = add i32 %127, 128
  %129 = inttoptr i32 %128 to ptr
  %130 = add i32 %127, 64
  %131 = inttoptr i32 %130 to ptr
  %132 = load i8, ptr %120, align 1
  %133 = zext i8 %132 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %129, ptr noundef %131, i32 noundef %133) #4
  %134 = load i32, ptr %118, align 4
  %135 = add i32 %134, 192
  %136 = inttoptr i32 %135 to ptr
  %137 = add i32 %134, 128
  %138 = inttoptr i32 %137 to ptr
  %139 = load i8, ptr %120, align 1
  %140 = zext i8 %139 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %136, ptr noundef %138, i32 noundef %140) #4
  %141 = load i32, ptr %118, align 4
  %142 = add i32 %141, 256
  %143 = inttoptr i32 %142 to ptr
  %144 = add i32 %141, 192
  %145 = inttoptr i32 %144 to ptr
  %146 = load i8, ptr %120, align 1
  %147 = zext i8 %146 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %143, ptr noundef %145, i32 noundef %147) #4
  %148 = load i32, ptr %118, align 4
  %149 = add i32 %148, 320
  %150 = inttoptr i32 %149 to ptr
  %151 = add i32 %148, 256
  %152 = inttoptr i32 %151 to ptr
  %153 = load i8, ptr %120, align 1
  %154 = zext i8 %153 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %150, ptr noundef %152, i32 noundef %154) #4
  switch i16 %122, label %261 [
    i16 0, label %155
    i16 1, label %191
    i16 2, label %226
  ]

155:                                              ; preds = %114
  store i32 %8, ptr %3, align 4
  %156 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %157 = load i32, ptr %156, align 4
  %158 = load i8, ptr %120, align 1
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 5
  %161 = add i32 %160, %157
  %162 = inttoptr i32 %161 to ptr
  %163 = shl nuw nsw i32 %159, 3
  %164 = or disjoint i32 %163, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %3, ptr noundef %162, i32 noundef %164) #4
  %165 = load i8, ptr %120, align 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %261, label %167

167:                                              ; preds = %155
  %168 = zext i8 %165 to i32
  %169 = load i32, ptr %118, align 4
  %170 = call i32 asm "", "=r,0"(i32 %169) #5, !srcloc !8
  %171 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !9
  %172 = add i32 %170, 320
  %173 = inttoptr i32 %172 to ptr
  %174 = call i32 asm "", "={r0},{r0}"(i32 %171) #5, !srcloc !10
  br label %175

175:                                              ; preds = %175, %167
  %176 = phi ptr [ %173, %167 ], [ %186, %175 ]
  %177 = phi i32 [ %168, %167 ], [ %189, %175 ]
  %178 = phi i32 [ 0, %167 ], [ %187, %175 ]
  %179 = load i16, ptr %176, align 2
  %180 = zext i16 %179 to i32
  %181 = and i32 %174, %180
  %182 = add nuw nsw i32 %178, %177
  %183 = add nuw nsw i32 %182, %181
  %184 = trunc i32 %183 to i16
  %185 = add i16 %184, 1
  store i16 %185, ptr %176, align 2
  %186 = getelementptr i16, ptr %176, i32 1
  %187 = add nuw nsw i32 %178, 1
  %188 = load i8, ptr %120, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp ult i32 %187, %189
  br i1 %190, label %175, label %261

191:                                              ; preds = %114
  store i32 %8, ptr %2, align 4
  %192 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %193 = load i32, ptr %192, align 4
  %194 = load i8, ptr %120, align 1
  %195 = zext i8 %194 to i32
  %196 = mul nuw nsw i32 %195, 96
  %197 = add i32 %196, %193
  %198 = inttoptr i32 %197 to ptr
  %199 = shl nuw nsw i32 %195, 3
  %200 = or disjoint i32 %199, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %2, ptr noundef %198, i32 noundef %200) #4
  %201 = load i8, ptr %120, align 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %261, label %203

203:                                              ; preds = %191
  %204 = zext i8 %201 to i32
  %205 = load i32, ptr %118, align 4
  %206 = add i32 %205, 320
  %207 = inttoptr i32 %206 to ptr
  %208 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !11
  br label %209

209:                                              ; preds = %209, %203
  %210 = phi i32 [ %204, %203 ], [ %224, %209 ]
  %211 = phi ptr [ %207, %203 ], [ %221, %209 ]
  %212 = phi i32 [ 0, %203 ], [ %222, %209 ]
  %213 = load i16, ptr %211, align 2
  %214 = zext i16 %213 to i32
  %215 = and i32 %208, %214
  %216 = mul nuw nsw i32 %210, 3
  %217 = add nuw nsw i32 %212, %216
  %218 = add nuw nsw i32 %217, %215
  %219 = trunc i32 %218 to i16
  %220 = add i16 %219, 1
  store i16 %220, ptr %211, align 2
  %221 = getelementptr i16, ptr %211, i32 1
  %222 = add nuw nsw i32 %212, 1
  %223 = load i8, ptr %120, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp ult i32 %222, %224
  br i1 %225, label %209, label %261

226:                                              ; preds = %114
  store i32 %8, ptr %4, align 4
  %227 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %228 = load i32, ptr %227, align 4
  %229 = load i8, ptr %120, align 1
  %230 = zext i8 %229 to i32
  %231 = mul nuw nsw i32 %230, 160
  %232 = add i32 %231, %228
  %233 = inttoptr i32 %232 to ptr
  %234 = shl nuw nsw i32 %230, 3
  %235 = or disjoint i32 %234, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %4, ptr noundef %233, i32 noundef %235) #4
  %236 = load i8, ptr %120, align 1
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %261, label %238

238:                                              ; preds = %226
  %239 = zext i8 %236 to i32
  %240 = load i32, ptr %118, align 4
  %241 = add i32 %240, 320
  %242 = inttoptr i32 %241 to ptr
  %243 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !12
  br label %244

244:                                              ; preds = %244, %238
  %245 = phi i32 [ %239, %238 ], [ %259, %244 ]
  %246 = phi ptr [ %242, %238 ], [ %256, %244 ]
  %247 = phi i32 [ 0, %238 ], [ %257, %244 ]
  %248 = load i16, ptr %246, align 2
  %249 = zext i16 %248 to i32
  %250 = and i32 %243, %249
  %251 = mul nuw nsw i32 %245, 5
  %252 = add nuw nsw i32 %247, %251
  %253 = add nuw nsw i32 %252, %250
  %254 = trunc i32 %253 to i16
  %255 = add i16 %254, 1
  store i16 %255, ptr %246, align 2
  %256 = getelementptr i16, ptr %246, i32 1
  %257 = add nuw nsw i32 %247, 1
  %258 = load i8, ptr %120, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp ult i32 %257, %259
  br i1 %260, label %244, label %261

261:                                              ; preds = %244, %209, %175, %155, %191, %114, %226, %111
  %262 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 6
  store i8 0, ptr %262, align 2
  store i8 3, ptr %0, align 4
  %263 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 18
  %264 = load i16, ptr %263, align 4
  %265 = add i16 %264, 1
  store i16 %265, ptr %263, align 4
  store i8 0, ptr @gTaskGate644, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosCpuFastSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!4 = !{i64 1444}
!5 = !{i64 1532}
!6 = !{i64 1830}
!7 = !{i64 3048}
!8 = !{i64 4807}
!9 = !{i64 4888}
!10 = !{i64 5234}
!11 = !{i64 6531}
!12 = !{i64 7836}
