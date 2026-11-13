; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetBackgroundAnchor(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #3
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 4) #3
  tail call arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext 2, i32 noundef 0, i32 noundef 0) #3
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEnableFullScreenWindow0(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %3 = or i16 %2, 8192
  store i16 %3, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %4 = load i32, ptr @gVideoState, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr @gVideoState, align 4
  store volatile i16 240, ptr inttoptr (i32 67108928 to ptr), align 64
  store volatile i16 160, ptr inttoptr (i32 67108932 to ptr), align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableWindow0AndEnableObjects(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %3 = and i16 %2, -12289
  %4 = or disjoint i16 %3, 4096
  store i16 %4, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %5 = load i32, ptr @gVideoState, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr @gVideoState, align 4
  store volatile i16 0, ptr inttoptr (i32 67108928 to ptr), align 64
  store volatile i16 0, ptr inttoptr (i32 67108932 to ptr), align 4
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
