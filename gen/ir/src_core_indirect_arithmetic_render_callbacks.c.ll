; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

%union.ScriptArithmeticScratch = type { %struct.anon }
%struct.anon = type { [3 x i8], i8, ptr }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gScriptArgumentScratch1138 = external dso_local local_unnamed_addr global %union.ScriptArithmeticScratch, align 4
@gScriptCallbackConsumed1134 = external dso_local local_unnamed_addr global i32, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAddIndirectByte(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 1), align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 5), align 1
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 6), align 2
  %10 = load i8, ptr %8, align 1
  store i8 %10, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 7), align 1
  %11 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, %3
  store i8 %13, ptr %11, align 1
  %14 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i32
  tail call arm_apcscc void @SetGameFlag17(i32 noundef %17) #4
  %18 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %19 = load i8, ptr %18, align 1
  %20 = load i8, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 1), align 1
  %21 = icmp ult i8 %19, %20
  %22 = zext i1 %21 to i32
  tail call arm_apcscc void @SetGameFlag18(i32 noundef %22) #4
  store i32 5, ptr @gScriptCallbackConsumed1134, align 4
  ret i32 5
}

declare dso_local arm_apcscc void @SetGameFlag17(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag18(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSubtractIndirectByte(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 1), align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 5), align 1
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 6), align 2
  %10 = load i8, ptr %8, align 1
  store i8 %10, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 7), align 1
  %11 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %12 = load i8, ptr %11, align 1
  %13 = sub i8 %12, %3
  store i8 %13, ptr %11, align 1
  %14 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i32
  tail call arm_apcscc void @SetGameFlag17(i32 noundef %17) #4
  %18 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %19 = load i8, ptr %18, align 1
  %20 = load i8, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 1), align 1
  %21 = icmp ugt i8 %19, %20
  %22 = zext i1 %21 to i32
  tail call arm_apcscc void @SetGameFlag18(i32 noundef %22) #4
  store i32 5, ptr @gScriptCallbackConsumed1134, align 4
  ret i32 5
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAddIndirectHalfword(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 0, i32 2), align 2
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 1), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 5), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 6), align 2
  %12 = load i8, ptr %10, align 1
  store i8 %12, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 7), align 1
  %13 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %14 = load i16, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 0, i32 2), align 2
  %15 = load i16, ptr %13, align 2
  %16 = add i16 %15, %14
  store i16 %16, ptr %13, align 2
  %17 = load i16, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 0, i32 2), align 2
  %18 = icmp ult i16 %16, %17
  %19 = zext i1 %18 to i32
  tail call arm_apcscc void @SetGameFlag18(i32 noundef %19) #4
  %20 = load i16, ptr %13, align 2
  %21 = icmp eq i16 %20, 0
  %22 = zext i1 %21 to i32
  tail call arm_apcscc void @SetGameFlag17(i32 noundef %22) #4
  ret i32 6
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSubtractIndirectHalfword(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 0, i32 2), align 2
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 1), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 5), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 6), align 2
  %12 = load i8, ptr %10, align 1
  store i8 %12, ptr getelementptr ([8 x i8], ptr @gScriptArgumentScratch1138, i32 0, i32 7), align 1
  %13 = load ptr, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 2), align 4
  %14 = load i16, ptr %13, align 2
  %15 = load i16, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 0, i32 2), align 2
  %16 = icmp ult i16 %14, %15
  %17 = zext i1 %16 to i32
  tail call arm_apcscc void @SetGameFlag18(i32 noundef %17) #4
  %18 = load i16, ptr getelementptr inbounds (%union.ScriptArithmeticScratch, ptr @gScriptArgumentScratch1138, i32 0, i32 0, i32 0, i32 2), align 2
  %19 = load i16, ptr %13, align 2
  %20 = sub i16 %19, %18
  store i16 %20, ptr %13, align 2
  %21 = icmp eq i16 %19, %18
  %22 = zext i1 %21 to i32
  tail call arm_apcscc void @SetGameFlag17(i32 noundef %22) #4
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetPrimaryRenderSlots(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 %3, ptr @gRenderClassSlots0, align 1
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i8, ptr %2, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i8 %7, ptr @gRenderClassSlots1, align 1
  br label %10

10:                                               ; preds = %9, %6
  store i32 2, ptr @gScriptCallbackConsumed1134, align 4
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadPrimaryRenderDirectionNibbles(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  store i32 0, ptr @gScriptCallbackConsumed1134, align 4
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 23
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 15
  store i8 %7, ptr @gRasterScriptControlBytes, align 1
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %4, i32 %9, i32 23
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 15
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 1), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadRenderDirectionNibble(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 23
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 15
  store i8 %7, ptr @gRasterScriptControlBytes, align 1
  ret i32 1
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
