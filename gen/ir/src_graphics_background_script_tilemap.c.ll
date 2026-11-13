; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandDmaCopyTilemapRectangle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr i8, ptr %5, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = getelementptr i8, ptr %5, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = getelementptr i8, ptr %5, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %19 = getelementptr i8, ptr %5, i32 4
  store ptr %19, ptr %1, align 4
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr i8, ptr %5, i32 5
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr i8, ptr %5, i32 6
  store ptr %23, ptr %1, align 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  tail call void asm sideeffect "", "{r3}"(i32 %25) #3, !srcloc !4
  %26 = getelementptr i8, ptr %5, i32 7
  store ptr %26, ptr %1, align 4
  %27 = add i8 %24, 1
  %28 = load i8, ptr %26, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr i8, ptr %5, i32 8
  store ptr %30, ptr %1, align 4
  %31 = tail call i32 asm "", "={r0},{r0}"(i32 %29) #4, !srcloc !5
  %32 = add i32 %31, 1
  %33 = and i32 %32, 255
  store volatile i32 %33, ptr %3, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #5
  %34 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %36, 2
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 48
  %42 = and i32 %36, 8
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %38, i32 %41, i32 96
  %45 = zext i8 %6 to i32
  %46 = or disjoint i32 %10, %45
  %47 = or disjoint i32 %46, %14
  %48 = or disjoint i32 %47, %18
  %49 = zext i8 %20 to i32
  %50 = zext i8 %22 to i32
  %51 = zext i8 %27 to i32
  %52 = tail call arm_apcscc ptr @GetVideoState() #5
  %53 = ptrtoint ptr %52 to i32
  %54 = select i1 %43, i32 %44, i32 144
  %55 = add i32 %54, %53
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr i8, ptr %56, i32 57
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = lshr i32 %59, 6
  %61 = getelementptr inbounds %struct.VideoState, ptr %52, i32 0, i32 12
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, 15
  %64 = shl nuw nsw i32 %59, 11
  %65 = and i32 %64, 63488
  %66 = or disjoint i32 %65, 100663296
  store volatile i32 %66, ptr %4, align 4
  %67 = icmp eq i8 %63, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %2
  %69 = icmp eq i8 %63, 1
  %70 = and i32 %36, 12
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %131

73:                                               ; preds = %68, %2
  %74 = load volatile i32, ptr %3, align 4
  %75 = icmp ugt i32 %74, %50
  br i1 %75, label %76, label %161

76:                                               ; preds = %73
  %77 = sub nsw i32 %51, %49
  %78 = sub nsw i32 32, %49
  %79 = tail call i32 asm "", "={r3},{r3}"(i32 -32) #4, !srcloc !6
  %80 = add i32 %79, %51
  %81 = icmp ugt i8 %20, 32
  %82 = icmp ult i8 %20, 33
  %83 = icmp ult i8 %27, 33
  br label %84

84:                                               ; preds = %116, %76
  %85 = phi i32 [ %50, %76 ], [ %119, %116 ]
  %86 = phi i32 [ %49, %76 ], [ %120, %116 ]
  %87 = phi i32 [ %48, %76 ], [ %128, %116 ]
  tail call void asm sideeffect "", "{r1}"(i32 %85) #3, !srcloc !7
  %88 = shl nuw nsw i32 %85, 6
  %89 = and i32 %88, 1984
  %90 = shl nuw nsw i32 %86, 1
  %91 = and i32 %90, 62
  %92 = tail call i32 asm "", "=r,0"(i32 %91) #4, !srcloc !8
  %93 = add i32 %92, %89
  %94 = icmp ult i32 %86, 32
  %95 = icmp ult i32 %85, 32
  br i1 %94, label %96, label %104

96:                                               ; preds = %84
  br i1 %95, label %97, label %99

97:                                               ; preds = %96
  br i1 %83, label %111, label %98

98:                                               ; preds = %97
  tail call void asm sideeffect "", "r"(i32 %78) #3, !srcloc !9
  br label %116

99:                                               ; preds = %96
  br i1 %83, label %100, label %102

100:                                              ; preds = %99
  tail call void asm sideeffect "", "{r3}"(i32 2048) #3, !srcloc !10
  %101 = add i32 %93, 2048
  br label %111

102:                                              ; preds = %99
  tail call void asm sideeffect "", "r"(i32 4096) #3, !srcloc !11
  %103 = add i32 %93, 4096
  br label %116

