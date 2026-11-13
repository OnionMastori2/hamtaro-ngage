; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gClassTransitionPrimaryAnimationFamilies00F8 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRepositionFollowerAndSelectAnimations(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr @gRenderClassSlots1, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 23
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 23
  store i8 %8, ptr %9, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %13 = zext i16 %12 to i32
  %14 = shl nuw i32 %13, 16
  %15 = add i32 %14, %11
  %16 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %20 = zext i16 %19 to i32
  %21 = shl nuw i32 %20, 16
  %22 = add i32 %21, %18
  %23 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 5
  store i32 %22, ptr %23, align 4
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %1
  %27 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 2, i8 noundef zeroext 0) #2
  %28 = lshr i16 %27, 1
  %29 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, 1
  %32 = getelementptr [0 x ptr], ptr @gClassTransitionPrimaryAnimationFamilies00F8, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = load i8, ptr %9, align 4
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = and i16 %28, 255
  %38 = zext nneg i16 %37 to i32
  %39 = getelementptr ptr, ptr %33, i32 %36
  %40 = getelementptr ptr, ptr %39, i32 -2
  %41 = getelementptr ptr, ptr %40, i32 %38
  %42 = load i8, ptr @gRenderClassSlots1, align 1
  %43 = load ptr, ptr %41, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %42, ptr noundef %43) #2
  %44 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %26
  %47 = zext i8 %44 to i32
  %48 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, 1
  %51 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = load i8, ptr %9, align 4
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 1
  %56 = getelementptr ptr, ptr %52, i32 %55
  %57 = getelementptr ptr, ptr %56, i32 -2
  %58 = getelementptr ptr, ptr %57, i32 %38
  %59 = load ptr, ptr @gRenderSlots, align 4
  %60 = getelementptr %struct.RenderSlot, ptr %59, i32 %47, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = inttoptr i32 %61 to ptr
  %63 = load ptr, ptr %58, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %66, label %65

65:                                               ; preds = %46
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %44, ptr noundef %63) #2
  br label %66

66:                                               ; preds = %46, %65, %26
  %67 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  store i16 %67, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  br label %68

68:                                               ; preds = %66, %1
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
