; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveActorRenderSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  %6 = tail call arm_apcscc ptr @memcpy(ptr noundef nonnull @gSaveGroup01Block2EB0, ptr noundef %5, i32 noundef 104) #2
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gCoreScriptByte2274, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %7, i32 %9
  %11 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), ptr noundef %10, i32 noundef 104) #2
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %12, i32 %14
  %16 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), ptr noundef %15, i32 noundef 104) #2
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.RenderSlot, ptr %17, i32 %19
  %21 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), ptr noundef %20, i32 noundef 104) #2
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
