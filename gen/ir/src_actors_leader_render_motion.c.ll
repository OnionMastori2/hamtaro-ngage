; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gBootMode0786 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptWord0778 = external dso_local local_unnamed_addr global i32, align 4
@gLeaderRenderXZVelocityPairs = external dso_local local_unnamed_addr constant [0 x [2 x i32]], align 4
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte0785 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2C50 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte0784 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1F8C = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateLeaderRenderXZMotion(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  store i8 1, ptr @gBootMode0786, align 1
  %5 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 2, i8 noundef zeroext 0) #2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i8 1, ptr %1, align 1
  store i8 -128, ptr %0, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 24, i32 noundef 1) #2
  store i8 2, ptr @gBootMode0786, align 1
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = phi i32 [ 1, %2 ], [ 2, %11 ], [ 1, %8 ]
  %14 = load i8, ptr %1, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 240, i8 noundef zeroext 0) #2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, ptr @gCoreScriptWord0778, align 4
  tail call arm_apcscc void @SetLeaderIdleRenderAnimations() #2
  store i8 0, ptr @gBootMode0786, align 1
  br label %83

19:                                               ; preds = %12
  %20 = tail call arm_apcscc i32 @__divsi3(i32 noundef 8, i32 noundef %13) #2
  store i32 %20, ptr @gCoreScriptWord0778, align 4
  %21 = zext i16 %16 to i32
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = and i32 %21, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = and i32 %21, 32
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 4, i32 3
  br label %31

31:                                               ; preds = %27, %24, %19
  %32 = phi i32 [ 1, %19 ], [ 2, %24 ], [ %30, %27 ]
  %33 = shl nuw nsw i32 %13, 3
  %34 = shl nuw nsw i32 %32, 1
  %35 = getelementptr i32, ptr @gLeaderRenderXZVelocityPairs, i32 %33
  %36 = getelementptr i32, ptr %35, i32 %34
  %37 = getelementptr i32, ptr %36, i32 -10
  %38 = load i8, ptr @gRenderClassSlots0, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, ptr %37, align 4
  %41 = getelementptr i32, ptr %36, i32 -9
  %42 = load i32, ptr %41, align 4
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %39, i32 noundef %40, i32 noundef 0, i32 noundef %42) #2
  %43 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 1
  %46 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = add nsw i32 %15, -2
  %49 = add nsw i32 %48, %34
  %50 = getelementptr ptr, ptr %47, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = load i8, ptr %0, align 1
  %53 = trunc i32 %32 to i8
  %54 = add i8 %52, %53
  store i8 %54, ptr %0, align 1
  %55 = load ptr, ptr @gRenderSlots, align 4
  %56 = load i8, ptr @gRenderClassSlots0, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr %struct.RenderSlot, ptr %55, i32 %57, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = ptrtoint ptr %51 to i32
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %31
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %57, ptr noundef %51) #2
  %63 = load i8, ptr @gRenderClassSlots0, align 1
  %64 = zext i8 %63 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %64, i32 noundef %32) #2
  br label %65

65:                                               ; preds = %62, %31
  %66 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 1
  %69 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr ptr, ptr %70, i32 %49
  %72 = load ptr, ptr %71, align 4
  %73 = load i8, ptr @gCoreScriptByte2274, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i8 %73, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %65
  %77 = load ptr, ptr @gRenderSlots, align 4
  %78 = getelementptr %struct.RenderSlot, ptr %77, i32 %74, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = ptrtoint ptr %72 to i32
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %74, ptr noundef %72) #2
  br label %83

83:                                               ; preds = %65, %76, %82, %18
  %84 = load i8, ptr @gCoreScriptByte0785, align 1
  %85 = icmp eq i8 %84, 8
  %86 = load i8, ptr @gCoreScriptByte2C50, align 1
  %87 = icmp ne i8 %86, 1
  %88 = select i1 %85, i1 %87, i1 false
  %89 = load i8, ptr @gRenderClassSlots0, align 1
  br i1 %88, label %90, label %94

90:                                               ; preds = %83
  %91 = zext i8 %89 to i32
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %91, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %92 = load i8, ptr @gCoreScriptByte0785, align 1
  %93 = load i8, ptr @gRenderClassSlots0, align 1
  br label %94

