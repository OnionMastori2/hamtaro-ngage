; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.RenderXZCollisionRecord = type { i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2174 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1F8C = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @ResolveRenderXZRecordRectangle(i8 noundef zeroext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = lshr i32 %10, 16
  %12 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = trunc i32 %11 to i16
  %15 = add i16 %13, -40
  %16 = add i16 %15, %14
  %17 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = lshr i32 %21, 16
  %23 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 5
  %24 = load i16, ptr %23, align 2
  %25 = trunc i32 %22 to i16
  %26 = add i16 %24, -32
  %27 = add i16 %26, %25
  %28 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 7
  %29 = load i16, ptr %28, align 2
  %30 = add i16 %29, 8
  %31 = add i16 %30, %25
  %32 = zext i8 %0 to i32
  %33 = getelementptr %struct.RenderSlot, ptr %3, i32 %32, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.RenderSlot, ptr %3, i32 %32, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %34
  %38 = getelementptr %struct.RenderSlot, ptr %3, i32 %32, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.RenderSlot, ptr %3, i32 %32, i32 6, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = tail call i32 asm "", "=r,0,~{r6}"(i32 %37) #1, !srcloc !4
  %44 = ashr i32 %43, 16
  %45 = sext i16 %16 to i32
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %108, label %47

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 6
  %49 = load i16, ptr %48, align 2
  %50 = add i16 %49, %14
  %51 = sext i16 %50 to i32
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %108

53:                                               ; preds = %47
  %54 = ashr i32 %42, 16
  %55 = sext i16 %27 to i32
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %108, label %57

57:                                               ; preds = %53
  %58 = sext i16 %31 to i32
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %57
  %61 = sub nsw i32 %51, %45
  %62 = mul nsw i32 %61, %54
  %63 = sub nsw i32 %55, %58
  %64 = sub nsw i32 %44, %45
  %65 = mul i32 %63, %64
  %66 = mul nsw i32 %61, %55
  %67 = sub i32 %65, %66
  %68 = add i32 %67, %62
  %69 = sub nsw i32 %58, %55
  %70 = mul i32 %69, %64
  %71 = mul nsw i32 %61, %58
  %72 = sub i32 %70, %71
  %73 = add i32 %72, %62
  %74 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %75 = or i8 %74, 8
  store i8 %75, ptr @gCoreScriptByte1FA8, align 1
  %76 = load i16, ptr %1, align 2
  %77 = trunc i16 %76 to i8
  store i8 %77, ptr @gCoreScriptByte2174, align 1
  %78 = icmp sgt i32 %68, -1
  %79 = icmp sgt i32 %73, -1
  br i1 %78, label %80, label %93

80:                                               ; preds = %60
  br i1 %79, label %81, label %87

81:                                               ; preds = %80
  %82 = shl nsw i32 %58, 16
  %83 = or disjoint i32 %82, 32768
  %84 = load i32, ptr %38, align 4
  %85 = sub i32 %83, %84
  store i32 %85, ptr %40, align 4
  %86 = icmp eq i32 %83, %84
  br i1 %86, label %108, label %106

87:                                               ; preds = %80
  %88 = shl nsw i32 %45, 16
  %89 = or disjoint i32 %88, 32768
  %90 = load i32, ptr %33, align 4
  %91 = sub i32 %89, %90
  store i32 %91, ptr %35, align 4
  %92 = icmp eq i32 %89, %90
  br i1 %92, label %108, label %106

93:                                               ; preds = %60
  br i1 %79, label %94, label %100

94:                                               ; preds = %93
  %95 = shl nsw i32 %51, 16
  %96 = or disjoint i32 %95, 32768
  %97 = load i32, ptr %33, align 4
  %98 = sub i32 %96, %97
  store i32 %98, ptr %35, align 4
  %99 = icmp eq i32 %96, %97
  br i1 %99, label %108, label %106

100:                                              ; preds = %93
  %101 = shl nsw i32 %55, 16
  %102 = or disjoint i32 %101, 32768
  %103 = load i32, ptr %38, align 4
  %104 = sub i32 %102, %103
  store i32 %104, ptr %40, align 4
  %105 = icmp eq i32 %102, %103
  br i1 %105, label %108, label %106

106:                                              ; preds = %100, %94, %87, %81
  %107 = phi i8 [ 2, %81 ], [ 3, %87 ], [ 4, %94 ], [ 1, %100 ]
  store i8 %107, ptr @gCoreScriptByte1F8C, align 1
  br label %108

108:                                              ; preds = %106, %81, %87, %94, %100, %57, %53, %47, %2
  ret void
}

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1247}
