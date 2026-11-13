; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ScrollTaskRenderSlotsUp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr @gRenderSlots, align 4
  br label %8

8:                                                ; preds = %5, %43
  %9 = phi ptr [ %7, %5 ], [ %44, %43 ]
  %10 = phi i32 [ 0, %5 ], [ %45, %43 ]
  %11 = add nuw nsw i32 %10, 3
  %12 = shl nuw nsw i32 16777216, %10
  %13 = lshr exact i32 %12, 24
  %14 = mul nuw nsw i32 %11, 104
  %15 = ptrtoint ptr %9 to i32
  %16 = add i32 %14, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 23
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %8
  %22 = load i8, ptr %6, align 2
  %23 = zext i8 %22 to i32
  %24 = and i32 %13, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -524288
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %2, align 4
  %31 = add i32 %30, 34
  %32 = inttoptr i32 %31 to ptr
  %33 = load i16, ptr %32, align 2
  %34 = sext i16 %33 to i32
  %35 = shl nsw i32 %34, 16
  %36 = icmp slt i32 %29, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load i8, ptr %6, align 2
  %39 = trunc i32 %13 to i8
  %40 = xor i8 %39, -1
  %41 = and i8 %38, %40
  store i8 %41, ptr %6, align 2
  tail call arm_apcscc void @SetRenderField60(i32 noundef %11, i32 noundef 0) #2
  %42 = load ptr, ptr @gRenderSlots, align 4
  br label %43

43:                                               ; preds = %26, %37, %21, %8
  %44 = phi ptr [ %9, %26 ], [ %42, %37 ], [ %9, %21 ], [ %9, %8 ]
  %45 = add nuw nsw i32 %10, 1
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %8

47:                                               ; preds = %43, %1
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @StepTaskRenderSlotsUp(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %101, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 10
  %7 = tail call i32 asm sideeffect "", "=r,0"(i32 16777216) #3, !srcloc !4
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %9, 312
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %11, i32 0, i32 23
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %5
  %16 = lshr i32 %7, 24
  %17 = load i8, ptr %6, align 2
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %11, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -524288
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %21, %15, %5
  %26 = tail call i32 asm sideeffect "", "=r,0"(i32 16777216) #3, !srcloc !4
  %27 = load ptr, ptr @gRenderSlots, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = add i32 %28, 416
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 23
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %25
  %35 = lshr i32 %26, 23
  %36 = load i8, ptr %6, align 2
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.RenderSlot, ptr %30, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -524288
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %34, %25
  %45 = tail call i32 asm sideeffect "", "=r,0"(i32 16777216) #3, !srcloc !4
  %46 = load ptr, ptr @gRenderSlots, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = add i32 %47, 520
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 23
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %44
  %54 = lshr i32 %45, 22
  %55 = load i8, ptr %6, align 2
  %56 = zext i8 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.RenderSlot, ptr %49, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -524288
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %59, %53, %44
  %64 = tail call i32 asm sideeffect "", "=r,0"(i32 16777216) #3, !srcloc !4
  %65 = load ptr, ptr @gRenderSlots, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = add i32 %66, 624
  %68 = inttoptr i32 %67 to ptr
  %69 = getelementptr inbounds %struct.RenderSlot, ptr %68, i32 0, i32 23
  %70 = load i8, ptr %69, align 4
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %63
  %73 = lshr i32 %64, 21
  %74 = load i8, ptr %6, align 2
  %75 = zext i8 %74 to i32
  %76 = and i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.RenderSlot, ptr %68, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -524288
  store i32 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %78, %72, %63
  %83 = tail call i32 asm sideeffect "", "=r,0"(i32 16777216) #3, !srcloc !4
  %84 = load ptr, ptr @gRenderSlots, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = add i32 %85, 728
  %87 = inttoptr i32 %86 to ptr
  %88 = getelementptr inbounds %struct.RenderSlot, ptr %87, i32 0, i32 23
  %89 = load i8, ptr %88, align 4
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %82
  %92 = lshr i32 %83, 20
  %93 = load i8, ptr %6, align 2
  %94 = zext i8 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.RenderSlot, ptr %87, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, -524288
  store i32 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %82, %91, %97, %1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @DisableTaskRenderSlots(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 3, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = load i8, ptr %6, align 2
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = tail call i32 asm "", "=r,0"(i32 %13) #4, !srcloc !5
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, -2
  store i8 %19, ptr %6, align 2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 3, i32 noundef 0) #2
  %20 = load ptr, ptr @gRenderSlots, align 4
  br label %21

21:                                               ; preds = %11, %16, %5
  %22 = phi ptr [ %7, %11 ], [ %20, %16 ], [ %7, %5 ]
  %23 = getelementptr %struct.RenderSlot, ptr %22, i32 4, i32 23
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %6, align 2
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = tail call i32 asm "", "=r,0"(i32 %28) #4, !srcloc !5
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, -3
  store i8 %34, ptr %6, align 2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 4, i32 noundef 0) #2
  %35 = load ptr, ptr @gRenderSlots, align 4
  br label %36

36:                                               ; preds = %31, %26, %21
  %37 = phi ptr [ %35, %31 ], [ %22, %26 ], [ %22, %21 ]
  %38 = getelementptr %struct.RenderSlot, ptr %37, i32 5, i32 23
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load i8, ptr %6, align 2
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = tail call i32 asm "", "=r,0"(i32 %43) #4, !srcloc !5
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, -5
  store i8 %49, ptr %6, align 2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 5, i32 noundef 0) #2
  %50 = load ptr, ptr @gRenderSlots, align 4
  br label %51

51:                                               ; preds = %46, %41, %36
  %52 = phi ptr [ %50, %46 ], [ %37, %41 ], [ %37, %36 ]
  %53 = getelementptr %struct.RenderSlot, ptr %52, i32 6, i32 23
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load i8, ptr %6, align 2
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = tail call i32 asm "", "=r,0"(i32 %58) #4, !srcloc !5
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, -9
  store i8 %64, ptr %6, align 2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 6, i32 noundef 0) #2
  %65 = load ptr, ptr @gRenderSlots, align 4
  br label %66

66:                                               ; preds = %61, %56, %51
  %67 = phi ptr [ %65, %61 ], [ %52, %56 ], [ %52, %51 ]
  %68 = getelementptr %struct.RenderSlot, ptr %67, i32 7, i32 23
  %69 = load i8, ptr %68, align 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  %72 = load i8, ptr %6, align 2
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = tail call i32 asm "", "=r,0"(i32 %73) #4, !srcloc !5
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, -17
  store i8 %79, ptr %6, align 2
  tail call arm_apcscc void @SetRenderField60(i32 noundef 7, i32 noundef 0) #2
  br label %80

80:                                               ; preds = %66, %71, %76, %1
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1344}
!5 = !{i64 2216}
