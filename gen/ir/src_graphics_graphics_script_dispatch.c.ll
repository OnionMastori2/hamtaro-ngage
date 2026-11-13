; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gGraphicsScriptHandlers = external dso_local global [48 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc zeroext i16 @RunGraphicsScriptCommand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load i8, ptr %0, align 4
  switch i8 %4, label %23 [
    i8 -124, label %5
    i8 -111, label %8
    i8 -105, label %11
    i8 -97, label %14
    i8 -96, label %17
    i8 -82, label %20
  ]

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = tail call arm_apcscc i32 @GraphicsPaletteStep(ptr noundef nonnull %0, ptr noundef %6) #2
  br label %75

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 1
  %10 = tail call arm_apcscc i32 @GraphicsBlendFadeStep(ptr noundef nonnull %0, ptr noundef %9) #2
  br label %75

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %3, i32 1
  %13 = tail call arm_apcscc i32 @GraphicsBlendAlphaStep(ptr noundef nonnull %0, ptr noundef %12) #2
  br label %75

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %3, i32 1
  %16 = tail call arm_apcscc i32 @GraphicsMosaicStep(ptr noundef nonnull %0, ptr noundef %15) #2
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !4
  br label %75

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %3, i32 1
  %19 = tail call arm_apcscc i32 @GraphicsMosaicStep(ptr noundef nonnull %0, ptr noundef %18) #2
  br label %75

20:                                               ; preds = %1
  %21 = getelementptr i8, ptr %3, i32 1
  %22 = tail call arm_apcscc i32 @GraphicsUpdateRasterSweep(ptr noundef nonnull %0, ptr noundef %21) #2
  br label %75

23:                                               ; preds = %1
  %24 = load i8, ptr %3, align 1
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %3, i32 1
  %28 = zext nneg i8 %24 to i16
  %29 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %28, ptr %29, align 4
  %30 = load i8, ptr %27, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %3, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 9
  %36 = shl nuw nsw i32 %31, 1
  %37 = or disjoint i32 %36, %35
  %38 = or disjoint i32 %37, 83886080
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr i8, ptr %3, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 asm "", "={r2},{r2}"(i32 %42) #4, !srcloc !5
  %44 = getelementptr i8, ptr %3, i32 4
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = add i32 %47, %43
  %49 = getelementptr i8, ptr %3, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = add i32 %48, %52
  %54 = getelementptr i8, ptr %3, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw i32 %56, 24
  %58 = add i32 %53, %57
  %59 = inttoptr i32 %58 to ptr
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %59, ptr noundef nonnull %39) #2
  %60 = getelementptr i8, ptr %3, i32 7
  store ptr %60, ptr %2, align 4
  br label %79

61:                                               ; preds = %23
  %62 = zext i8 %24 to i32
  %63 = add nsw i32 %62, -128
  %64 = tail call i32 asm sideeffect "", "={r2},{r2}"(i32 %63) #3, !srcloc !6
  %65 = getelementptr i8, ptr %3, i32 1
  %66 = shl i32 %64, 2
  %67 = tail call { i32, ptr } asm "", "={r0},={r1},{r0},{r1}"(i32 %66, ptr nonnull @gGraphicsScriptHandlers) #4, !srcloc !7
  %68 = extractvalue { i32, ptr } %67, 0
  %69 = extractvalue { i32, ptr } %67, 1
  %70 = ptrtoint ptr %69 to i32
  %71 = add i32 %68, %70
  %72 = inttoptr i32 %71 to ptr
  %73 = load ptr, ptr %72, align 4
  %74 = tail call arm_apcscc i32 %73(ptr noundef nonnull %0, ptr noundef %65) #2
  br label %75

75:                                               ; preds = %61, %20, %17, %14, %11, %8, %5
  %76 = phi i32 [ %7, %5 ], [ %10, %8 ], [ %13, %11 ], [ %16, %14 ], [ %19, %17 ], [ %22, %20 ], [ %74, %61 ]
  %77 = trunc i32 %76 to i16
  %78 = and i16 %77, 255
  br label %79

79:                                               ; preds = %75, %26
  %80 = phi i16 [ %78, %75 ], [ 0, %26 ]
  ret i16 %80
}

declare dso_local arm_apcscc i32 @GraphicsPaletteStep(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GraphicsBlendFadeStep(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GraphicsBlendAlphaStep(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GraphicsMosaicStep(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GraphicsUpdateRasterSweep(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosLZ77VRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

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
!4 = !{i64 741}
!5 = !{i64 1169}
!6 = !{i64 1499}
!7 = !{i64 1675}
