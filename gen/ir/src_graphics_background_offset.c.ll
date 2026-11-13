; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }

@gRenderLayerOffsets = external dso_local local_unnamed_addr global [4 x %struct.RenderLayerOffset], align 4
@gBackgroundBounds = external dso_local global [4 x %struct.BackgroundBounds], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @CalculateBackgroundOffset(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "r,{r5},{r6},r"(i32 %0, i32 %1, i32 %2, ptr %3) #2, !srcloc !4
  %6 = and i32 %0, 255
  %7 = tail call arm_apcscc ptr @GetVideoState() #3
  %8 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %6
  %9 = mul nuw nsw i32 %6, 12
  %10 = add i32 %9, ptrtoint (ptr @gBackgroundBounds to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = mul i32 %1, -65536
  %13 = tail call i32 asm "", "={r5},{r5}"(i32 %12) #4, !srcloc !5
  %14 = add i32 %13, 32768
  store i32 %14, ptr %8, align 4
  %15 = shl i32 %2, 16
  %16 = sub i32 32768, %15
  %17 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %6, i32 1
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %16, 16
  %19 = lshr i32 %14, 16
  %20 = getelementptr inbounds %struct.BackgroundBounds, ptr %11, i32 0, i32 4
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %5
  %25 = ashr i32 %14, 16
  %26 = load i16, ptr %11, align 2
  %27 = sext i16 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = sub i16 0, %26
  br label %40

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.BackgroundBounds, ptr %11, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 240, %35
  %37 = icmp sgt i32 %25, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = sub i16 240, %34
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i16 [ %31, %30 ], [ %39, %38 ]
  %42 = zext i16 %41 to i32
  br label %43

43:                                               ; preds = %32, %40
  %44 = phi i32 [ %42, %40 ], [ %19, %32 ]
  %45 = ashr i32 %16, 16
  %46 = getelementptr inbounds %struct.BackgroundBounds, ptr %11, i32 0, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 0, %48
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = sub i16 0, %47
  br label %61

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.BackgroundBounds, ptr %11, i32 0, i32 3
  %55 = load i16, ptr %54, align 2
  %56 = sext i16 %55 to i32
  %57 = sub nsw i32 160, %56
  %58 = icmp sgt i32 %45, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = sub i16 160, %55
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi i16 [ %52, %51 ], [ %60, %59 ]
  %63 = zext i16 %62 to i32
  br label %64

64:                                               ; preds = %61, %53, %5
  %65 = phi i32 [ %18, %5 ], [ %63, %61 ], [ %18, %53 ]
  %66 = phi i32 [ %19, %5 ], [ %44, %61 ], [ %44, %53 ]
  %67 = shl nuw i32 %66, 16
  %68 = ashr exact i32 %67, 16
  %69 = tail call i32 asm "", "=r,{r1},{r3},0"(i32 %68, i32 32768, i32 %67) #4, !srcloc !6
  %70 = add i32 %69, 32768
  store i32 %70, ptr %8, align 4
  %71 = shl nuw i32 %65, 16
  %72 = or disjoint i32 %71, 32768
  store i32 %72, ptr %17, align 4
  %73 = mul i32 %66, -65536
  %74 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %6, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %73, %75
  store i32 %76, ptr %3, align 4
  %77 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %6, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %71, %78
  %80 = sub i32 0, %79
  store i32 %80, ptr %4, align 4
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 368}
!5 = !{i64 1124}
!6 = !{i64 2588}
