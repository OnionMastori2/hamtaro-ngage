; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapParticleEffect = type { i8, i8, [2 x i8], ptr }
%struct.MapParticleParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gMapParticleEffect = external dso_local local_unnamed_addr global %struct.MapParticleEffect, align 4
@gMapParticleParameters = external dso_local constant [0 x %struct.MapParticleParameters], align 4
@gMapParticleRenderSlotIndices = external dso_local global [0 x i32], align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStartMapParticleEffect(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 1, ptr @gMapParticleEffect, align 4
  store i8 14, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  store ptr @gMapParticleParameters, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  tail call arm_apcscc void @InitializeMapParticleRenderSlots() #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeMapParticleRenderSlots() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %64, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %52, %5 ], [ %4, %3 ]
  %7 = phi i32 [ %60, %5 ], [ 0, %3 ]
  %8 = shl nuw nsw i32 %7, 2
  %9 = add i32 %8, ptrtoint (ptr @gMapParticleRenderSlotIndices to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = mul nuw nsw i32 %7, 28
  %12 = ptrtoint ptr %6 to i32
  %13 = add i32 %11, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.MapParticleParameters, ptr %14, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %10, align 4
  %19 = trunc i32 %18 to i8
  %20 = shl i32 %15, 16
  %21 = add i32 %20, -1048576
  %22 = ashr exact i32 %21, 16
  %23 = shl i32 %17, 16
  %24 = add i32 %23, 16777216
  %25 = ashr exact i32 %24, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %22, i32 noundef -256, i32 noundef %25, ptr noundef nonnull inttoptr (i32 143551088 to ptr)) #3
  %26 = load ptr, ptr @gRenderSlots, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = mul i32 %18, 104
  %29 = add i32 %28, %27
  %30 = inttoptr i32 %29 to ptr
  %31 = load ptr, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = add i32 %11, %32
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.MapParticleParameters, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 6
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.MapParticleParameters, ptr %34, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.RenderSlot, ptr %30, i32 0, i32 6, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.MapParticleParameters, ptr %34, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 7
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.MapParticleParameters, ptr %34, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.RenderSlot, ptr %30, i32 0, i32 7, i32 2
  store i32 %45, ptr %46, align 4
  %47 = tail call i32 asm sideeffect "", "=r,0"(i32 128) #4, !srcloc !4
  %48 = trunc i32 %47 to i16
  %49 = shl i16 %48, 1
  %50 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 8
  store i16 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 9
  store i16 %49, ptr %51, align 2
  %52 = load ptr, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  %53 = getelementptr %struct.MapParticleParameters, ptr %52, i32 %7, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 12
  store i16 %55, ptr %56, align 4
  %57 = load i32, ptr %53, align 4
  %58 = trunc i32 %57 to i16
  %59 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 13
  store i16 %58, ptr %59, align 2
  %60 = add nuw nsw i32 %7, 1
  %61 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %5, label %64

64:                                               ; preds = %5, %0
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapParticleEffect(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderStates, align 4
  %3 = getelementptr %struct.BackgroundRenderState, ptr %2, i32 4, i32 9
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8 0, ptr @gMapParticleEffect, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %78, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @gRenderSlots, align 4
  br label %12

12:                                               ; preds = %10, %72
  %13 = phi i8 [ %73, %72 ], [ %8, %10 ]
  %14 = phi ptr [ %74, %72 ], [ %11, %10 ]
  %15 = phi i32 [ %75, %72 ], [ 0, %10 ]
  %16 = getelementptr [0 x i32], ptr @gMapParticleRenderSlotIndices, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = ptrtoint ptr %14 to i32
  %19 = mul i32 %17, 104
  %20 = add i32 %19, %18
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -23068673
  %25 = icmp ult i32 %24, -25165825
  br i1 %25, label %30, label %26

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %21, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 32505856
  br i1 %29, label %30, label %72

30:                                               ; preds = %26, %12
  %31 = trunc i32 %17 to i8
  %32 = mul nuw nsw i32 %15, 28
  %33 = load ptr, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = add i32 %32, %34
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 16
  %39 = add i32 %38, -1048576
  %40 = ashr exact i32 %39, 16
  %41 = getelementptr inbounds %struct.MapParticleParameters, ptr %36, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 16
  %44 = add i32 %43, 16777216
  %45 = ashr exact i32 %44, 16
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext %31, i32 noundef %40, i32 noundef -256, i32 noundef %45) #3
  %46 = load ptr, ptr @gRenderSlots, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = add i32 %19, %47
  %49 = inttoptr i32 %48 to ptr
  %50 = load ptr, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = add i32 %32, %51
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.MapParticleParameters, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 6
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.MapParticleParameters, ptr %53, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.RenderSlot, ptr %49, i32 0, i32 6, i32 2
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 8
  store i16 256, ptr %60, align 4
  %61 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 9
  store i16 256, ptr %61, align 2
  %62 = load ptr, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  %63 = getelementptr %struct.MapParticleParameters, ptr %62, i32 %15, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = trunc i32 %64 to i16
  %66 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 12
  store i16 %65, ptr %66, align 4
  %67 = load i32, ptr %63, align 4
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 13
  store i16 %68, ptr %69, align 2
  %70 = load ptr, ptr @gRenderSlots, align 4
  %71 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  br label %72

72:                                               ; preds = %30, %26
  %73 = phi i8 [ %71, %30 ], [ %13, %26 ]
  %74 = phi ptr [ %70, %30 ], [ %14, %26 ]
  %75 = add nuw nsw i32 %15, 1
  %76 = zext i8 %73 to i32
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %12, label %78

78:                                               ; preds = %72, %7
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackHideMapParticleEffect(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %7, %4 ], [ @gMapParticleRenderSlotIndices, %1 ]
  %7 = getelementptr i32, ptr %6, i32 1
  %8 = load i32, ptr %6, align 4
  %9 = trunc i32 %8 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %9, i8 noundef zeroext 0) #3
  %10 = add nuw nsw i32 %5, 1
  %11 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %4, label %14

14:                                               ; preds = %4, %1
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1986}
