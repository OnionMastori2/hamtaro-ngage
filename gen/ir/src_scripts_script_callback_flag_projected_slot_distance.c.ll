; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackFlagProjectedSlotDistance(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr %5, align 1
  %9 = zext i8 %8 to i32
  %10 = load ptr, ptr @gRenderSlots, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %10, i32 %7, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %10, i32 %4, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -65536
  %16 = sub i32 %12, %15
  %17 = ashr i32 %16, 16
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = shl nuw i32 %18, 16
  %20 = ashr exact i32 %19, 16
  %21 = icmp slt i32 %20, %9
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = getelementptr %struct.RenderSlot, ptr %10, i32 %7, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.RenderSlot, ptr %10, i32 %7, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = getelementptr %struct.RenderSlot, ptr %10, i32 %4, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.RenderSlot, ptr %10, i32 %4, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = and i32 %32, -65536
  %34 = sub i32 %27, %33
  %35 = ashr i32 %34, 16
  %36 = tail call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = getelementptr i8, ptr %0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 %36, 16
  %41 = ashr exact i32 %40, 16
  %42 = icmp slt i32 %41, %39
  br i1 %42, label %44, label %43

43:                                               ; preds = %22, %1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %44

44:                                               ; preds = %43, %22
  ret i32 4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