104:                                              ; preds = %84
  br i1 %95, label %105, label %107

105:                                              ; preds = %104
  tail call void asm sideeffect "", "{r3}"(i32 2048) #3, !srcloc !12
  %106 = add i32 %93, 2048
  br i1 %82, label %109, label %111

107:                                              ; preds = %104
  %108 = add i32 %93, 6144
  br i1 %81, label %111, label %109

109:                                              ; preds = %105, %107
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  tail call void asm sideeffect "", "r"(i32 %80) #3, !srcloc !13
  br label %111

111:                                              ; preds = %97, %100, %105, %107, %109
  %112 = phi i32 [ %80, %109 ], [ %77, %100 ], [ %77, %107 ], [ %77, %105 ], [ %77, %97 ]
  %113 = phi i32 [ %110, %109 ], [ %101, %100 ], [ %108, %107 ], [ %106, %105 ], [ %93, %97 ]
  %114 = add nuw nsw i32 %85, 1
  %115 = and i32 %114, 255
  br label %116

116:                                              ; preds = %98, %111, %102
  %117 = phi i32 [ %78, %98 ], [ %112, %111 ], [ %78, %102 ]
  %118 = phi i32 [ %93, %98 ], [ %113, %111 ], [ %103, %102 ]
  %119 = phi i32 [ %85, %98 ], [ %115, %111 ], [ %85, %102 ]
  %120 = phi i32 [ 32, %98 ], [ %49, %111 ], [ 32, %102 ]
  %121 = shl i32 %117, 1
  %122 = inttoptr i32 %87 to ptr
  store volatile ptr %122, ptr inttoptr (i32 67109076 to ptr), align 4
  %123 = load volatile i32, ptr %4, align 4
  %124 = add i32 %123, %118
  %125 = inttoptr i32 %124 to ptr
  store volatile ptr %125, ptr inttoptr (i32 67109080 to ptr), align 8
  %126 = or i32 %117, -2147483648
  store volatile i32 %126, ptr inttoptr (i32 67109084 to ptr), align 4
  %127 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %128 = add i32 %121, %87
  %129 = load volatile i32, ptr %3, align 4
  %130 = icmp ult i32 %119, %129
  br i1 %130, label %84, label %161

131:                                              ; preds = %68
  %132 = icmp ult i8 %63, 3
  br i1 %132, label %133, label %161

133:                                              ; preds = %131
  %134 = and i32 %60, 1
  %135 = or disjoint i32 %134, 4
  %136 = shl nuw nsw i32 %50, %135
  %137 = add nuw nsw i32 %136, %49
  %138 = load volatile i32, ptr %4, align 4
  %139 = add i32 %137, %138
  store volatile i32 %139, ptr %4, align 4
  %140 = load volatile i32, ptr %3, align 4
  %141 = sub i32 %140, %50
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %161, label %143

143:                                              ; preds = %133
  %144 = sub nsw i32 %51, %49
  %145 = lshr i32 %144, 31
  %146 = add nsw i32 %145, %144
  %147 = ashr i32 %146, 1
  %148 = or i32 %147, -2147483648
  br label %149

149:                                              ; preds = %149, %143
  %150 = phi i32 [ 0, %143 ], [ %159, %149 ]
  %151 = shl nuw nsw i32 %150, %135
  %152 = add i32 %151, %48
  %153 = inttoptr i32 %152 to ptr
  store volatile ptr %153, ptr inttoptr (i32 67109076 to ptr), align 4
  %154 = load volatile i32, ptr %4, align 4
  %155 = add i32 %154, %151
  %156 = inttoptr i32 %155 to ptr
  store volatile ptr %156, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 %148, ptr inttoptr (i32 67109084 to ptr), align 4
  %157 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %158 = add nuw nsw i32 %150, 1
  %159 = and i32 %158, 255
  %160 = icmp ult i32 %159, %141
  br i1 %160, label %149, label %161

161:                                              ; preds = %149, %116, %131, %73, %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @CommitBackgroundScript(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 698}
!5 = !{i64 910}
!6 = !{i64 2296}
!7 = !{i64 2558}
!8 = !{i64 2790}
!9 = !{i64 3103}
!10 = !{i64 3445}
!11 = !{i64 3648}
!12 = !{i64 4013}
!13 = !{i64 4421}
