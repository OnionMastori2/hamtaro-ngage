; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderPriorityBits(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %2 to i32
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %5, i8 noundef zeroext %4) #2
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptRepositionRenderOrder(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = load i8, ptr %2, align 1
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %3 to i32
  %8 = zext i8 %4 to i32
  %9 = zext i8 %6 to i32
  tail call arm_apcscc void @RepositionRenderOrder(i32 noundef %7, i32 noundef %8, i32 noundef %9) #2
  store i32 3, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @RepositionRenderOrder(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr @gMainScriptArgumentWords5E8, align 4
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %11 = getelementptr i8, ptr %0, i32 5
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %13 = getelementptr i8, ptr %0, i32 6
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %15 = zext i8 %2 to i32
  %16 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %17 = zext i16 %16 to i32
  %18 = shl nuw i32 %17, 16
  %19 = or disjoint i32 %18, 32768
  %20 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %21 = zext i16 %20 to i32
  %22 = shl nuw i32 %21, 16
  %23 = or disjoint i32 %22, 32768
  %24 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %25 = zext i16 %24 to i32
  %26 = shl nuw i32 %25, 16
  %27 = or disjoint i32 %26, 32768
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %15, i32 noundef %19, i32 noundef %23, i32 noundef %27) #2
  store i32 7, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderField60(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %2 to i32
  %6 = zext i8 %4 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %5, i32 noundef %6) #2
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderModeBits(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %2 to i32
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %5, i8 noundef zeroext %4) #2
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetRenderModeBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderField62(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  %6 = load i8, ptr %4, align 1
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = shl i8 %5, 6
  %10 = shl i8 %6, 4
  %11 = and i8 %10, 48
  %12 = or disjoint i8 %11, %9
  %13 = icmp ult i8 %5, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = and i8 %8, 15
  %16 = or disjoint i8 %12, %15
  %17 = zext i8 %3 to i32
  br label %21

18:                                               ; preds = %1
  %19 = zext i8 %3 to i32
  %20 = zext i8 %8 to i32
  tail call arm_apcscc void @SetRenderField65(i32 noundef %19, i32 noundef %20) #2
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %19, %18 ], [ %17, %14 ]
  %23 = phi i8 [ %12, %18 ], [ %16, %14 ]
  %24 = zext i8 %23 to i32
  tail call arm_apcscc void @SetRenderField62(i32 noundef %22, i32 noundef %24) #2
  store i32 4, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetRenderField65(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField62(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderVector24(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr @gMainScriptArgumentWords5E8, align 4
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %11 = getelementptr i8, ptr %0, i32 5
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %13 = getelementptr i8, ptr %0, i32 6
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %15 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %19 = zext i16 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %22 = zext i16 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or disjoint i32 %17, -16777216
  %25 = icmp slt i16 %15, 0
  %26 = select i1 %25, i32 %24, i32 %17
  %27 = or disjoint i32 %20, -16777216
  %28 = icmp slt i16 %18, 0
  %29 = select i1 %28, i32 %27, i32 %20
  %30 = or disjoint i32 %23, -16777216
  %31 = icmp slt i16 %21, 0
  %32 = select i1 %31, i32 %30, i32 %23
  %33 = zext i8 %2 to i32
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %33, i32 noundef %26, i32 noundef %29, i32 noundef %32) #2
  store i32 7, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
