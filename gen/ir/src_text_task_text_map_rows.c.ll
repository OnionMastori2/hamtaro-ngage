; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskGate644 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @AdvanceTaskTextMapRows(ptr nocapture noundef %0) local_unnamed_addr #0 {
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
  br i1 %11, label %12, label %105

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
  br i1 %38, label %40, label %68

40:                                               ; preds = %12
  store i32 %8, ptr %2, align 4
  %41 = load i32, ptr %39, align 4
  %42 = inttoptr i32 %41 to ptr
  %43 = load i8, ptr %21, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 3
  %46 = or disjoint i32 %45, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %2, ptr noundef %42, i32 noundef %46) #4
  %47 = load i8, ptr %21, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %103, label %49

49:                                               ; preds = %40
  %50 = load i32, ptr %16, align 4
  %51 = add i32 %50, 192
  %52 = inttoptr i32 %51 to ptr
  %53 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !4
  br label %54

54:                                               ; preds = %54, %49
  %55 = phi ptr [ %52, %49 ], [ %63, %54 ]
  %56 = phi i32 [ 0, %49 ], [ %64, %54 ]
  %57 = load i16, ptr %55, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %53, %58
  %60 = add nuw nsw i32 %59, %56
  %61 = trunc i32 %60 to i16
  %62 = add i16 %61, 1
  store i16 %62, ptr %55, align 2
  %63 = getelementptr i16, ptr %55, i32 1
  %64 = add nuw nsw i32 %56, 1
  %65 = load i8, ptr %21, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %54, label %103

68:                                               ; preds = %12
  store i32 %8, ptr %3, align 4
  %69 = load i32, ptr %39, align 4
  %70 = load i8, ptr %21, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 6
  %73 = add i32 %72, %69
  %74 = inttoptr i32 %73 to ptr
  %75 = shl nuw nsw i32 %71, 3
  %76 = or disjoint i32 %75, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %3, ptr noundef %74, i32 noundef %76) #4
  %77 = load i8, ptr %21, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %68
  %80 = zext i8 %77 to i32
  %81 = load i32, ptr %16, align 4
  %82 = add i32 %81, 192
  %83 = inttoptr i32 %82 to ptr
  %84 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !5
  br label %85

85:                                               ; preds = %85, %79
  %86 = phi ptr [ %83, %79 ], [ %98, %85 ]
  %87 = phi i32 [ %80, %79 ], [ %101, %85 ]
  %88 = phi i32 [ 0, %79 ], [ %99, %85 ]
  %89 = load i16, ptr %86, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %84, %90
  %92 = shl nuw nsw i32 %87, 1
  %93 = call i32 asm sideeffect "", "={r3},{r3}"(i32 %87) #3, !srcloc !6
  %94 = add nuw nsw i32 %88, %92
  %95 = add nuw nsw i32 %94, %91
  %96 = trunc i32 %95 to i16
  %97 = add i16 %96, 1
  store i16 %97, ptr %86, align 2
  %98 = getelementptr i16, ptr %86, i32 1
  %99 = add nuw nsw i32 %88, 1
  %100 = load i8, ptr %21, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %85, label %103

103:                                              ; preds = %85, %54, %68, %40
  %104 = load i8, ptr %9, align 2
  br label %105

105:                                              ; preds = %103, %1
  %106 = phi i8 [ %104, %103 ], [ %10, %1 ]
  %107 = icmp eq i8 %106, 6
  br i1 %107, label %108, label %248

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %110 = load i16, ptr %109, align 2
  %111 = freeze i16 %110
  %112 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 20
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  %115 = load i8, ptr %114, align 1
  %116 = urem i16 %111, 3
  %117 = zext i8 %115 to i32
  %118 = add i32 %113, 64
  %119 = inttoptr i32 %118 to ptr
  %120 = inttoptr i32 %113 to ptr
  call arm_apcscc void @BiosCpuSet(ptr noundef %119, ptr noundef %120, i32 noundef %117) #4
  %121 = load i32, ptr %112, align 4
  %122 = add i32 %121, 128
  %123 = inttoptr i32 %122 to ptr
  %124 = add i32 %121, 64
  %125 = inttoptr i32 %124 to ptr
  %126 = load i8, ptr %114, align 1
  %127 = zext i8 %126 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %123, ptr noundef %125, i32 noundef %127) #4
  %128 = load i32, ptr %112, align 4
  %129 = add i32 %128, 192
  %130 = inttoptr i32 %129 to ptr
  %131 = add i32 %128, 128
  %132 = inttoptr i32 %131 to ptr
  %133 = load i8, ptr %114, align 1
  %134 = zext i8 %133 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %130, ptr noundef %132, i32 noundef %134) #4
  %135 = load i32, ptr %112, align 4
  %136 = add i32 %135, 256
  %137 = inttoptr i32 %136 to ptr
  %138 = add i32 %135, 192
  %139 = inttoptr i32 %138 to ptr
  %140 = load i8, ptr %114, align 1
  %141 = zext i8 %140 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %137, ptr noundef %139, i32 noundef %141) #4
  %142 = load i32, ptr %112, align 4
  %143 = add i32 %142, 320
  %144 = inttoptr i32 %143 to ptr
  %145 = add i32 %142, 256
  %146 = inttoptr i32 %145 to ptr
  %147 = load i8, ptr %114, align 1
  %148 = zext i8 %147 to i32
  call arm_apcscc void @BiosCpuSet(ptr noundef %144, ptr noundef %146, i32 noundef %148) #4
  switch i16 %116, label %248 [
    i16 0, label %149
    i16 1, label %178
    i16 2, label %213
  ]

