; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderXZCollisionMap = external dso_local local_unnamed_addr global ptr, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1
@gRenderCollisionEdgeMasks = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gCoreScriptByte1F8C = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateRenderXZCollisionFlags(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRenderXZCollisionMap, align 4
  %4 = zext i8 %1 to i32
  %5 = mul nuw nsw i32 %4, 104
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = getelementptr i8, ptr %6, i32 %5
  %8 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 false)
  %15 = getelementptr %struct.RenderSlot, ptr %7, i32 0, i32 6, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.abs.i32(i32 %16, i1 false)
  %18 = or i32 %17, %14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = tail call arm_apcscc i32 @GetRenderFacingIndex(ptr noundef %7) #3
  br label %22

22:                                               ; preds = %20, %11
  %23 = icmp slt i32 %14, %17
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %12, align 4
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, i8 2, i8 3
  br label %35

28:                                               ; preds = %22
  %29 = load i32, ptr %15, align 4
  %30 = icmp sgt i32 %29, -1
  %31 = zext i1 %30 to i8
  br label %35

32:                                               ; preds = %2
  %33 = tail call arm_apcscc i32 @GetRenderFacingIndex(ptr noundef %7) #3
  %34 = trunc i32 %33 to i8
  br label %35

35:                                               ; preds = %24, %28, %32
  %36 = phi i8 [ %34, %32 ], [ %27, %24 ], [ %31, %28 ]
  %37 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = sdiv i32 %41, 65536
  %43 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.RenderSlot, ptr %7, i32 0, i32 6, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = tail call i32 asm "", "={r0},{r0}"(i32 %47) #4, !srcloc !4
  %49 = sdiv i32 %48, 65536
  %50 = zext i8 %0 to i32
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %121, label %53

53:                                               ; preds = %35
  %54 = tail call arm_apcscc ptr @GetRenderCollisionSample(ptr noundef %3, i32 noundef %42, i32 noundef %49, i8 noundef zeroext %36, i8 noundef zeroext 0) #3
  %55 = tail call arm_apcscc ptr @GetRenderCollisionSample(ptr noundef %3, i32 noundef %42, i32 noundef %49, i8 noundef zeroext %36, i8 noundef zeroext 1) #3
  %56 = tail call arm_apcscc ptr @GetRenderCollisionSample(ptr noundef %3, i32 noundef %42, i32 noundef %49, i8 noundef zeroext %36, i8 noundef zeroext 2) #3
  %57 = tail call arm_apcscc ptr @GetRenderCollisionSample(ptr noundef %3, i32 noundef %42, i32 noundef %49, i8 noundef zeroext %36, i8 noundef zeroext 3) #3
  %58 = tail call arm_apcscc ptr @GetRenderCollisionSample(ptr noundef %3, i32 noundef %42, i32 noundef %49, i8 noundef zeroext %36, i8 noundef zeroext 4) #3
  %59 = tail call arm_apcscc ptr @GetRenderCollisionSample(ptr noundef %3, i32 noundef %42, i32 noundef %49, i8 noundef zeroext %36, i8 noundef zeroext 5) #3
  %60 = zext i8 %36 to i32
  %61 = getelementptr [0 x i16], ptr @gRenderCollisionEdgeMasks, i32 0, i32 %60
  %62 = load i16, ptr %61, align 2
  %63 = load i16, ptr %54, align 2
  %64 = and i16 %63, %62
  %65 = icmp ne i16 %64, 0
  %66 = zext i1 %65 to i8
  %67 = load i16, ptr %55, align 2
  %68 = and i16 %67, %62
  %69 = icmp eq i16 %68, 0
  %70 = select i1 %69, i8 0, i8 2
  %71 = or disjoint i8 %70, %66
  %72 = load i16, ptr %56, align 2
  %73 = and i16 %72, %62
  %74 = icmp eq i16 %73, 0
  %75 = select i1 %74, i8 0, i8 4
  %76 = or disjoint i8 %75, %71
  %77 = load i16, ptr %57, align 2
  %78 = and i16 %77, %62
  %79 = icmp eq i16 %78, 0
  %80 = select i1 %79, i8 0, i8 8
  %81 = or disjoint i8 %80, %76
  %82 = load i16, ptr %58, align 2
  %83 = and i16 %82, %62
  %84 = icmp eq i16 %83, 0
  %85 = select i1 %84, i8 0, i8 16
  %86 = or disjoint i8 %85, %81
  %87 = load i16, ptr %59, align 2
  %88 = and i16 %87, %62
  %89 = icmp eq i16 %88, 0
  %90 = select i1 %89, i8 0, i8 32
  %91 = or disjoint i8 %90, %86
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %53
  %94 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %95 = and i8 %94, 7
  %96 = icmp eq i8 %95, 5
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = or i8 %94, 4
  store i8 %98, ptr @gCoreScriptByte1FA8, align 1
  store i8 0, ptr @gCoreScriptByte1F8C, align 1
  br label %99

99:                                               ; preds = %97, %93
  %100 = and i32 %50, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %99
  %103 = tail call arm_apcscc i32 @ClassifyRenderCollisionMask(i8 noundef zeroext %91, i8 noundef zeroext %36) #3
  %104 = trunc i32 %103 to i8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %102
  %107 = tail call arm_apcscc i32 @GetRenderXZCollisionMask(ptr noundef %3, i32 noundef %42, i32 noundef %49) #3
  %108 = and i32 %103, 255
  %109 = add nsw i32 %108, -1
  %110 = getelementptr [0 x i16], ptr @gRenderCollisionEdgeMasks, i32 0, i32 %109
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %107, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = tail call arm_apcscc i32 @HasRenderXZRecordCollision(i32 noundef %42, i32 noundef %49) #3
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %120 = or i8 %119, 5
  store i8 %120, ptr @gCoreScriptByte1FA8, align 1
  store i8 %104, ptr @gCoreScriptByte1F8C, align 1
  br label %121

121:                                              ; preds = %53, %102, %118, %115, %106, %99, %35
  ret void
}

declare dso_local arm_apcscc i32 @GetRenderFacingIndex(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @GetRenderCollisionSample(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ClassifyRenderCollisionMask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetRenderXZCollisionMask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @HasRenderXZRecordCollision(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1318}
