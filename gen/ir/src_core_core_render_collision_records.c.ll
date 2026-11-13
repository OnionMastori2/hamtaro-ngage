; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.RenderXZCollisionRecord = type { i16, i16, i16, i16, i16, i16, i16, i16 }

@gMainScriptDestinationWords21F0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gCoreScriptByte2174 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ProcessCoreRenderCollisionRecords(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @gMainScriptDestinationWords21F0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %106, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %7 = zext i8 %6 to i16
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = zext i8 %1 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %8, i32 %9, i32 3
  %11 = getelementptr %struct.RenderSlot, ptr %8, i32 %9, i32 6
  %12 = getelementptr %struct.RenderSlot, ptr %8, i32 %9, i32 5
  %13 = getelementptr %struct.RenderSlot, ptr %8, i32 %9, i32 6, i32 2
  %14 = and i8 %0, 8
  %15 = icmp eq i8 %14, 0
  br label %16

16:                                               ; preds = %5, %101
  %17 = phi i32 [ %3, %5 ], [ %104, %101 ]
  %18 = phi i32 [ 0, %5 ], [ %102, %101 ]
  %19 = inttoptr i32 %17 to ptr
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ugt i16 %20, %7
  br i1 %22, label %106, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %19, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %99

28:                                               ; preds = %23
  %29 = getelementptr %struct.RenderSlot, ptr %8, i32 %21, i32 23
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %99, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %19, i32 0, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call arm_apcscc zeroext i16 @QueryRenderXZRectangleRecord(i8 noundef zeroext %1, ptr noundef nonnull %19) #3
  br label %86

38:                                               ; preds = %32
  %39 = getelementptr %struct.RenderSlot, ptr %8, i32 %21, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.RenderSlot, ptr %8, i32 %21, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  %44 = sdiv i32 %43, -65536
  %45 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %19, i32 0, i32 4
  %46 = load i16, ptr %45, align 2
  %47 = trunc i32 %44 to i16
  %48 = getelementptr %struct.RenderSlot, ptr %8, i32 %21, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.RenderSlot, ptr %8, i32 %21, i32 6, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  %53 = sdiv i32 %52, -65536
  %54 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %19, i32 0, i32 5
  %55 = load i16, ptr %54, align 2
  %56 = trunc i32 %53 to i16
  %57 = load i32, ptr %10, align 4
  %58 = load i32, ptr %11, align 4
  %59 = add i32 %57, 1048576
  %60 = add i32 %59, %58
  %61 = sdiv i32 %60, 65536
  %62 = load i32, ptr %12, align 4
  %63 = load i32, ptr %13, align 4
  %64 = add i32 %62, 1572864
  %65 = add i32 %64, %63
  %66 = sdiv i32 %65, 65536
  %67 = trunc i32 %61 to i16
  %68 = sub i16 %47, %46
  %69 = add i16 %68, %67
  %70 = sext i16 %69 to i32
  %71 = mul nsw i32 %70, %70
  %72 = trunc i32 %66 to i16
  %73 = sub i16 %56, %55
  %74 = add i16 %73, %72
  %75 = sext i16 %74 to i32
  %76 = mul nsw i32 %75, %75
  %77 = add nuw i32 %76, %71
  %78 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %19, i32 0, i32 6
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = mul nuw i32 %80, %80
  %82 = icmp ugt i32 %81, %77
  br i1 %82, label %83, label %97

83:                                               ; preds = %38
  %84 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %19, i32 0, i32 1
  %85 = load i16, ptr %84, align 2
  br label %86

86:                                               ; preds = %83, %36
  %87 = phi i16 [ %37, %36 ], [ %85, %83 ]
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = and i16 %25, 1
  %91 = icmp eq i16 %90, 0
  %92 = and i1 %15, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = zext i16 %87 to i32
  tail call arm_apcscc void @StageRenderXZCollisionScript(i32 noundef %94) #4
  %95 = load i16, ptr %19, align 2
  %96 = trunc i16 %95 to i8
  store i8 %96, ptr @gCoreScriptByte2174, align 1
  br label %106

97:                                               ; preds = %89, %38, %86
  %98 = icmp ugt i32 %18, 30
  br i1 %98, label %106, label %101

99:                                               ; preds = %28, %23
  %100 = icmp ugt i32 %18, 30
  br i1 %100, label %106, label %101

101:                                              ; preds = %99, %97
  %102 = add nuw nsw i32 %18, 1
  %103 = getelementptr [0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %16

106:                                              ; preds = %16, %99, %101, %97, %2, %93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i16 @QueryRenderXZRectangleRecord(i8 noundef zeroext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
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
  %43 = and i32 %42, -65536
  %44 = ashr i32 %37, 16
  %45 = sext i16 %16 to i32
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %64, label %47

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 6
  %49 = load i16, ptr %48, align 2
  %50 = add i16 %49, %14
  %51 = sext i16 %50 to i32
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = zext i16 %27 to i32
  %55 = shl nuw i32 %54, 16
  %56 = icmp sge i32 %43, %55
  %57 = ashr i32 %42, 16
  %58 = sext i16 %31 to i32
  %59 = icmp slt i32 %57, %58
  %60 = select i1 %56, i1 %59, i1 false
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 1
  %63 = load i16, ptr %62, align 2
  br label %64

64:                                               ; preds = %53, %61, %47, %2
  %65 = phi i16 [ 0, %2 ], [ 0, %47 ], [ 0, %53 ], [ %63, %61 ]
  ret i16 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i16 @QueryRenderXZCircleRecord(i8 noundef zeroext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = sdiv i32 %10, -65536
  %12 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = trunc i32 %11 to i16
  %15 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = sdiv i32 %19, -65536
  %21 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = trunc i32 %20 to i16
  %24 = zext i8 %0 to i32
  %25 = getelementptr %struct.RenderSlot, ptr %3, i32 %24, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.RenderSlot, ptr %3, i32 %24, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %26, 1048576
  %30 = add i32 %29, %28
  %31 = sdiv i32 %30, 65536
  %32 = getelementptr %struct.RenderSlot, ptr %3, i32 %24, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.RenderSlot, ptr %3, i32 %24, i32 6, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %33, 1572864
  %37 = add i32 %36, %35
  %38 = sdiv i32 %37, 65536
  %39 = trunc i32 %31 to i16
  %40 = sub i16 %14, %13
  %41 = add i16 %40, %39
  %42 = sext i16 %41 to i32
  %43 = mul nsw i32 %42, %42
  %44 = trunc i32 %38 to i16
  %45 = sub i16 %23, %22
  %46 = add i16 %45, %44
  %47 = sext i16 %46 to i32
  %48 = mul nsw i32 %47, %47
  %49 = add nuw i32 %48, %43
  %50 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 6
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = mul nuw i32 %52, %52
  %54 = icmp ugt i32 %53, %49
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  br label %58

58:                                               ; preds = %55, %2
  %59 = phi i16 [ %57, %55 ], [ 0, %2 ]
  ret i16 %59
}

declare dso_local arm_apcscc void @StageRenderXZCollisionScript(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
