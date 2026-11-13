; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackHideMapBank2RaisedSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 23, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 23, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = icmp sgt i32 %7, -1572864
  br i1 %8, label %50, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 24, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 24, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = icmp sgt i32 %14, -1572864
  br i1 %15, label %50, label %16

16:                                               ; preds = %9
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = icmp sgt i32 %21, -1572864
  br i1 %22, label %50, label %23

23:                                               ; preds = %16
  %24 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = icmp sgt i32 %28, -1572864
  br i1 %29, label %50, label %30

30:                                               ; preds = %23
  %31 = getelementptr %struct.RenderSlot, ptr %2, i32 27, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %2, i32 27, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = icmp sgt i32 %35, -1572864
  br i1 %36, label %50, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 467), align 1
  %39 = icmp ugt i8 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8, ptr @gRenderClassSlots2, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call arm_apcscc i32 @SetRenderAnimationAndClearBootGate(i32 noundef %42, ptr noundef nonnull inttoptr (i32 143452106 to ptr)) #3
  br label %44

44:                                               ; preds = %40, %37
  %45 = tail call arm_apcscc i32 @SetRenderField60Byte(i32 noundef 23, i32 noundef 0) #3
  %46 = tail call arm_apcscc i32 @SetRenderField60Byte(i32 noundef 24, i32 noundef 0) #3
  %47 = tail call arm_apcscc i32 @SetRenderField60Byte(i32 noundef 25, i32 noundef 0) #3
  %48 = tail call arm_apcscc i32 @SetRenderField60Byte(i32 noundef 26, i32 noundef 0) #3
  %49 = tail call arm_apcscc i32 @SetRenderField60Byte(i32 noundef 27, i32 noundef 0) #3
  br label %50

50:                                               ; preds = %1, %9, %16, %23, %30, %44
  ret i32 0
}

declare dso_local arm_apcscc i32 @SetRenderAnimationAndClearBootGate(...) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @SetRenderField60Byte(...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateMapBank2Control1D3() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 58), align 1
  switch i8 %1, label %5 [
    i8 1, label %6
    i8 3, label %6
    i8 5, label %2
  ]

2:                                                ; preds = %0
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 367) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0, %2
  br label %6

6:                                                ; preds = %2, %0, %0, %5
  %7 = phi i8 [ 1, %5 ], [ 2, %0 ], [ 2, %0 ], [ 3, %2 ]
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 467), align 1
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackLatchMapBank2Class2Z(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, -2621440
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %11

11:                                               ; preds = %10, %3
  store i32 1, ptr %2, align 4
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
