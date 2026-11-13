; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterE5RenderPositionWords7098 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRasterE5RenderAnimation703A = external dso_local constant [0 x i8], align 1
@gRasterE5RenderAnimation70A5 = external dso_local constant [0 x i8], align 1
@gRasterE5RenderAnimation701B = external dso_local constant [0 x i8], align 1
@gRasterE5RenderAnimation7039 = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureRenderSlotsFromRasterE5(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 229), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 229), align 1
  %3 = icmp ugt i8 %2, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  %6 = shl nuw nsw i32 %5, 1
  %7 = getelementptr i16, ptr @gRasterE5RenderPositionWords7098, i32 %6
  %8 = icmp eq i8 %2, 7
  %9 = load i16, ptr %7, align 2
  %10 = sext i16 %9 to i32
  %11 = getelementptr i16, ptr %7, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = sext i16 %12 to i32
  br i1 %8, label %14, label %15

14:                                               ; preds = %4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %10, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @gRasterE5RenderAnimation703A) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gRasterE5RenderAnimation70A5) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 27, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 26) #2
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 26, i8 noundef zeroext 1) #2
  br label %17

15:                                               ; preds = %4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %10, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @gRasterE5RenderAnimation701B) #2
  br label %17

16:                                               ; preds = %1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 26, ptr noundef nonnull @gRasterE5RenderAnimation7039) #2
  br label %17

17:                                               ; preds = %14, %15, %16
  %18 = phi i8 [ 27, %14 ], [ 26, %15 ], [ 26, %16 ]
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %18, i8 noundef zeroext 1) #2
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
