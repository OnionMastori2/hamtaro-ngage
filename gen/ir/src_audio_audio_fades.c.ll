; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureAudioPlayerFade(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureAudioPlayerFadeState(ptr noundef %0, i16 noundef zeroext %1) #3
  ret void
}

declare dso_local arm_apcscc void @ConfigureAudioPlayerFadeState(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @FadeOutAudioPlayer(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr i32, ptr %0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1752395091
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i16, ptr %0, i32 19
  store i16 %1, ptr %7, align 2
  %8 = getelementptr i16, ptr %0, i32 18
  store i16 %1, ptr %8, align 2
  %9 = getelementptr i16, ptr %0, i32 20
  store i16 257, ptr %9, align 2
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @FadeInAudioPlayer(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr i32, ptr %0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1752395091
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr i16, ptr %0, i32 19
  store i16 %1, ptr %7, align 2
  %8 = getelementptr i16, ptr %0, i32 18
  store i16 %1, ptr %8, align 2
  %9 = getelementptr i16, ptr %0, i32 20
  store i16 2, ptr %9, align 2
  %10 = getelementptr i32, ptr %0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2147483647
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
