; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderPriority = type { i32, i8, i8, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderOrder = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderPriority = external dso_local local_unnamed_addr global ptr, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @InitializeRenderOrder() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @gRenderOrder, align 4
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i8 [ %9, %5 ], [ 0, %3 ]
  %7 = phi ptr [ %8, %5 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 1
  store i8 %6, ptr %7, align 1
  %9 = add nuw i8 %6, 1
  %10 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %11 = icmp ult i8 %9, %10
  br i1 %11, label %5, label %12

12:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeRenderPriority() local_unnamed_addr #1 {
  %1 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @gRenderPriority, align 4
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ 0, %3 ], [ %18, %5 ]
  %7 = phi ptr [ %4, %3 ], [ %17, %5 ]
  %8 = getelementptr inbounds %struct.RenderPriority, ptr %7, i32 0, i32 2
  %9 = trunc i32 %6 to i8
  store i8 %9, ptr %8, align 1
  %10 = tail call arm_apcscc i32 @GetRenderKey(i32 noundef %6) #3
  store i32 %10, ptr %7, align 4
  %11 = load ptr, ptr @gRenderSlots, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %11, i32 %6, i32 23, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = lshr i8 %13, 2
  %15 = and i8 %14, 3
  %16 = getelementptr inbounds %struct.RenderPriority, ptr %7, i32 0, i32 1
  store i8 %15, ptr %16, align 4
  %17 = getelementptr %struct.RenderPriority, ptr %7, i32 1
  %18 = add nuw nsw i32 %6, 1
  %19 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %20 = zext i8 %19 to i32
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %5, label %22

22:                                               ; preds = %5, %0
  ret void
}

declare dso_local arm_apcscc i32 @GetRenderKey(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
