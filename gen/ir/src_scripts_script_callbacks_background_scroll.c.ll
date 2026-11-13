; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundScrollRow = type { ptr, i16, [2 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gCommunicationTextTileAttributes = external dso_local global [0 x i16], align 2
@gBackgroundScrollRows = external dso_local constant [0 x %struct.BackgroundScrollRow], align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackQueueBackgroundScrollBlankTile(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %3 = icmp ugt i16 %2, 255
  %4 = and i16 %2, 7
  %5 = icmp eq i16 %4, 0
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = lshr i16 %2, 2
  %9 = and i16 %8, 62
  store i16 1, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 128), align 2
  store i16 1, ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 129), align 2
  %10 = shl i16 %2, 3
  %11 = and i16 %10, 2048
  %12 = or disjoint i16 %11, %9
  %13 = xor i16 %12, 2048
  %14 = zext nneg i16 %13 to i32
  %15 = or disjoint i32 %14, 100712512
  tail call arm_apcscc void @QueueDmaTilemapRows(i32 noundef ptrtoint (ptr getelementptr ([0 x i16], ptr @gCommunicationTextTileAttributes, i32 0, i32 128) to i32), i32 noundef %15, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  br label %16

16:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local arm_apcscc void @QueueDmaTilemapRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScrollBackgroundTextRows(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #2
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 3
  %6 = add i32 %5, ptrtoint (ptr @gBackgroundScrollRows to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %9 = getelementptr inbounds %struct.BackgroundScrollRow, ptr %7, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = icmp ult i16 %8, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = zext i16 %8 to i32
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %15 = zext i8 %14 to i32
  tail call arm_apcscc void @ConfigureBackgroundScrollTextRow(ptr noundef nonnull %7, i32 noundef %15, i32 noundef %13) #2
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %17 = add i8 %16, 1
  %18 = icmp ugt i8 %17, 2
  %19 = select i1 %18, i8 0, i8 %17
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %21 = add i8 %20, 1
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %22

22:                                               ; preds = %12, %1
  %23 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = add i16 %24, -1
  store i16 %25, ptr %23, align 2
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 1) #2
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundScrollTextRow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
