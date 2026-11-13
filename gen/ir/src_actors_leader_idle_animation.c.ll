; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptWord0778 = external dso_local local_unnamed_addr global i32, align 4
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetLeaderIdleRenderAnimations() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 23
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -1
  store i32 0, ptr @gCoreScriptWord0778, align 4
  %8 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 1
  %11 = or disjoint i32 %10, 1
  %12 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %7 to i32
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = ptrtoint ptr %16 to i32
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %0
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %3, ptr noundef %16) #2
  br label %22

22:                                               ; preds = %21, %0
  %23 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 1
  %26 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = shl nuw nsw i32 %14, 1
  %29 = getelementptr ptr, ptr %27, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr @gCoreScriptByte2274, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr @gRenderSlots, align 4
  %36 = getelementptr %struct.RenderSlot, ptr %35, i32 %32, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = ptrtoint ptr %30 to i32
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %32, ptr noundef %30) #2
  br label %41

41:                                               ; preds = %40, %34, %22
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
