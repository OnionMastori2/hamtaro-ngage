; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = zext i8 %1 to i32
  %5 = mul nuw nsw i32 %4, 104
  %6 = ptrtoint ptr %3 to i32
  %7 = add i32 %5, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = zext i8 %0 to i32
  %10 = mul nuw nsw i32 %9, 104
  %11 = add i32 %10, %6
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = ashr i32 %17, 16
  %24 = ashr i32 %22, 16
  %25 = tail call arm_apcscc i32 @BiosArcTan2(i32 noundef %23, i32 noundef %24) #2
  %26 = add i32 %25, 57344
  %27 = and i32 %26, 49152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = add i32 %25, 40960
  %31 = and i32 %30, 49152
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = add i32 %25, 24576
  %35 = and i32 %34, 49152
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 4
  br label %38

38:                                               ; preds = %33, %29, %2
  %39 = phi i32 [ 2, %2 ], [ 3, %29 ], [ %37, %33 ]
  ret i32 %39
}

declare dso_local arm_apcscc i32 @BiosArcTan2(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = zext i8 %1 to i32
  %5 = mul nuw nsw i32 %4, 104
  %6 = ptrtoint ptr %3 to i32
  %7 = add i32 %5, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = zext i8 %0 to i32
  %10 = mul nuw nsw i32 %9, 104
  %11 = add i32 %10, %6
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = ashr i32 %17, 16
  %24 = ashr i32 %22, 16
  %25 = tail call arm_apcscc i32 @BiosArcTan2(i32 noundef %23, i32 noundef %24) #2
  %26 = add i32 %25, 61440
  %27 = and i32 %26, 57344
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %2
  %30 = add i32 %25, 53248
  %31 = and i32 %30, 57344
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %29
  %34 = add i32 %25, 45056
  %35 = and i32 %34, 57344
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = add i32 %25, 36864
  %39 = and i32 %38, 57344
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = add i32 %25, 28672
  %43 = and i32 %42, 57344
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = add i32 %25, 20480
  %47 = and i32 %46, 57344
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = add i32 %25, 12288
  %51 = and i32 %50, 57344
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 2, i32 3
  br label %54

54:                                               ; preds = %49, %45, %41, %37, %33, %29, %2
  %55 = phi i32 [ 4, %2 ], [ 5, %29 ], [ 6, %33 ], [ 7, %37 ], [ 8, %41 ], [ 1, %45 ], [ %53, %49 ]
  ret i32 %55
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
