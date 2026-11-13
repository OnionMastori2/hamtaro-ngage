; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gBackgroundRenderStateCount = external dso_local local_unnamed_addr global i8, align 1
@gRenderLayerOffsets = external dso_local global [4 x %struct.RenderLayerOffset], align 4

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @InitializeBackgroundRenderState() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  %2 = load ptr, ptr @gRenderStates, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109080 to ptr), align 8
  %3 = load i8, ptr @gBackgroundRenderStateCount, align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 20
  %6 = or disjoint i32 %5, -2063597568
  store volatile i32 %6, ptr inttoptr (i32 67109084 to ptr), align 4
  %7 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr @gRenderLayerOffsets, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597524, ptr inttoptr (i32 67109084 to ptr), align 4
  %8 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 7), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 14), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 7), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 14), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 7), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 14), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 7), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 14), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @ResetBackgroundRenderState(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  %3 = load ptr, ptr @gRenderStates, align 4
  %4 = zext i8 %0 to i32
  %5 = getelementptr %struct.BackgroundRenderState, ptr %3, i32 %4
  store volatile ptr %5, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597548, ptr inttoptr (i32 67109084 to ptr), align 4
  %6 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @ResetBackgroundLayers(i8 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = zext i8 %0 to i32
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i32 0, ptr @gRenderLayerOffsets, align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 3), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 7), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 8), align 4
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 9), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 10), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 12), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 13), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 14), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 5), align 4
  br label %6

6:                                                ; preds = %1, %5
  %7 = and i32 %2, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 3), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 7), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 8), align 4
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 9), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 10), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 12), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 13), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 14), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 5), align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = and i32 %2, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 3), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 7), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 9), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 10), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 12), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 13), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 14), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 5), align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = and i32 %2, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 3), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 6), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 7), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 8), align 4
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 9), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 10), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 11), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 12), align 4
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 13), align 2
  store i16 256, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 14), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 4), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 3, i32 5), align 4
  br label %18

18:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = trunc i32 %1 to i16
  %5 = zext i8 %0 to i32
  %6 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %5, i32 9
  store i16 %4, ptr %6, align 2
  %7 = trunc i32 %2 to i16
  %8 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %5, i32 10
  store i16 %7, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @GetBackgroundOffset(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = zext i8 %0 to i32
  %5 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %4, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 16
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %1, align 2
  %9 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %4, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %2, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @GetBackgroundPosition(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = zext i8 %0 to i32
  %5 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 16
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %1, align 2
  %9 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %2, align 2
  ret void
}

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
