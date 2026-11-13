; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.RenderXZCollisionRecord = type { i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @IsRenderXZWithinRecordCircle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i16, ptr %0, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = sdiv i32 %11, -65536
  %13 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %0, i32 0, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = trunc i32 %12 to i16
  %16 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 6, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = sdiv i32 %20, -65536
  %22 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %0, i32 0, i32 5
  %23 = load i16, ptr %22, align 2
  %24 = trunc i32 %1 to i16
  %25 = sub i16 %24, %14
  %26 = add i16 %25, %15
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %27, %27
  %29 = trunc i32 %21 to i16
  %30 = trunc i32 %2 to i16
  %31 = sub i16 %30, %23
  %32 = add i16 %31, %29
  %33 = sext i16 %32 to i32
  %34 = mul nsw i32 %33, %33
  %35 = add nuw i32 %34, %28
  %36 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %0, i32 0, i32 6
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = mul nuw i32 %38, %38
  %40 = icmp uge i32 %39, %35
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @IsRenderXZWithinRecordRectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i16, ptr %0, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = tail call i32 asm "", "={r8},{r8}"(i32 %11) #2, !srcloc !4
  %13 = lshr i32 %12, 16
  %14 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %0, i32 0, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = trunc i32 %13 to i16
  %17 = add i16 %15, -40
  %18 = add i16 %17, %16
  %19 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 6, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = lshr i32 %23, 16
  %25 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %0, i32 0, i32 5
  %26 = load i16, ptr %25, align 2
  %27 = trunc i32 %24 to i16
  %28 = add i16 %26, -32
  %29 = add i16 %28, %27
  %30 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %0, i32 0, i32 7
  %31 = load i16, ptr %30, align 2
  %32 = add i16 %31, 8
  %33 = add i16 %32, %27
  %34 = shl i32 %1, 16
  %35 = ashr exact i32 %34, 16
  %36 = sext i16 %18 to i32
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %53, label %38

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %0, i32 0, i32 6
  %40 = load i16, ptr %39, align 2
  %41 = add i16 %40, %16
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %35, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = shl i32 %2, 16
  %46 = zext i16 %29 to i32
  %47 = shl nuw i32 %46, 16
  %48 = icmp slt i32 %45, %47
  %49 = ashr exact i32 %45, 16
  %50 = sext i16 %33 to i32
  %51 = icmp sgt i32 %49, %50
  %52 = select i1 %48, i1 true, i1 %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44, %3, %38
  br label %54

54:                                               ; preds = %44, %53
  %55 = phi i32 [ 0, %53 ], [ 1, %44 ]
  ret i32 %55
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1261}
