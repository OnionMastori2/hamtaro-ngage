; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @CalculateRenderScreenPosition(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #3
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr @gRenderInfo, align 4
  %7 = add i32 %6, %5
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -65536
  %13 = load i32, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 1), align 4
  %14 = lshr i32 %13, 16
  %15 = add i32 %12, %9
  %16 = lshr i32 %15, 16
  %17 = add nuw nsw i32 %16, %14
  %18 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, -64
  %21 = icmp eq i8 %20, -128
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load ptr, ptr @gRenderSlots, align 4
  %24 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr %struct.RenderSlot, ptr %23, i32 %26
  %28 = getelementptr %struct.RenderSlot, ptr %23, i32 %26, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = lshr i32 %7, 16
  %32 = add nuw nsw i32 %30, %31
  %33 = and i32 %32, 65535
  %34 = getelementptr %struct.RenderSlot, ptr %23, i32 %26, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.RenderSlot, ptr %23, i32 %26, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -65536
  %39 = add i32 %38, %35
  %40 = lshr i32 %39, 16
  %41 = add nuw nsw i32 %40, %17
  call arm_apcscc void @GetRenderLayerOffset(ptr noundef %27, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  br label %44

42:                                               ; preds = %1
  %43 = lshr i32 %7, 16
  call arm_apcscc void @GetRenderLayerOffset(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  br label %44

44:                                               ; preds = %42, %22
  %45 = phi i32 [ %41, %22 ], [ %17, %42 ]
  %46 = phi i32 [ %33, %22 ], [ %43, %42 ]
  %47 = and i32 %45, 65535
  %48 = load i8, ptr %18, align 2
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  %52 = load i16, ptr %2, align 2
  %53 = trunc i32 %46 to i16
  %54 = add i16 %52, %53
  %55 = zext i16 %54 to i32
  %56 = select i1 %51, i32 %46, i32 %55
  %57 = and i32 %49, 32
  %58 = icmp eq i32 %57, 0
  %59 = load i16, ptr %3, align 2
  %60 = trunc i32 %45 to i16
  %61 = add i16 %59, %60
  %62 = zext i16 %61 to i32
  %63 = select i1 %58, i32 %47, i32 %62
  %64 = load i32, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 1), align 4
  %65 = icmp ult i32 %56, 512
  %66 = load i32, ptr @gRenderInfo, align 4
  %67 = lshr i32 %66, 16
  %68 = sub nsw i32 %56, %67
  %69 = trunc i32 %68 to i16
  %70 = load i16, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 2), align 4
  %71 = select i1 %65, i16 %69, i16 %70
  %72 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 17
  store i16 %71, ptr %72, align 2
  %73 = icmp ult i32 %63, 256
  %74 = lshr i32 %64, 16
  %75 = sub nsw i32 %63, %74
  %76 = trunc i32 %75 to i16
  %77 = load i16, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 3), align 2
  %78 = select i1 %73, i16 %76, i16 %77
  %79 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 18
  store i16 %78, ptr %79, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @GetRenderLayerOffset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
