; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCopyRenderSlotBytes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  %6 = getelementptr i8, ptr %0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %8
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %5, %1 ], [ %14, %10 ]
  %12 = phi ptr [ %9, %1 ], [ %16, %10 ]
  %13 = phi i32 [ 0, %1 ], [ %17, %10 ]
  %14 = getelementptr i8, ptr %11, i32 1
  %15 = load i8, ptr %11, align 1
  %16 = getelementptr i8, ptr %12, i32 1
  store i8 %15, ptr %12, align 1
  %17 = add nuw nsw i32 %13, 1
  %18 = icmp eq i32 %17, 104
  br i1 %18, label %19, label %10

19:                                               ; preds = %10
  ret i32 2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSwapRenderSlotBytes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  %6 = getelementptr i8, ptr %0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %8
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %9, %1 ], [ %16, %10 ]
  %12 = phi i32 [ 0, %1 ], [ %18, %10 ]
  %13 = phi ptr [ %5, %1 ], [ %17, %10 ]
  %14 = load i8, ptr %11, align 1
  %15 = load i8, ptr %13, align 1
  %16 = getelementptr i8, ptr %11, i32 1
  store i8 %15, ptr %11, align 1
  %17 = getelementptr i8, ptr %13, i32 1
  store i8 %14, ptr %13, align 1
  %18 = add nuw nsw i32 %12, 1
  %19 = icmp eq i32 %18, 104
  br i1 %19, label %20, label %10

20:                                               ; preds = %10
  ret i32 2
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
