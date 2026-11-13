; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gObjectSizeTable = external dso_local local_unnamed_addr constant [24 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc zeroext i16 @GetObjectWidth(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %0, 11
  %4 = and i32 %3, 24
  %5 = lshr i32 %1, 13
  %6 = and i32 %5, 6
  %7 = or disjoint i32 %6, %4
  %8 = getelementptr [24 x i8], ptr @gObjectSizeTable, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  ret i16 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc zeroext i16 @GetObjectHeight(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %0, 11
  %4 = and i32 %3, 24
  %5 = lshr i32 %1, 13
  %6 = and i32 %5, 6
  %7 = or disjoint i32 %4, %6
  %8 = or disjoint i32 %7, 1
  %9 = getelementptr [24 x i8], ptr @gObjectSizeTable, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  ret i16 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef readnone %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %4 = zext i8 %3 to i32
  %5 = icmp ne i8 %3, 0
  %6 = icmp ne ptr %2, %0
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %18

8:                                                ; preds = %1, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %1 ]
  %10 = phi ptr [ %12, %8 ], [ %2, %1 ]
  %11 = add nuw nsw i32 %9, 1
  %12 = getelementptr %struct.RenderSlot, ptr %10, i32 1
  %13 = icmp ult i32 %11, %4
  %14 = icmp ne ptr %12, %0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %8, label %16

16:                                               ; preds = %8
  %17 = trunc i32 %11 to i8
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i8 [ 0, %1 ], [ %17, %16 ]
  %20 = phi i1 [ %5, %1 ], [ %13, %16 ]
  %21 = select i1 %20, i8 %19, i8 -1
  ret i8 %21
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
