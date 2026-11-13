; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gCommunicationTextTileAttributes = external dso_local global [0 x i16], align 2
@gBackgroundScrollRowContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureBackgroundScrollTextRow(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 255
  %5 = shl nuw nsw i32 %4, 6
  %6 = or disjoint i32 %5, 2
  %7 = trunc i32 %6 to i16
  %8 = lshr i32 %2, 8
  %9 = trunc i32 %2 to i8
  %10 = lshr i8 %9, 3
  %11 = icmp ult i8 %9, 8
  %12 = sub nuw nsw i8 32, %10
  %13 = select i1 %11, i8 32, i8 %12
  %14 = zext nneg i8 %13 to i32
  br label %15

15:                                               ; preds = %3, %15
  %16 = phi ptr [ @gCommunicationTextTileAttributes, %3 ], [ %21, %15 ]
  %17 = phi i16 [ %7, %3 ], [ %22, %15 ]
  %18 = phi i8 [ 0, %3 ], [ %23, %15 ]
  store i16 %17, ptr %16, align 2
  %19 = add nuw nsw i16 %17, 32
  %20 = getelementptr i16, ptr %16, i32 %14
  store i16 %19, ptr %20, align 2
  %21 = getelementptr i16, ptr %16, i32 1
  %22 = add nuw nsw i16 %17, 1
  %23 = add nuw nsw i8 %18, 1
  %24 = icmp ugt i8 %13, %23
  br i1 %24, label %15, label %25

25:                                               ; preds = %15
  %26 = and i32 %8, 1
  %27 = zext nneg i8 %10 to i32
  br i1 %11, label %48, label %28

28:                                               ; preds = %25
  %29 = add nuw nsw i32 %6, %14
  %30 = trunc i32 %29 to i16
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %37, %31 ], [ getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 64), %28 ]
  %33 = phi i16 [ %38, %31 ], [ %30, %28 ]
  %34 = phi i8 [ %39, %31 ], [ 0, %28 ]
  store i16 %33, ptr %32, align 2
  %35 = add nuw nsw i16 %33, 32
  %36 = getelementptr i16, ptr %32, i32 %27
  store i16 %35, ptr %36, align 2
  %37 = getelementptr i16, ptr %32, i32 1
  %38 = add nuw nsw i16 %33, 1
  %39 = add nuw nsw i8 %34, 1
  %40 = icmp ugt i8 %10, %39
  br i1 %40, label %31, label %41

41:                                               ; preds = %31
  %42 = shl nuw nsw i32 %26, 11
  %43 = shl nuw nsw i8 %10, 1
  %44 = zext nneg i8 %43 to i32
  %45 = or disjoint i32 %42, %44
  %46 = or disjoint i32 %45, 100712512
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr @gCommunicationTextTileAttributes to i32), i32 noundef %46, i32 noundef %14, i32 noundef 2, i32 noundef 0) #2
  %47 = xor i32 %42, 100714560
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 64) to i32), i32 noundef %47, i32 noundef %27, i32 noundef 2, i32 noundef 0) #2
  br label %51

48:                                               ; preds = %25
  %49 = shl nuw nsw i32 %26, 11
  %50 = or disjoint i32 %49, 100712512
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr @gCommunicationTextTileAttributes to i32), i32 noundef %50, i32 noundef %14, i32 noundef 2, i32 noundef 0) #2
  br label %51

51:                                               ; preds = %48, %41
  %52 = tail call arm_apcscc ptr @AllocateTaskContext(i32 noundef 32) #2
  %53 = getelementptr [0 x ptr], ptr @gBackgroundScrollRowContexts, i32 0, i32 %4
  store ptr %52, ptr %53, align 4
  %54 = shl nuw nsw i32 %4, 11
  %55 = or disjoint i32 %54, 100663360
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %52, i8 noundef zeroext 32, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 3, i32 noundef %55, i32 noundef sub (i32 ptrtoint (ptr @gCommunicationTextTileAttributes to i32), i32 14336)) #2
  %56 = load ptr, ptr %53, align 4
  %57 = load ptr, ptr %0, align 4
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %56, ptr noundef %57) #2
  ret void
}

declare dso_local arm_apcscc void @QueueDmaTilemapRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @AllocateTaskContext(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureTaskContext(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