149:                                              ; preds = %108
  store i32 %8, ptr %3, align 4
  %150 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %151 = load i32, ptr %150, align 4
  %152 = inttoptr i32 %151 to ptr
  %153 = load i8, ptr %114, align 1
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 3
  %156 = or disjoint i32 %155, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %3, ptr noundef %152, i32 noundef %156) #4
  %157 = load i8, ptr %114, align 1
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %248, label %159

159:                                              ; preds = %149
  %160 = load i32, ptr %112, align 4
  %161 = add i32 %160, 320
  %162 = inttoptr i32 %161 to ptr
  %163 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !7
  br label %164

164:                                              ; preds = %164, %159
  %165 = phi ptr [ %162, %159 ], [ %173, %164 ]
  %166 = phi i32 [ 0, %159 ], [ %174, %164 ]
  %167 = load i16, ptr %165, align 2
  %168 = zext i16 %167 to i32
  %169 = and i32 %163, %168
  %170 = add nuw nsw i32 %169, %166
  %171 = trunc i32 %170 to i16
  %172 = add i16 %171, 1
  store i16 %172, ptr %165, align 2
  %173 = getelementptr i16, ptr %165, i32 1
  %174 = add nuw nsw i32 %166, 1
  %175 = load i8, ptr %114, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp ult i32 %174, %176
  br i1 %177, label %164, label %248

178:                                              ; preds = %108
  store i32 %8, ptr %2, align 4
  %179 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %180 = load i32, ptr %179, align 4
  %181 = load i8, ptr %114, align 1
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 6
  %184 = add i32 %183, %180
  %185 = inttoptr i32 %184 to ptr
  %186 = shl nuw nsw i32 %182, 3
  %187 = or disjoint i32 %186, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %2, ptr noundef %185, i32 noundef %187) #4
  %188 = load i8, ptr %114, align 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %248, label %190

190:                                              ; preds = %178
  %191 = zext i8 %188 to i32
  %192 = load i32, ptr %112, align 4
  %193 = add i32 %192, 320
  %194 = inttoptr i32 %193 to ptr
  %195 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !8
  br label %196

196:                                              ; preds = %196, %190
  %197 = phi ptr [ %194, %190 ], [ %208, %196 ]
  %198 = phi i32 [ %191, %190 ], [ %211, %196 ]
  %199 = phi i32 [ 0, %190 ], [ %209, %196 ]
  %200 = load i16, ptr %197, align 2
  %201 = zext i16 %200 to i32
  %202 = and i32 %195, %201
  %203 = shl nuw nsw i32 %198, 1
  %204 = add nuw nsw i32 %199, %203
  %205 = add nuw nsw i32 %204, %202
  %206 = trunc i32 %205 to i16
  %207 = add i16 %206, 1
  store i16 %207, ptr %197, align 2
  %208 = getelementptr i16, ptr %197, i32 1
  %209 = add nuw nsw i32 %199, 1
  %210 = load i8, ptr %114, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp ult i32 %209, %211
  br i1 %212, label %196, label %248

213:                                              ; preds = %108
  store i32 %8, ptr %4, align 4
  %214 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  %215 = load i32, ptr %214, align 4
  %216 = load i8, ptr %114, align 1
  %217 = zext i8 %216 to i32
  %218 = shl nuw nsw i32 %217, 7
  %219 = add i32 %218, %215
  %220 = inttoptr i32 %219 to ptr
  %221 = shl nuw nsw i32 %217, 3
  %222 = or disjoint i32 %221, 16777216
  call arm_apcscc void @BiosCpuFastSet(ptr noundef nonnull %4, ptr noundef %220, i32 noundef %222) #4
  %223 = load i8, ptr %114, align 1
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %248, label %225

225:                                              ; preds = %213
  %226 = zext i8 %223 to i32
  %227 = load i32, ptr %112, align 4
  %228 = add i32 %227, 320
  %229 = inttoptr i32 %228 to ptr
  %230 = call i32 asm "", "=r,0"(i32 64512) #5, !srcloc !9
  br label %231

231:                                              ; preds = %231, %225
  %232 = phi i32 [ %226, %225 ], [ %246, %231 ]
  %233 = phi ptr [ %229, %225 ], [ %243, %231 ]
  %234 = phi i32 [ 0, %225 ], [ %244, %231 ]
  %235 = load i16, ptr %233, align 2
  %236 = zext i16 %235 to i32
  %237 = and i32 %230, %236
  %238 = shl nuw nsw i32 %232, 2
  %239 = add nuw nsw i32 %234, %238
  %240 = add nuw nsw i32 %239, %237
  %241 = trunc i32 %240 to i16
  %242 = add i16 %241, 1
  store i16 %242, ptr %233, align 2
  %243 = getelementptr i16, ptr %233, i32 1
  %244 = add nuw nsw i32 %234, 1
  %245 = load i8, ptr %114, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp ult i32 %244, %246
  br i1 %247, label %231, label %248

248:                                              ; preds = %231, %196, %164, %149, %178, %108, %213, %105
  %249 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 6
  store i8 2, ptr %249, align 2
  store i8 1, ptr @gTaskGate644, align 1
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
!4 = !{i64 1696}
!5 = !{i64 2864}
!6 = !{i64 3008}
!7 = !{i64 4965}
!8 = !{i64 6193}
!9 = !{i64 7466}
