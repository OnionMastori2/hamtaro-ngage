; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskTextPairContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveTaskTextPairHeader(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %2) #2
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveTaskTextPairContexts(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 7), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %2) #2
  %3 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 6), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %3) #2
  %4 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 5), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %4) #2
  %5 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 4), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %5) #2
  %6 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 3), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %6) #2
  %7 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %7) #2
  %8 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %8) #2
  %9 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %9) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPositionTaskTextPairRenderSlot24(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 20
  %5 = add nuw nsw i32 %4, 2097152
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 24, i32 noundef %5, i32 noundef 1638400, i32 noundef 0) #2
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
