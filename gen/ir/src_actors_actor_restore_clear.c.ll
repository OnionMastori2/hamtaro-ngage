; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gActorRestoreSlotIndices = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreActorRenderSlotsAndClearFlag(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gActorRestoreSlotIndices, align 1
  %3 = icmp eq i8 %2, -1
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %6, i32 %5
  %8 = tail call arm_apcscc ptr @memcpy(ptr noundef %7, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 416), i32 noundef 104) #2
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = load i8, ptr @gActorRestoreSlotIndices, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.RenderSlot, ptr %9, i32 %11, i32 23, i32 3
  store i8 0, ptr %12, align 1
  br label %13

13:                                               ; preds = %4, %1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gActorRestoreSlotIndices, i32 0, i32 1), align 1
  %15 = icmp eq i8 %14, -1
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = zext i8 %14 to i32
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %18, i32 %17
  %20 = tail call arm_apcscc ptr @memcpy(ptr noundef %19, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 520), i32 noundef 104) #2
  %21 = load ptr, ptr @gRenderSlots, align 4
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gActorRestoreSlotIndices, i32 0, i32 1), align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr %struct.RenderSlot, ptr %21, i32 %23, i32 23, i32 3
  store i8 0, ptr %24, align 1
  br label %25

25:                                               ; preds = %16, %13
  ret i32 0
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
