; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.PaletteTransition = type { i16, i16, i16, i16 }

@gPaletteSource = external dso_local global [0 x i16], align 2
@gPaletteOutput = external dso_local global ptr, align 4
@gPaletteTransitions = external dso_local global [0 x %struct.PaletteTransition], align 2
@gPaletteColor = external dso_local local_unnamed_addr global i16, align 2
@gPaletteTargetRed = external dso_local global i16, align 2
@gPaletteTargetGreen = external dso_local global i16, align 2
@gPaletteTargetBlue = external dso_local global i16, align 2
@gPaletteRed = external dso_local global i16, align 2
@gPaletteGreen = external dso_local global i16, align 2
@gPaletteBlue = external dso_local global i16, align 2
@gPaletteDeltaRed = external dso_local local_unnamed_addr global i16, align 2
@gPaletteDeltaGreen = external dso_local global i16, align 2
@gPaletteDeltaBlue = external dso_local global i16, align 2
@gPaletteAccumulators = external dso_local global [0 x [3 x i16]], align 2
@gPaletteAccumulatorBlue = external dso_local global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @PreparePaletteGroup(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  %9 = and i32 %0, 255
  store i32 %9, ptr %4, align 4
  call void asm sideeffect "", "*m"(ptr nonnull elementtype(i32) %4) #3, !srcloc !4
  %10 = and i32 %2, 65535
  %11 = shl nuw nsw i32 %9, 16
  store i32 %11, ptr %5, align 4
  call void asm sideeffect "", "*m"(ptr nonnull elementtype(i32) %5) #3, !srcloc !5
  %12 = load i32, ptr %5, align 4
  %13 = lshr i32 %12, 16
  store i32 %13, ptr %6, align 4
  call void asm sideeffect "", "*m"(ptr nonnull elementtype(i32) %6) #3, !srcloc !6
  br label %14

14:                                               ; preds = %156, %3
  %15 = phi i32 [ %10, %3 ], [ %159, %156 ]
  %16 = phi i32 [ %1, %3 ], [ %158, %156 ]
  %17 = and i32 %16, 65535
  call void asm sideeffect "", "{r2}"(i32 %17) #3, !srcloc !7
  %18 = shl nuw nsw i32 %17, 1
  %19 = and i32 %18, 510
  %20 = add i32 %19, ptrtoint (ptr @gPaletteSource to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr @gPaletteOutput, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = add i32 %18, %23
  %25 = inttoptr i32 %24 to ptr
  %26 = load i16, ptr %21, align 2
  store i32 %18, ptr %7, align 4
  call void asm sideeffect "", "*m"(ptr nonnull elementtype(i32) %7) #3, !srcloc !8
  %27 = load i16, ptr %25, align 2
  %28 = icmp eq i16 %26, %27
  %29 = shl nuw nsw i32 %17, 3
  br i1 %28, label %152, label %30

30:                                               ; preds = %14
  call void asm sideeffect "", "r,{r6},{r4},~{r5}"(i32 %17, i32 %29, ptr nonnull @gPaletteOutput) #3, !srcloc !9
  %31 = add i32 %29, ptrtoint (ptr @gPaletteTransitions to i32)
  %32 = inttoptr i32 %31 to ptr
  store i16 1, ptr %32, align 2
  %33 = load volatile i16, ptr %21, align 2
  store i16 %33, ptr @gPaletteColor, align 2
  %34 = and i16 %33, 31
  store i16 %34, ptr @gPaletteTargetRed, align 2
  %35 = lshr i16 %33, 5
  %36 = and i16 %35, 31
  store i16 %36, ptr @gPaletteTargetGreen, align 2
  %37 = lshr i16 %33, 10
  %38 = and i16 %37, 31
  store i16 %38, ptr @gPaletteTargetBlue, align 2
  %39 = load volatile i16, ptr %25, align 2
  store i16 %39, ptr @gPaletteColor, align 2
  %40 = and i16 %39, 31
  store i16 %40, ptr @gPaletteRed, align 2
  %41 = lshr i16 %39, 5
  %42 = and i16 %41, 31
  store i16 %42, ptr @gPaletteGreen, align 2
  %43 = lshr i16 %39, 10
  %44 = and i16 %43, 31
  store i16 %44, ptr @gPaletteBlue, align 2
  %45 = load volatile i16, ptr @gPaletteRed, align 2
  %46 = zext i16 %45 to i32
  %47 = load volatile i16, ptr @gPaletteGreen, align 2
  %48 = sub i16 0, %47
  store i16 %48, ptr @gPaletteDeltaGreen, align 2
  %49 = load volatile i16, ptr @gPaletteBlue, align 2
  %50 = sub i16 0, %49
  store i16 %50, ptr @gPaletteDeltaBlue, align 2
  %51 = mul nsw i32 %46, -256
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr @gPaletteDeltaRed, align 2
  %53 = shl nuw nsw i16 %34, 8
  %54 = zext nneg i16 %53 to i32
  %55 = add nsw i32 %51, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr @gPaletteTargetRed, align 2
  %57 = call ptr asm "", "=r,0"(ptr nonnull @gPaletteTargetRed) #4, !srcloc !10
  %58 = and i32 %55, 32768
  %59 = load i32, ptr %4, align 4
  %60 = shl i32 %59, 16
  call void asm sideeffect "", "{r1}"(i32 %60) #3, !srcloc !11
  %61 = add nuw nsw i32 %17, 1
  store i32 %61, ptr %8, align 4
  call void asm sideeffect "", "{r4}"(i32 -1) #3, !srcloc !12
  %62 = load i32, ptr %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %30
  %65 = load i32, ptr %5, align 4
  %66 = lshr i32 %65, 16
  %67 = load volatile i16, ptr @gPaletteTargetRed, align 2
  %68 = zext i16 %67 to i32
  %69 = call i32 @llvm.umax.i32(i32 %66, i32 1)
  br label %70

70:                                               ; preds = %70, %64
  %71 = phi i32 [ %75, %70 ], [ 0, %64 ]
  %72 = phi i32 [ %74, %70 ], [ %68, %64 ]
  %73 = lshr i32 %72, 1
  %74 = or i32 %73, %58
  %75 = add nuw nsw i32 %71, 1
  %76 = icmp eq i32 %75, %69
  br i1 %76, label %77, label %70

77:                                               ; preds = %70
  %78 = trunc i32 %74 to i16
  store i16 %78, ptr @gPaletteTargetRed, align 2
  br label %79

79:                                               ; preds = %77, %30
  %80 = load volatile i16, ptr @gPaletteDeltaGreen, align 2
  %81 = zext i16 %80 to i32
  %82 = shl i16 %80, 8
  store i16 %82, ptr @gPaletteDeltaGreen, align 2
  %83 = load volatile i16, ptr @gPaletteTargetGreen, align 2
  %84 = zext i16 %83 to i32
  %85 = add nuw nsw i32 %84, %81
  %86 = trunc i32 %85 to i16
  %87 = shl i16 %86, 8
  store i16 %87, ptr @gPaletteTargetGreen, align 2
  %88 = shl nuw nsw i32 %85, 8
  %89 = and i32 %88, 32768
  call void asm sideeffect "", "{r4}"(i32 %60) #3, !srcloc !13
  %90 = and i32 %59, 65535
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %79
  %93 = load volatile i16, ptr @gPaletteTargetGreen, align 2
  %94 = zext i16 %93 to i32
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi i32 [ %100, %95 ], [ 0, %92 ]
  %97 = phi i32 [ %99, %95 ], [ %94, %92 ]
  %98 = lshr i32 %97, 1
  %99 = or i32 %98, %89
  %100 = add nuw nsw i32 %96, 1
  %101 = icmp eq i32 %100, %90
  br i1 %101, label %102, label %95

102:                                              ; preds = %95
  %103 = trunc i32 %99 to i16
  store i16 %103, ptr @gPaletteTargetGreen, align 2
  br label %104

104:                                              ; preds = %102, %79
  %105 = load volatile i16, ptr @gPaletteDeltaBlue, align 2
  %106 = zext i16 %105 to i32
  %107 = shl i16 %105, 8
  store i16 %107, ptr @gPaletteDeltaBlue, align 2
  %108 = load volatile i16, ptr @gPaletteTargetBlue, align 2
  %109 = zext i16 %108 to i32
  %110 = add nuw nsw i32 %109, %106
  %111 = trunc i32 %110 to i16
  %112 = shl i16 %111, 8
  store i16 %112, ptr @gPaletteTargetBlue, align 2
  %113 = shl nuw nsw i32 %110, 8
  %114 = and i32 %113, 32768
  call void asm sideeffect "", "{r4}"(i32 %60) #3, !srcloc !14
  br i1 %91, label %127, label %115

115:                                              ; preds = %104
  %116 = load volatile i16, ptr @gPaletteTargetBlue, align 2
  %117 = zext i16 %116 to i32
  br label %118

118:                                              ; preds = %118, %115
  %119 = phi i32 [ %123, %118 ], [ 0, %115 ]
  %120 = phi i32 [ %122, %118 ], [ %117, %115 ]
  %121 = lshr i32 %120, 1
  %122 = or i32 %121, %114
  %123 = add nuw nsw i32 %119, 1
  %124 = icmp eq i32 %123, %90
  br i1 %124, label %125, label %118

125:                                              ; preds = %118
  %126 = trunc i32 %122 to i16
  store i16 %126, ptr @gPaletteTargetBlue, align 2
  br label %127

127:                                              ; preds = %125, %104
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  %128 = load i32, ptr %7, align 4
  %129 = add i32 %128, %17
  %130 = shl i32 %129, 1
  %131 = add i32 %130, ptrtoint (ptr @gPaletteAccumulators to i32)
  %132 = load volatile i16, ptr @gPaletteRed, align 2
  %133 = shl i16 %132, 8
  %134 = inttoptr i32 %131 to ptr
  store i16 %133, ptr %134, align 2
  call void asm sideeffect "", "{r1}"(i32 ptrtoint (ptr @gPaletteAccumulators to i32)) #3, !srcloc !16
  %135 = add i32 %130, add (i32 ptrtoint (ptr @gPaletteAccumulators to i32), i32 2)
  %136 = load volatile i16, ptr @gPaletteGreen, align 2
  %137 = shl i16 %136, 8
  %138 = inttoptr i32 %135 to ptr
  store i16 %137, ptr %138, align 2
  call void asm sideeffect "", "r"(i32 ptrtoint (ptr @gPaletteAccumulatorBlue to i32)) #3, !srcloc !17
  %139 = add i32 %130, ptrtoint (ptr @gPaletteAccumulatorBlue to i32)
  %140 = load volatile i16, ptr @gPaletteBlue, align 2
  %141 = shl i16 %140, 8
  %142 = inttoptr i32 %139 to ptr
  store i16 %141, ptr %142, align 2
  %143 = add i32 %29, add (i32 ptrtoint (ptr @gPaletteTransitions to i32), i32 2)
  %144 = load volatile i16, ptr @gPaletteTargetRed, align 2
  %145 = inttoptr i32 %143 to ptr
  store i16 %144, ptr %145, align 2
  %146 = add i32 %29, add (i32 ptrtoint (ptr @gPaletteTransitions to i32), i32 4)
  %147 = load volatile i16, ptr @gPaletteTargetGreen, align 2
  %148 = inttoptr i32 %146 to ptr
  store i16 %147, ptr %148, align 2
  %149 = add i32 %29, add (i32 ptrtoint (ptr @gPaletteTransitions to i32), i32 6)
  %150 = load volatile i16, ptr @gPaletteTargetBlue, align 2
  %151 = inttoptr i32 %149 to ptr
  store i16 %150, ptr %151, align 2
  br label %156

152:                                              ; preds = %14
  %153 = add i32 %29, ptrtoint (ptr @gPaletteTransitions to i32)
  %154 = inttoptr i32 %153 to ptr
  store i16 0, ptr %154, align 2
  call void asm sideeffect "", "{r2}"(i32 %17) #3, !srcloc !18
  %155 = add nuw nsw i32 %17, 1
  store i32 %155, ptr %8, align 4
  call void asm sideeffect "", "*m"(ptr nonnull elementtype(i32) %8) #3, !srcloc !19
  call void asm sideeffect "", "{r3}"(i32 -1) #3, !srcloc !20
  br label %156

156:                                              ; preds = %152, %127
  %157 = add nsw i32 %15, -1
  %158 = load i32, ptr %8, align 4
  call void asm sideeffect "", "r"(i32 %157) #3, !srcloc !21
  %159 = and i32 %157, 65535
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %14

161:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 511}
!5 = !{i64 626}
!6 = !{i64 762}
!7 = !{i64 1355}
!8 = !{i64 1824}
!9 = !{i64 2618}
!10 = !{i64 4751}
!11 = !{i64 5212}
!12 = !{i64 5481}
!13 = !{i64 6906}
!14 = !{i64 8369}
!15 = !{i64 9109}
!16 = !{i64 9575}
!17 = !{i64 9905}
!18 = !{i64 11463}
!19 = !{i64 11564}
!20 = !{i64 11640}
!21 = !{i64 11975}
