; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRasterEffectKind = external dso_local local_unnamed_addr global i8, align 1
@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.GraphicsAllocateRasterEffect = private unnamed_addr constant [8 x i32] [i32 7, i32 7, i32 9, i32 9, i32 258, i32 7, i32 9, i32 6], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsAllocateRasterEffect(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1
  store i8 %3, ptr @gRasterEffectKind, align 1
  %4 = load ptr, ptr @gRasterEffect, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %4) #2
  store ptr null, ptr @gRasterEffect, align 4
  %8 = load i8, ptr @gRasterEffectKind, align 1
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i8 [ %8, %6 ], [ %3, %2 ]
  %11 = add i8 %10, -1
  %12 = icmp ult i8 %11, 8
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = zext nneg i8 %11 to i32
  %15 = getelementptr inbounds [8 x i32], ptr @switch.table.GraphicsAllocateRasterEffect, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %16) #2
  store ptr %17, ptr @gRasterEffect, align 4
  br label %18

18:                                               ; preds = %9, %13
  %19 = getelementptr i8, ptr %1, i32 1
  %20 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %19, ptr %20, align 4
  ret i32 1
}

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
