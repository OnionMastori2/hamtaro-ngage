; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.PaletteTransition = type { i16, i16, i16, i16 }

@gPaletteTransitions = external dso_local global [0 x %struct.PaletteTransition], align 2
@gPaletteAccumulators = external dso_local global [0 x [3 x i16]], align 2
@gPaletteRed = external dso_local global i16, align 2
@gPaletteAccumulatorBlue = external dso_local global [0 x i16], align 2
@gPaletteBlue = external dso_local local_unnamed_addr global i16, align 2
@gPaletteGreen = external dso_local local_unnamed_addr global i16, align 2
@gPaletteColor = external dso_local local_unnamed_addr global i16, align 2
@gPaletteOutput = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdatePaletteGroup(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull @gPaletteAccumulators) #1, !srcloc !4
  %4 = tail call i32 asm "", "={r2},{r2}"(i32 7936) #1, !srcloc !5
  %5 = tail call ptr asm "", "={r3},{r3}"(ptr nonnull @gPaletteRed) #1, !srcloc !6
  %6 = trunc i32 %1 to i16
  %7 = ptrtoint ptr %3 to i32
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = ptrtoint ptr %8 to i32
  %10 = ptrtoint ptr %5 to i32
  br label %11

11:                                               ; preds = %67, %2
  %12 = phi i16 [ %6, %2 ], [ %69, %67 ]
  %13 = phi i32 [ %0, %2 ], [ %68, %67 ]
  %14 = and i32 %13, 65535
  %15 = shl nuw nsw i32 %14, 3
  %16 = add i32 %15, ptrtoint (ptr @gPaletteTransitions to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %11
  %21 = shl nuw nsw i32 %14, 1
  %22 = mul nuw nsw i32 %14, 6
  %23 = add i32 %22, %7
  %24 = inttoptr i32 %23 to ptr
  %25 = add i32 %15, ptrtoint (ptr getelementptr inbounds ([0 x %struct.PaletteTransition], ptr @gPaletteTransitions, i32 0, i32 0, i32 1) to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load i16, ptr %26, align 2
  %28 = load i16, ptr %24, align 2
  %29 = add i16 %28, %27
  store i16 %29, ptr %24, align 2
  %30 = add i32 %22, %9
  %31 = inttoptr i32 %30 to ptr
  %32 = add i32 %15, ptrtoint (ptr getelementptr inbounds ([0 x %struct.PaletteTransition], ptr @gPaletteTransitions, i32 0, i32 0, i32 2) to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = load i16, ptr %33, align 2
  %35 = load i16, ptr %31, align 2
  %36 = add i16 %35, %34
  store i16 %36, ptr %31, align 2
  %37 = add i32 %22, ptrtoint (ptr @gPaletteAccumulatorBlue to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = add i32 %15, ptrtoint (ptr getelementptr inbounds ([0 x %struct.PaletteTransition], ptr @gPaletteTransitions, i32 0, i32 0, i32 3) to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, ptr %38, align 2
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %38, align 2
  %47 = and i32 %45, %4
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr @gPaletteBlue, align 2
  tail call void asm sideeffect "", "{r0},{r5}"(i32 %45, i32 %44) #2, !srcloc !7
  %49 = load i16, ptr %31, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %4, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr @gPaletteGreen, align 2
  %53 = load i16, ptr %24, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %4, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %5, align 2
  %57 = shl nuw nsw i32 %47, 2
  %58 = lshr i32 %51, 3
  %59 = or i32 %58, %57
  %60 = lshr i32 %55, 8
  %61 = or i32 %59, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr @gPaletteColor, align 2
  tail call void asm sideeffect "", "{r0},{r2},{r3}"(i32 %60, i32 %58, i32 %10) #2, !srcloc !8
  %63 = load ptr, ptr @gPaletteOutput, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = add i32 %21, %64
  %66 = inttoptr i32 %65 to ptr
  store i16 %62, ptr %66, align 2
  br label %67

67:                                               ; preds = %20, %11
  %68 = add nuw nsw i32 %14, 1
  %69 = add i16 %12, -1
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %11

71:                                               ; preds = %67
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 716}
!5 = !{i64 827}
!6 = !{i64 919}
!7 = !{i64 2779}
!8 = !{i64 3148}
