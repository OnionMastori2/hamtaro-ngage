; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.GameCounterDisplayTemplates = type { [3 x ptr] }

@gGameCounterDisplayTemplates4310 = external dso_local local_unnamed_addr constant %struct.GameCounterDisplayTemplates, align 4
@gGameCounterDisplayBank3798 = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterDisplayBuffer3EC0 = external dso_local global [0 x i16], align 2
@gGameCounterPaletteColors42B4 = external dso_local constant [0 x i16], align 2
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderGameCounterDigits(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %3 = getelementptr [3 x ptr], ptr @gGameCounterDisplayTemplates4310, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %4, ptr noundef nonnull @gGameCounterDisplayBuffer3EC0, i32 noundef 16) #2
  %5 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %0, i32 noundef 100) #2
  %6 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 100) #2
  %7 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %6, i32 noundef 10) #2
  %8 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 10) #2
  %9 = icmp slt i32 %5, 5
  %10 = select i1 %9, i32 10, i32 37
  %11 = add i32 %10, %5
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 3), align 2
  %13 = icmp slt i32 %7, 5
  %14 = select i1 %13, i32 10, i32 37
  %15 = add i32 %14, %7
  %16 = trunc i32 %15 to i16
  store i16 %16, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 6), align 2
  %17 = icmp slt i32 %8, 5
  %18 = select i1 %17, i32 10, i32 37
  %19 = add i32 %18, %8
  %20 = trunc i32 %19 to i16
  store i16 %20, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 9), align 2
  %21 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %22 = mul i32 %21, 3
  %23 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %22
  %24 = ptrtoint ptr %23 to i32
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %24, i32 noundef 83886602, i32 noundef 6) #2
  ret void
}

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderGameCounterBank0(i32 noundef %0) local_unnamed_addr #0 {
  store i32 0, ptr @gGameCounterDisplayBank3798, align 4
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  store i16 %2, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  %3 = load i16, ptr @gGameCounterPaletteColors42B4, align 2
  store volatile i16 %3, ptr inttoptr (i32 83886602 to ptr), align 2
  %4 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %5 = mul i32 %4, 3
  %6 = add i32 %5, 1
  %7 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  store volatile i16 %8, ptr inttoptr (i32 83886604 to ptr), align 4
  %9 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %10 = mul i32 %9, 3
  %11 = add i32 %10, 2
  %12 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  store volatile i16 %13, ptr inttoptr (i32 83886606 to ptr), align 2
  %14 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %15 = getelementptr [3 x ptr], ptr @gGameCounterDisplayTemplates4310, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %16, ptr noundef nonnull @gGameCounterDisplayBuffer3EC0, i32 noundef 16) #2
  %17 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %0, i32 noundef 100) #2
  %18 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 100) #2
  %19 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %18, i32 noundef 10) #2
  %20 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 10) #2
  %21 = icmp slt i32 %17, 5
  %22 = select i1 %21, i32 10, i32 37
  %23 = add i32 %22, %17
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 3), align 2
  %25 = icmp slt i32 %19, 5
  %26 = select i1 %25, i32 10, i32 37
  %27 = add i32 %26, %19
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 6), align 2
  %29 = icmp slt i32 %20, 5
  %30 = select i1 %29, i32 10, i32 37
  %31 = add i32 %30, %20
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 9), align 2
  %33 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %34 = mul i32 %33, 3
  %35 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %34
  %36 = ptrtoint ptr %35 to i32
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %36, i32 noundef 83886602, i32 noundef 6) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderGameCounterBank1(i32 noundef %0) local_unnamed_addr #0 {
  store i32 1, ptr @gGameCounterDisplayBank3798, align 4
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  store i16 %2, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 3), align 2
  store volatile i16 %3, ptr inttoptr (i32 83886602 to ptr), align 2
  %4 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %5 = mul i32 %4, 3
  %6 = add i32 %5, 1
  %7 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  store volatile i16 %8, ptr inttoptr (i32 83886604 to ptr), align 4
  %9 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %10 = mul i32 %9, 3
  %11 = add i32 %10, 2
  %12 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  store volatile i16 %13, ptr inttoptr (i32 83886606 to ptr), align 2
  %14 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %15 = getelementptr [3 x ptr], ptr @gGameCounterDisplayTemplates4310, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %16, ptr noundef nonnull @gGameCounterDisplayBuffer3EC0, i32 noundef 16) #2
  %17 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %0, i32 noundef 100) #2
  %18 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 100) #2
  %19 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %18, i32 noundef 10) #2
  %20 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 10) #2
  %21 = icmp slt i32 %17, 5
  %22 = select i1 %21, i32 10, i32 37
  %23 = add i32 %22, %17
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 3), align 2
  %25 = icmp slt i32 %19, 5
  %26 = select i1 %25, i32 10, i32 37
  %27 = add i32 %26, %19
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 6), align 2
  %29 = icmp slt i32 %20, 5
  %30 = select i1 %29, i32 10, i32 37
  %31 = add i32 %30, %20
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 9), align 2
  %33 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %34 = mul i32 %33, 3
  %35 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %34
  %36 = ptrtoint ptr %35 to i32
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %36, i32 noundef 83886602, i32 noundef 6) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderGameCounterBank2(i32 noundef %0) local_unnamed_addr #0 {
  store i32 2, ptr @gGameCounterDisplayBank3798, align 4
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  store i16 %2, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 6), align 2
  store volatile i16 %3, ptr inttoptr (i32 83886602 to ptr), align 2
  %4 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %5 = mul i32 %4, 3
  %6 = add i32 %5, 1
  %7 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  store volatile i16 %8, ptr inttoptr (i32 83886604 to ptr), align 4
  %9 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %10 = mul i32 %9, 3
  %11 = add i32 %10, 2
  %12 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  store volatile i16 %13, ptr inttoptr (i32 83886606 to ptr), align 2
  %14 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %15 = getelementptr [3 x ptr], ptr @gGameCounterDisplayTemplates4310, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %16, ptr noundef nonnull @gGameCounterDisplayBuffer3EC0, i32 noundef 16) #2
  %17 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %0, i32 noundef 100) #2
  %18 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 100) #2
  %19 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %18, i32 noundef 10) #2
  %20 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %0, i32 noundef 10) #2
  %21 = icmp slt i32 %17, 5
  %22 = select i1 %21, i32 10, i32 37
  %23 = add i32 %22, %17
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 3), align 2
  %25 = icmp slt i32 %19, 5
  %26 = select i1 %25, i32 10, i32 37
  %27 = add i32 %26, %19
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 6), align 2
  %29 = icmp slt i32 %20, 5
  %30 = select i1 %29, i32 10, i32 37
  %31 = add i32 %30, %20
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr getelementptr ([0 x i16], ptr @gGameCounterDisplayBuffer3EC0, i32 0, i32 9), align 2
  %33 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  %34 = mul i32 %33, 3
  %35 = getelementptr [0 x i16], ptr @gGameCounterPaletteColors42B4, i32 0, i32 %34
  %36 = ptrtoint ptr %35 to i32
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %36, i32 noundef 83886602, i32 noundef 6) #2
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