94:                                               ; preds = %90, %83
  %95 = phi i8 [ %93, %90 ], [ %89, %83 ]
  %96 = phi i8 [ %92, %90 ], [ %84, %83 ]
  tail call arm_apcscc void @UpdateRenderXZRecordCollision(i8 noundef zeroext %96, i8 noundef zeroext %95) #2
  %97 = load i8, ptr @gCoreScriptByte0784, align 1
  %98 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @UpdateRenderXZCollisionFlags(i8 noundef zeroext %97, i8 noundef zeroext %98) #2
  %99 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %100 = and i8 %99, 4
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %162, label %102

102:                                              ; preds = %94
  %103 = load ptr, ptr @gRenderSlots, align 4
  %104 = load i8, ptr @gRenderClassSlots0, align 1
  %105 = zext i8 %104 to i32
  %106 = getelementptr %struct.RenderSlot, ptr %103, i32 %105
  %107 = tail call arm_apcscc i32 @GetRenderXZMotionDirection(ptr noundef %106) #2
  %108 = trunc i32 %107 to i8
  switch i8 %108, label %141 [
    i8 1, label %109
    i8 2, label %116
    i8 3, label %122
    i8 4, label %129
  ]

109:                                              ; preds = %102
  %110 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 6, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %111, 262144
  %115 = add i32 %114, %113
  br label %135

116:                                              ; preds = %102
  %117 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 5
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 6, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %118
  br label %135

122:                                              ; preds = %102
  %123 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 6
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %124, 262144
  %128 = add i32 %127, %126
  br label %135

129:                                              ; preds = %102
  %130 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr %struct.RenderSlot, ptr %103, i32 %105, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, %131
  br label %135

135:                                              ; preds = %109, %116, %122, %129
  %136 = phi i32 [ %134, %129 ], [ %128, %122 ], [ %121, %116 ], [ %115, %109 ]
  %137 = phi i32 [ %131, %129 ], [ %124, %122 ], [ %118, %116 ], [ %111, %109 ]
  %138 = phi ptr [ %132, %129 ], [ %125, %122 ], [ %119, %116 ], [ %112, %109 ]
  %139 = and i32 %136, -524288
  %140 = sub i32 %139, %137
  store i32 %140, ptr %138, align 4
  br label %141

141:                                              ; preds = %135, %102
  %142 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %143 = and i8 %142, 13
  %144 = icmp eq i8 %143, 5
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load ptr, ptr @gRenderSlots, align 4
  %147 = load i8, ptr @gRenderClassSlots0, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, ptr @gCoreScriptByte1F8C, align 1
  switch i8 %149, label %162 [
    i8 1, label %150
    i8 2, label %152
    i8 3, label %154
    i8 4, label %156
  ]

150:                                              ; preds = %145
  %151 = getelementptr %struct.RenderSlot, ptr %146, i32 %148, i32 6, i32 2
  store i32 -65536, ptr %151, align 4
  br label %162

152:                                              ; preds = %145
  %153 = getelementptr %struct.RenderSlot, ptr %146, i32 %148, i32 6, i32 2
  store i32 65536, ptr %153, align 4
  br label %162

154:                                              ; preds = %145
  %155 = getelementptr %struct.RenderSlot, ptr %146, i32 %148, i32 6
  store i32 -65536, ptr %155, align 4
  br label %162

156:                                              ; preds = %145
  %157 = getelementptr %struct.RenderSlot, ptr %146, i32 %148, i32 6
  store i32 65536, ptr %157, align 4
  br label %162

158:                                              ; preds = %141
  %159 = load i8, ptr @gRenderClassSlots1, align 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  store i8 0, ptr @gBootMode0786, align 1
  br label %162

162:                                              ; preds = %161, %158, %145, %156, %154, %152, %150, %94
  ret i32 %13
}

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetLeaderIdleRenderAnimations() local_unnamed_addr #1

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @UpdateRenderXZRecordCollision(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @UpdateRenderXZCollisionFlags(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetRenderXZMotionDirection(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
