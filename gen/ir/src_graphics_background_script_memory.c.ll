; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gBackgroundQueuedWriteValue = external dso_local global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandDmaCopyRows64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr i8, ptr %3, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or disjoint i32 %28, %32
  %34 = getelementptr i8, ptr %3, i32 7
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = or disjoint i32 %33, %37
  %39 = getelementptr i8, ptr %3, i32 8
  store ptr %39, ptr %1, align 4
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr i8, ptr %3, i32 9
  store ptr %41, ptr %1, align 4
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr i8, ptr %3, i32 10
  store ptr %44, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #4
  %45 = tail call i32 asm "", "=r,0"(i32 0) #5, !srcloc !4
  %46 = icmp ult i32 %45, %43
  br i1 %46, label %47, label %61

47:                                               ; preds = %2
  %48 = zext i8 %40 to i32
  %49 = or disjoint i32 %48, -2147483648
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i32 [ %45, %47 ], [ %59, %50 ]
  %52 = shl nuw nsw i32 %51, 6
  %53 = add i32 %52, %20
  %54 = inttoptr i32 %53 to ptr
  store volatile ptr %54, ptr inttoptr (i32 67109076 to ptr), align 4
  %55 = add i32 %52, %38
  %56 = inttoptr i32 %55 to ptr
  store volatile ptr %56, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 %49, ptr inttoptr (i32 67109084 to ptr), align 4
  %57 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %58 = add nuw i32 %51, 1
  %59 = and i32 %58, 255
  %60 = icmp ult i32 %59, %43
  br i1 %60, label %50, label %61

61:                                               ; preds = %50, %2
  ret i32 0
}

