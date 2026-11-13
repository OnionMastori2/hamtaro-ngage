; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackFindRenderScreenCell(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = tail call arm_apcscc i32 @BiosDiv(i32 noundef 240, i32 noundef %5) #2
  %7 = tail call arm_apcscc i32 @BiosDiv(i32 noundef 160, i32 noundef %5) #2
  %8 = load ptr, ptr @gRenderSlots, align 4
  store i8 -128, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %9 = icmp eq i8 %4, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = zext i8 %2 to i32
  %12 = getelementptr %struct.RenderSlot, ptr %8, i32 %11, i32 17
  %13 = getelementptr %struct.RenderSlot, ptr %8, i32 %11, i32 18
  br label %14

14:                                               ; preds = %35, %10
  %15 = phi i32 [ %6, %10 ], [ %38, %35 ]
  %16 = phi i32 [ 0, %10 ], [ %37, %35 ]
  %17 = load i16, ptr %12, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %31
  %21 = phi i32 [ %7, %14 ], [ %33, %31 ]
  %22 = phi i32 [ 0, %14 ], [ %32, %31 ]
  br i1 %19, label %23, label %31

23:                                               ; preds = %20
  %24 = load i16, ptr %13, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = mul nuw nsw i32 %16, %5
  %29 = add nsw i32 %22, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %35

31:                                               ; preds = %20, %23
  %32 = add nuw nsw i32 %22, 1
  %33 = add i32 %21, %7
  %34 = icmp eq i32 %32, %5
  br i1 %34, label %35, label %20

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %5, %27 ], [ %16, %31 ]
  %37 = add nuw nsw i32 %36, 1
  %38 = add i32 %15, %6
  %39 = icmp slt i32 %37, %5
  br i1 %39, label %14, label %40

40:                                               ; preds = %35, %1
  ret i32 2
}

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
