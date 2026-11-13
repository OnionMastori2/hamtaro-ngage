; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBootGate2170 = external dso_local local_unnamed_addr global i8, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gActorApproachMovingAnimations = external dso_local local_unnamed_addr global [0 x [4 x ptr]], align 4
@gActorApproachDirectionPairs = external dso_local local_unnamed_addr constant [0 x [2 x i32]], align 4
@gActorApproachIdleAnimations = external dso_local local_unnamed_addr global [0 x [4 x ptr]], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackApproachRenderSlot(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %13 = getelementptr i8, ptr %0, i32 5
  %14 = load i8, ptr %11, align 1
  %15 = getelementptr i8, ptr %0, i32 6
  %16 = load i8, ptr %13, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %0, i32 7
  %19 = load i8, ptr %15, align 1
  %20 = getelementptr i8, ptr %0, i32 8
  %21 = load i8, ptr %18, align 1
  %22 = getelementptr i8, ptr %0, i32 9
  %23 = load i8, ptr %20, align 1
  %24 = load i8, ptr %22, align 1
  %25 = add i32 %4, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load i8, ptr %26, align 1
  switch i8 %27, label %133 [
    i8 0, label %28
    i8 1, label %35
  ]

28:                                               ; preds = %1
  %29 = load i8, ptr @gRenderClassSlots1, align 1
  %30 = icmp eq i8 %16, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8 0, ptr @gBootGate2170, align 1
  br label %32

32:                                               ; preds = %31, %28
  %33 = add nuw nsw i32 %4, 1
  %34 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %33
  store i8 -128, ptr %34, align 1
  store i8 1, ptr %26, align 1
  br label %35

35:                                               ; preds = %1, %32
  %36 = load ptr, ptr @gRenderSlots, align 4
  %37 = getelementptr %struct.RenderSlot, ptr %36, i32 %10, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.RenderSlot, ptr %36, i32 %10, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = sext i8 %12 to i32
  %43 = getelementptr %struct.RenderSlot, ptr %36, i32 %10, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.RenderSlot, ptr %36, i32 %10, i32 6, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = sext i8 %14 to i32
  %49 = getelementptr %struct.RenderSlot, ptr %36, i32 %17, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = sext i8 %19 to i32
  %52 = getelementptr %struct.RenderSlot, ptr %36, i32 %17, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = sext i8 %21 to i32
  %55 = lshr i32 %41, 16
  %56 = lshr i32 %50, 16
  %57 = add nsw i32 %55, %42
  %58 = add nsw i32 %56, %51
  %59 = sub nsw i32 %57, %58
  %60 = lshr i32 %47, 16
  %61 = lshr i32 %53, 16
  %62 = add nsw i32 %60, %48
  %63 = add nsw i32 %61, %54
  %64 = sub nsw i32 %62, %63
  %65 = shl i32 %59, 16
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %64, 65535
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %70, label %109

70:                                               ; preds = %35
  %71 = icmp eq i8 %24, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = shl i32 %64, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %82

75:                                               ; preds = %70
  br i1 %66, label %76, label %80

76:                                               ; preds = %75, %72
  %77 = icmp slt i32 %65, 0
  %78 = select i1 %77, i16 2, i16 3
  switch i32 %65, label %87 [
    i32 -65536, label %79
    i32 65536, label %79
  ]

79:                                               ; preds = %76, %76
  br label %87

80:                                               ; preds = %75
  %81 = shl i32 %64, 16
  br label %82

82:                                               ; preds = %72, %80
  %83 = phi i32 [ %73, %72 ], [ %81, %80 ]
  %84 = icmp sgt i32 %83, -1
  %85 = zext i1 %84 to i16
  switch i32 %83, label %87 [
    i32 -65536, label %86
    i32 65536, label %86
  ]

86:                                               ; preds = %82, %82
  br label %87

87:                                               ; preds = %82, %76, %86, %79
  %88 = phi i16 [ %85, %86 ], [ %85, %82 ], [ %78, %79 ], [ %78, %76 ]
  %89 = phi i8 [ 1, %86 ], [ %23, %82 ], [ 1, %79 ], [ %23, %76 ]
  %90 = zext i8 %89 to i32
  %91 = add i32 %4, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 1)
  %92 = inttoptr i32 %91 to ptr
  %93 = load i8, ptr %92, align 1
  %94 = zext nneg i16 %88 to i32
  %95 = zext i8 %93 to i16
  %96 = icmp eq i16 %88, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %87
  %98 = getelementptr [0 x [4 x ptr]], ptr @gActorApproachMovingAnimations, i32 0, i32 %7, i32 %94
  %99 = load ptr, ptr %98, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %17, ptr noundef %99) #2
  br label %100

100:                                              ; preds = %97, %87
  %101 = getelementptr [0 x [2 x i32]], ptr @gActorApproachDirectionPairs, i32 0, i32 %94
  %102 = load i32, ptr %101, align 4
  %103 = shl nuw nsw i32 %90, 16
  %104 = mul i32 %103, %102
  %105 = getelementptr [0 x [2 x i32]], ptr @gActorApproachDirectionPairs, i32 0, i32 %94, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = mul i32 %103, %106
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %17, i32 noundef %104, i32 noundef 0, i32 noundef %107) #2
  %108 = trunc i16 %88 to i8
  store i8 %108, ptr %92, align 1
  br label %133

109:                                              ; preds = %35
  %110 = add i32 %4, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 1)
  %111 = inttoptr i32 %110 to ptr
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, -128
  br i1 %113, label %125, label %114

114:                                              ; preds = %109
  %115 = zext i8 %112 to i32
  %116 = getelementptr [0 x [4 x ptr]], ptr @gActorApproachIdleAnimations, i32 0, i32 %7, i32 %115
  %117 = load ptr, ptr %116, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %17, ptr noundef %117) #2
  %118 = getelementptr %struct.RenderSlot, ptr %36, i32 %17, i32 23
  %119 = load i8, ptr %118, align 4
  %120 = and i8 %119, -16
  %121 = or disjoint i8 %120, 1
  %122 = load i8, ptr %111, align 1
  %123 = add i8 %121, %122
  %124 = zext i8 %123 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %17, i32 noundef %124) #2
  br label %125

125:                                              ; preds = %114, %109
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %126 = load i32, ptr %49, align 4
  %127 = and i32 %126, -65536
  %128 = or disjoint i32 %127, 32768
  store i32 %128, ptr %49, align 4
  %129 = load i32, ptr %52, align 4
  %130 = and i32 %129, -65536
  %131 = or disjoint i32 %130, 32768
  store i32 %131, ptr %52, align 4
  %132 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %4
  store i8 2, ptr %132, align 1
  br label %133

133:                                              ; preds = %100, %125, %1
  ret i32 10
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