declare dso_local arm_apcscc void @CommitBackgroundScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @BackgroundCommandStop98(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandBiosCopy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr i8, ptr %3, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or disjoint i32 %28, %32
  %34 = getelementptr i8, ptr %3, i32 7
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = or disjoint i32 %33, %37
  %39 = getelementptr i8, ptr %3, i32 8
  store ptr %39, ptr %1, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %3, i32 9
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = getelementptr i8, ptr %3, i32 10
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or disjoint i32 %45, %49
  %51 = or disjoint i32 %50, %41
  %52 = getelementptr i8, ptr %3, i32 12
  store ptr %52, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #4
  %53 = and i32 %41, 3
  %54 = icmp eq i32 %53, 0
  %55 = inttoptr i32 %20 to ptr
  %56 = inttoptr i32 %38 to ptr
  %57 = lshr exact i32 %51, 2
  %58 = and i32 %57, 2097151
  %59 = or disjoint i32 %58, 67108864
  %60 = lshr i32 %51, 1
  %61 = and i32 %60, 2097151
  %62 = select i1 %54, i32 %59, i32 %61
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %55, ptr noundef %56, i32 noundef %62) #4
  ret i32 0
}

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandBiosCopyOffset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr i8, ptr %3, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or disjoint i32 %28, %32
  %34 = getelementptr i8, ptr %3, i32 7
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = or disjoint i32 %33, %37
  %39 = getelementptr i8, ptr %3, i32 8
  store ptr %39, ptr %1, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %3, i32 9
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or disjoint i32 %45, %41
  %47 = getelementptr i8, ptr %3, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or disjoint i32 %46, %50
  %52 = getelementptr i8, ptr %3, i32 11
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = or disjoint i32 %51, %55
  %57 = getelementptr i8, ptr %3, i32 12
  store ptr %57, ptr %1, align 4
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr i8, ptr %3, i32 13
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 8
  %64 = getelementptr i8, ptr %3, i32 14
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or disjoint i32 %63, %67
  %69 = or disjoint i32 %68, %59
  %70 = getelementptr i8, ptr %3, i32 16
  store ptr %70, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #4
  %71 = and i32 %59, 3
  %72 = icmp eq i32 %71, 0
  %73 = add i32 %38, %20
  %74 = inttoptr i32 %73 to ptr
  %75 = inttoptr i32 %56 to ptr
  %76 = lshr exact i32 %69, 2
  %77 = and i32 %76, 2097151
  %78 = or disjoint i32 %77, 67108864
  %79 = lshr i32 %69, 1
  %80 = and i32 %79, 2097151
  %81 = select i1 %72, i32 %78, i32 %80
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %74, ptr noundef %75, i32 noundef %81) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @BackgroundCommandStop9B(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandQueueByteWrite(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #4
  %24 = zext i8 %22 to i16
  store i16 %24, ptr @gBackgroundQueuedWriteValue, align 2
  tail call arm_apcscc void @QueueCpuTransfer(i32 noundef ptrtoint (ptr @gBackgroundQueuedWriteValue to i32), i32 noundef %20, i32 noundef 1) #4
  ret i32 0
}

declare dso_local arm_apcscc void @QueueCpuTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandQueueHalfwordWrite(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = or disjoint i16 %27, %23
  %29 = getelementptr i8, ptr %3, i32 6
  store ptr %29, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #4
  store i16 %28, ptr @gBackgroundQueuedWriteValue, align 2
  tail call arm_apcscc void @QueueCpuTransfer(i32 noundef ptrtoint (ptr @gBackgroundQueuedWriteValue to i32), i32 noundef %20, i32 noundef 2) #4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandQueueCpuCopy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr i8, ptr %3, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or disjoint i32 %28, %32
  %34 = getelementptr i8, ptr %3, i32 7
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = or disjoint i32 %33, %37
  %39 = getelementptr i8, ptr %3, i32 8
  store ptr %39, ptr %1, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %3, i32 9
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or disjoint i32 %45, %41
  %47 = getelementptr i8, ptr %3, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or disjoint i32 %46, %50
  %52 = getelementptr i8, ptr %3, i32 11
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = or disjoint i32 %51, %55
  %57 = getelementptr i8, ptr %3, i32 12
  store ptr %57, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #4
  tail call arm_apcscc void @QueueCpuTransfer(i32 noundef %20, i32 noundef %38, i32 noundef %56) #4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandQueueCpuCopyOffset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr i8, ptr %3, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or disjoint i32 %28, %32
  %34 = getelementptr i8, ptr %3, i32 7
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = or disjoint i32 %33, %37
  %39 = getelementptr i8, ptr %3, i32 8
  store ptr %39, ptr %1, align 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %3, i32 9
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or disjoint i32 %45, %41
  %47 = getelementptr i8, ptr %3, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or disjoint i32 %46, %50
  %52 = getelementptr i8, ptr %3, i32 11
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = or disjoint i32 %51, %55
  %57 = getelementptr i8, ptr %3, i32 12
  store ptr %57, ptr %1, align 4
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr i8, ptr %3, i32 13
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 8
  %64 = or disjoint i32 %63, %59
  %65 = getelementptr i8, ptr %3, i32 14
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = or disjoint i32 %64, %68
  %70 = getelementptr i8, ptr %3, i32 15
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw i32 %72, 24
  %74 = or disjoint i32 %69, %73
  %75 = getelementptr i8, ptr %3, i32 16
  store ptr %75, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #4
  %76 = add i32 %38, %20
  tail call arm_apcscc void @QueueCpuTransfer(i32 noundef %76, i32 noundef %56, i32 noundef %74) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @BackgroundCommandCall(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr i8, ptr %3, i32 4
  %23 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 11
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.BackgroundRenderState, ptr %0, i32 0, i32 8, i32 %25
  store ptr %22, ptr %26, align 4
  %27 = load i8, ptr %23, align 1
  %28 = add i8 %27, 1
  store i8 %28, ptr %23, align 1
  %29 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 6
  store ptr %21, ptr %29, align 4
  store ptr %21, ptr %1, align 4
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 738}
