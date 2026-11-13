; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshWordChoiceAnimations() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 15
  %11 = add nsw i8 %10, -1
  %12 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %13 = xor i8 %12, 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 1
  %16 = or disjoint i32 %15, 1
  %17 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = zext i8 %11 to i32
  %20 = getelementptr ptr, ptr %18, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = ptrtoint ptr %21 to i32
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %0
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef %21) #2
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 1
  %31 = or disjoint i32 %30, 1
  %32 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = shl nuw nsw i32 %19, 1
  %35 = getelementptr ptr, ptr %33, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %27
  %41 = load ptr, ptr @gRenderSlots, align 4
  %42 = getelementptr %struct.RenderSlot, ptr %41, i32 %38, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = ptrtoint ptr %36 to i32
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %38, ptr noundef %36) #2
  br label %47

47:                                               ; preds = %46, %40, %27
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
