; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerCallbacks = type { [2 x ptr] }
%struct.AudioAllCallbacks = type { [2 x ptr] }

@gAudioPlayerCallbacksE764 = external dso_local local_unnamed_addr constant %struct.AudioPlayerCallbacks, align 4
@gAudioAllCallbacksE76C = external dso_local local_unnamed_addr constant %struct.AudioAllCallbacks, align 4
@gAudioPlayerCountAbs = external dso_local global [0 x i8], align 1
@gAudioPlayerPointers120 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSelectAudioPlayers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr [2 x ptr], ptr @gAudioAllCallbacksE76C, i32 0, i32 %3
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void %10() #2
  br label %30

11:                                               ; preds = %1
  br i1 icmp ugt (i16 ptrtoint (ptr @gAudioPlayerCountAbs to i16), i16 0), label %12, label %30

12:                                               ; preds = %11
  %13 = getelementptr [2 x ptr], ptr @gAudioPlayerCallbacksE764, i32 0, i32 %3
  %14 = tail call i16 @llvm.umax.i16(i16 ptrtoint (ptr @gAudioPlayerCountAbs to i16), i16 1)
  %15 = zext i16 %14 to i32
  br label %16

16:                                               ; preds = %25, %12
  %17 = phi ptr [ @gAudioPlayerPointers120, %12 ], [ %26, %25 ]
  %18 = phi i32 [ 1, %12 ], [ %28, %25 ]
  %19 = phi i32 [ 0, %12 ], [ %27, %25 ]
  %20 = and i32 %18, %6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 4
  %24 = load ptr, ptr %13, align 4
  tail call arm_apcscc void %24(ptr noundef %23) #2
  br label %25

25:                                               ; preds = %22, %16
  %26 = getelementptr ptr, ptr %17, i32 1
  %27 = add nuw nsw i32 %19, 1
  %28 = shl i32 %18, 1
  %29 = icmp eq i32 %27, %15
  br i1 %29, label %30, label %16

30:                                               ; preds = %25, %11, %8
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
