; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.RenderXZCollisionRecord = type { i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCoreScriptByte1F8C = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2174 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ResolveRenderXZRecordCircle(i8 noundef zeroext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = sdiv i32 %10, 65536
  %12 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = trunc i32 %11 to i16
  %15 = add i16 %13, %14
  %16 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = sdiv i32 %20, 65536
  %22 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 5
  %23 = load i16, ptr %22, align 2
  %24 = trunc i32 %21 to i16
  %25 = add i16 %23, %24
  %26 = zext i8 %0 to i32
  %27 = getelementptr %struct.RenderSlot, ptr %3, i32 %26, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1048576
  %30 = getelementptr %struct.RenderSlot, ptr %3, i32 %26, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %29, %31
  %33 = sdiv i32 %32, 65536
  %34 = getelementptr %struct.RenderSlot, ptr %3, i32 %26, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1572864
  %37 = getelementptr %struct.RenderSlot, ptr %3, i32 %26, i32 6, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %36, %38
  %40 = icmp slt i32 %39, 0
  %41 = add nsw i32 %39, 65535
  %42 = select i1 %40, i32 %41, i32 %39
  %43 = trunc i32 %33 to i16
  %44 = sub i16 %43, %15
  %45 = sext i16 %44 to i32
  %46 = mul nsw i32 %45, %45
  %47 = lshr i32 %42, 16
  %48 = trunc i32 %47 to i16
  %49 = sub i16 %48, %25
  %50 = sext i16 %49 to i32
  %51 = mul nsw i32 %50, %50
  %52 = add nuw i32 %51, %46
  %53 = getelementptr inbounds %struct.RenderXZCollisionRecord, ptr %1, i32 0, i32 6
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = mul nuw i32 %55, %55
  %57 = icmp ugt i32 %56, %52
  br i1 %57, label %58, label %107

58:                                               ; preds = %2
  %59 = zext i16 %25 to i32
  %60 = zext i16 %15 to i32
  %61 = tail call arm_apcscc i32 @BiosArcTan2(i32 noundef %45, i32 noundef %50) #3
  %62 = load i16, ptr %53, align 2
  %63 = zext i16 %62 to i32
  %64 = lshr i32 %61, 8
  %65 = and i32 %64, 255
  %66 = add nuw nsw i32 %65, 64
  %67 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %66
  %68 = load i16, ptr %67, align 2
  %69 = sext i16 %68 to i32
  %70 = mul nsw i32 %69, %63
  %71 = icmp slt i32 %70, 0
  %72 = add nsw i32 %70, 255
  %73 = select i1 %71, i32 %72, i32 %70
  tail call void asm sideeffect "", "~{r2}"() #4, !srcloc !4
  %74 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %65
  %75 = load i16, ptr %74, align 2
  %76 = sext i16 %75 to i32
  %77 = mul nsw i32 %76, %63
  %78 = sdiv i32 %77, 256
  %79 = lshr i32 %73, 8
  %80 = add nuw nsw i32 %79, %60
  %81 = shl i32 %80, 16
  %82 = add i32 %81, -1015808
  %83 = load i32, ptr %27, align 4
  %84 = sub i32 %82, %83
  store i32 %84, ptr %30, align 4
  %85 = add nsw i32 %78, %59
  %86 = shl i32 %85, 16
  %87 = add i32 %86, -1540096
  %88 = load i32, ptr %34, align 4
  %89 = sub i32 %87, %88
  store i32 %89, ptr %37, align 4
  %90 = icmp ne i32 %82, %83
  %91 = icmp ne i32 %87, %88
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %58
  %94 = tail call i32 @llvm.abs.i32(i32 %84, i1 false)
  %95 = tail call i32 @llvm.abs.i32(i32 %89, i1 false)
  %96 = icmp slt i32 %94, %95
  %97 = icmp slt i32 %84, 0
  %98 = select i1 %97, i8 4, i8 3
  %99 = icmp slt i32 %89, 0
  %100 = select i1 %99, i8 1, i8 2
  %101 = select i1 %96, i8 %100, i8 %98
  store i8 %101, ptr @gCoreScriptByte1F8C, align 1
  br label %102

102:                                              ; preds = %93, %58
  %103 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %104 = or i8 %103, 8
  store i8 %104, ptr @gCoreScriptByte1FA8, align 1
  %105 = load i16, ptr %1, align 2
  %106 = trunc i16 %105 to i8
  store i8 %106, ptr @gCoreScriptByte2174, align 1
  br label %107

107:                                              ; preds = %2, %102
  ret void
}

declare dso_local arm_apcscc i32 @BiosArcTan2(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1783}
