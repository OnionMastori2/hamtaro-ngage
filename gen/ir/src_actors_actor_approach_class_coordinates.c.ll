; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBootGate2170 = external dso_local local_unnamed_addr global i8, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gActorApproachMovingAnimations = external dso_local local_unnamed_addr global [0 x [4 x ptr]], align 4
@gActorApproachDirectionPairs = external dso_local local_unnamed_addr constant [0 x [2 x i32]], align 4
@gActorApproachIdleAnimations = external dso_local local_unnamed_addr global [0 x [4 x ptr]], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackApproachClassCoordinates(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 3
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %0, i32 4
  %12 = load i8, ptr %8, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %0, i32 5
  %15 = load i8, ptr %11, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %0, i32 6
  %18 = load i8, ptr %14, align 1
  %19 = getelementptr i8, ptr %0, i32 7
  %20 = load i8, ptr %17, align 1
  %21 = getelementptr i8, ptr %0, i32 8
  %22 = load i8, ptr %19, align 1
  %23 = load i8, ptr %21, align 1
  %24 = add i32 %4, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %119 [
    i8 0, label %27
    i8 1, label %34
  ]

27:                                               ; preds = %1
  %28 = load i8, ptr @gRenderClassSlots1, align 1
  %29 = icmp eq i8 %15, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8 0, ptr @gBootGate2170, align 1
  br label %31

31:                                               ; preds = %30, %27
  %32 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %4
  %33 = getelementptr i8, ptr %32, i32 1
  store i8 -128, ptr %33, align 1
  store i8 1, ptr %25, align 1
  br label %34

34:                                               ; preds = %1, %31
  %35 = load ptr, ptr @gRenderSlots, align 4
  %36 = shl nuw nsw i32 %7, 1
  %37 = add i32 %36, ptrtoint (ptr @gAnimationClassValues to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = shl nuw nsw i32 %10, 1
  %40 = add i32 %39, ptrtoint (ptr @gAnimationClassValues to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr %struct.RenderSlot, ptr %35, i32 %16, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = sext i8 %18 to i32
  %45 = getelementptr %struct.RenderSlot, ptr %35, i32 %16, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = sext i8 %20 to i32
  %48 = load i16, ptr %38, align 2
  %49 = lshr i32 %43, 16
  %50 = add nsw i32 %49, %44
  %51 = trunc i32 %50 to i16
  %52 = sub i16 %48, %51
  %53 = load i16, ptr %41, align 2
  %54 = lshr i32 %46, 16
  %55 = add nsw i32 %54, %47
  %56 = trunc i32 %55 to i16
  %57 = sub i16 %53, %56
  %58 = icmp ne i16 %48, %51
  %59 = icmp ne i16 %53, %56
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %34
  %62 = icmp eq i8 %23, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = icmp eq i16 %53, %56
  br i1 %64, label %66, label %70

65:                                               ; preds = %61
  br i1 %58, label %66, label %70

66:                                               ; preds = %65, %63
  %67 = icmp slt i16 %52, 0
  %68 = select i1 %67, i16 2, i16 3
  switch i16 %52, label %74 [
    i16 -1, label %69
    i16 1, label %69
  ]

69:                                               ; preds = %66, %66
  br label %74

70:                                               ; preds = %65, %63
  %71 = icmp sgt i16 %57, -1
  %72 = zext i1 %71 to i16
  switch i16 %57, label %74 [
    i16 -1, label %73
    i16 1, label %73
  ]

73:                                               ; preds = %70, %70
  br label %74

74:                                               ; preds = %70, %66, %73, %69
  %75 = phi i16 [ %72, %73 ], [ %72, %70 ], [ %68, %69 ], [ %68, %66 ]
  %76 = phi i8 [ 1, %73 ], [ %22, %70 ], [ 1, %69 ], [ %22, %66 ]
  %77 = zext i8 %76 to i32
  %78 = add i32 %4, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 1)
  %79 = inttoptr i32 %78 to ptr
  %80 = load i8, ptr %79, align 1
  %81 = zext nneg i16 %75 to i32
  %82 = zext i8 %80 to i16
  %83 = icmp eq i16 %75, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = getelementptr [0 x [4 x ptr]], ptr @gActorApproachMovingAnimations, i32 0, i32 %13, i32 %81
  %86 = load ptr, ptr %85, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %16, ptr noundef %86) #2
  br label %87

87:                                               ; preds = %84, %74
  %88 = getelementptr [0 x [2 x i32]], ptr @gActorApproachDirectionPairs, i32 0, i32 %81
  %89 = load i32, ptr %88, align 4
  %90 = shl nuw nsw i32 %77, 16
  %91 = mul i32 %90, %89
  %92 = getelementptr [0 x [2 x i32]], ptr @gActorApproachDirectionPairs, i32 0, i32 %81, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = mul i32 %90, %93
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %16, i32 noundef %91, i32 noundef 0, i32 noundef %94) #2
  %95 = trunc i16 %75 to i8
  store i8 %95, ptr %79, align 1
  br label %119

96:                                               ; preds = %34
  %97 = add i32 %4, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 1)
  %98 = inttoptr i32 %97 to ptr
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, -128
  br i1 %100, label %112, label %101

101:                                              ; preds = %96
  %102 = zext i8 %99 to i32
  %103 = getelementptr [0 x [4 x ptr]], ptr @gActorApproachIdleAnimations, i32 0, i32 %13, i32 %102
  %104 = load ptr, ptr %103, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %16, ptr noundef %104) #2
  %105 = getelementptr %struct.RenderSlot, ptr %35, i32 %16, i32 23
  %106 = load i8, ptr %105, align 4
  %107 = and i8 %106, -16
  %108 = or disjoint i8 %107, 1
  %109 = load i8, ptr %98, align 1
  %110 = add i8 %108, %109
  %111 = zext i8 %110 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %16, i32 noundef %111) #2
  br label %112

112:                                              ; preds = %101, %96
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %113 = load i32, ptr %42, align 4
  %114 = and i32 %113, -65536
  %115 = or disjoint i32 %114, 32768
  store i32 %115, ptr %42, align 4
  %116 = load i32, ptr %45, align 4
  %117 = and i32 %116, -65536
  %118 = or disjoint i32 %117, 32768
  store i32 %118, ptr %45, align 4
  store i8 2, ptr %25, align 1
  br label %119

119:                                              ; preds = %87, %112, %1
  ret i32 9
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
