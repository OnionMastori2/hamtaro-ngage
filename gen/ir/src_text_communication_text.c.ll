; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.CommunicationTextGlyph = type { i32 }
%struct.IndexedCommunicationResource = type { ptr, ptr, ptr, i32, i16, i16, i16, i8, [5 x i8] }

@gCommunicationTextReplacements = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gCommunicationTextGlyphs = external dso_local global [0 x %struct.CommunicationTextGlyph], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderCommunicationTextLine(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %2, 12
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %75, label %7

7:                                                ; preds = %3
  %8 = and i32 %4, 61440
  tail call void asm sideeffect "", "{r1}"(i32 501) #3, !srcloc !4
  tail call void asm sideeffect "", "{r0},r"(i32 501, i32 %8) #3, !srcloc !5
  tail call void asm sideeffect "", "{r1}"(i32 533) #3, !srcloc !6
  tail call void asm sideeffect "", "{r0},r"(i32 533, i32 %8) #3, !srcloc !7
  %9 = getelementptr i16, ptr %1, i32 32
  %10 = load i8, ptr @gCommunicationTextReplacements, align 1
  %11 = icmp eq i8 %10, 0
  %12 = trunc i32 %4 to i16
  %13 = or disjoint i16 %12, 501
  %14 = or disjoint i16 %12, 533
  %15 = load i8, ptr %0, align 1
  br label %16

16:                                               ; preds = %70, %7
  %17 = phi i8 [ %15, %7 ], [ %73, %70 ]
  %18 = phi ptr [ %9, %7 ], [ %71, %70 ]
  %19 = phi ptr [ %1, %7 ], [ %72, %70 ]
  %20 = phi ptr [ %0, %7 ], [ %21, %70 ]
  %21 = getelementptr i8, ptr %20, i32 1
  br i1 %11, label %33, label %22

22:                                               ; preds = %16, %29
  %23 = phi i8 [ %31, %29 ], [ %10, %16 ]
  %24 = phi ptr [ %30, %29 ], [ @gCommunicationTextReplacements, %16 ]
  %25 = icmp eq i8 %17, %23
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 1
  %28 = load i8, ptr %27, align 1
  br label %33

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %24, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %22

33:                                               ; preds = %29, %16, %26
  %34 = phi i8 [ %28, %26 ], [ %17, %16 ], [ %17, %29 ]
  %35 = icmp eq i8 %34, 55
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  store i16 %13, ptr %19, align 2
  br label %47

37:                                               ; preds = %55
  %38 = lshr i32 %60, 8
  %39 = and i32 %38, 1023
  %40 = or disjoint i32 %39, %4
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %19, align 2
  %42 = getelementptr i16, ptr %59, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = lshr i16 %43, 2
  %45 = and i16 %44, 1023
  %46 = or disjoint i16 %45, %12
  br label %47

47:                                               ; preds = %37, %36
  %48 = phi i16 [ %46, %37 ], [ %14, %36 ]
  store i16 %48, ptr %18, align 2
  %49 = getelementptr i16, ptr %18, i32 1
  %50 = getelementptr i16, ptr %19, i32 1
  br label %70

51:                                               ; preds = %33
  %52 = load i32, ptr @gCommunicationTextGlyphs, align 1
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %51, %63
  %56 = phi i32 [ %65, %63 ], [ 0, %51 ]
  %57 = shl nuw nsw i32 %56, 2
  %58 = add i32 %57, ptrtoint (ptr @gCommunicationTextGlyphs to i32)
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 1
  %61 = trunc i32 %60 to i8
  %62 = icmp eq i8 %34, %61
  br i1 %62, label %37, label %63

63:                                               ; preds = %55
  %64 = add nuw nsw i32 %56, 1
  %65 = and i32 %64, 255
  %66 = getelementptr %struct.CommunicationTextGlyph, ptr @gCommunicationTextGlyphs, i32 %65
  %67 = load i32, ptr %66, align 1
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %55

70:                                               ; preds = %63, %51, %47
  %71 = phi ptr [ %49, %47 ], [ %18, %51 ], [ %18, %63 ]
  %72 = phi ptr [ %50, %47 ], [ %19, %51 ], [ %19, %63 ]
  %73 = load i8, ptr %21, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %16

75:                                               ; preds = %70, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc zeroext i8 @CheckIndexedCommunicationResourcePosition(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = trunc i32 %0 to i8
  switch i8 %5, label %28 [
    i8 0, label %6
    i8 2, label %15
    i8 3, label %22
    i8 4, label %25
  ]

6:                                                ; preds = %4
  %7 = and i32 %2, 65535
  %8 = icmp eq i32 %7, 65535
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.IndexedCommunicationResource, ptr %1, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = icmp sge i32 %7, %13
  br label %28

15:                                               ; preds = %4
  %16 = and i32 %3, 255
  %17 = getelementptr inbounds %struct.IndexedCommunicationResource, ptr %1, i32 0, i32 7
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, -1
  %21 = icmp eq i32 %16, %20
  br label %28

22:                                               ; preds = %4
  %23 = and i32 %3, 255
  %24 = icmp eq i32 %23, 0
  br label %28

25:                                               ; preds = %4
  %26 = and i32 %2, 65535
  %27 = icmp eq i32 %26, 65535
  br label %28

28:                                               ; preds = %25, %22, %15, %9, %6, %4
  %29 = phi i1 [ false, %4 ], [ false, %6 ], [ %14, %9 ], [ %21, %15 ], [ %24, %22 ], [ %27, %25 ]
  %30 = zext i1 %29 to i8
  ret i8 %30
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderCommunicationTextLines(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, 255
  %6 = add nuw nsw i32 %5, 1
  %7 = tail call arm_apcscc ptr @AllocateHeapFilled(i32 noundef %6, i8 noundef zeroext 0) #4
  %8 = and i32 %2, 65535
  br label %9

9:                                                ; preds = %21, %4
  %10 = phi ptr [ %1, %4 ], [ %23, %21 ]
  %11 = phi ptr [ %0, %4 ], [ %22, %21 ]
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %11, %9 ], [ %17, %16 ]
  %14 = phi ptr [ %7, %9 ], [ %18, %16 ]
  %15 = load i8, ptr %13, align 1
  switch i8 %15, label %16 [
    i8 -32, label %19
    i8 -30, label %19
    i8 0, label %19
  ]

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %13, i32 1
  %18 = getelementptr i8, ptr %14, i32 1
  store i8 %15, ptr %14, align 1
  br label %12

19:                                               ; preds = %12, %12, %12
  store i8 0, ptr %14, align 1
  %20 = load i8, ptr %13, align 1
  switch i8 %20, label %21 [
    i8 -32, label %24
    i8 0, label %24
  ]

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %13, i32 1
  tail call arm_apcscc void @RenderCommunicationTextLine(ptr noundef %7, ptr noundef %10, i32 noundef %8) #5
  %23 = getelementptr i16, ptr %10, i32 64
  br label %9

24:                                               ; preds = %19, %19
  tail call arm_apcscc void @RenderCommunicationTextLine(ptr noundef %7, ptr noundef %10, i32 noundef %8) #5
  %25 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %7) #4
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeapFilled(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 466}
!5 = !{i64 582}
!6 = !{i64 813}
!7 = !{i64 941}
