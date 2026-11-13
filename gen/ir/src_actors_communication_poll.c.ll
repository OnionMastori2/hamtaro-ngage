; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.CommunicationState = type { i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, [8 x i8], i32, [2 x i32], [8 x i8], [2 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [192 x i8] }

@gCommunicationState = external dso_local local_unnamed_addr global %struct.CommunicationState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @PollCommunicationState(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr inttoptr (i32 67109160 to ptr), align 8
  %4 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 1), align 1
  switch i8 %4, label %45 [
    i8 0, label %5
    i8 1, label %22
    i8 2, label %31
  ]

5:                                                ; preds = %2
  %6 = and i32 %3, 136
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %45

8:                                                ; preds = %5
  %9 = and i32 %3, 4
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 10), align 4
  %12 = icmp eq i32 %11, -1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  %15 = load volatile i16, ptr inttoptr (i32 67109376 to ptr), align 512
  %16 = and i16 %15, -129
  store volatile i16 %16, ptr inttoptr (i32 67109376 to ptr), align 512
  %17 = load volatile i16, ptr inttoptr (i32 67109376 to ptr), align 512
  %18 = or i16 %17, 64
  store volatile i16 %18, ptr inttoptr (i32 67109376 to ptr), align 512
  store volatile i16 1, ptr inttoptr (i32 67109384 to ptr), align 8
  %19 = load volatile i8, ptr inttoptr (i32 67109161 to ptr), align 1
  %20 = and i8 %19, -65
  store volatile i8 %20, ptr inttoptr (i32 67109161 to ptr), align 1
  store volatile i16 192, ptr inttoptr (i32 67109378 to ptr), align 2
  store volatile i32 45564, ptr inttoptr (i32 67109132 to ptr), align 4
  store i8 8, ptr @gCommunicationState, align 4
  br label %21

21:                                               ; preds = %8, %14
  store i8 1, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 1), align 1
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 2), align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 7), align 2
  %27 = icmp ult i8 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = add nuw nsw i8 %26, 1
  store i8 %29, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 7), align 2
  br label %31

30:                                               ; preds = %25
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 1), align 1
  br label %31

31:                                               ; preds = %22, %30, %28, %2
  %32 = icmp eq ptr %1, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = tail call arm_apcscc i32 @ReadCommunicationPacket(ptr noundef nonnull %1) #2
  br label %35

35:                                               ; preds = %33, %31
  %36 = icmp eq ptr %0, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call arm_apcscc void @PrepareCommunicationPacket(ptr noundef nonnull %0) #2
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i8, ptr @gCommunicationState, align 4
  %40 = icmp eq i8 %39, 0
  %41 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 5), align 4
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store volatile i16 192, ptr inttoptr (i32 67109134 to ptr), align 2
  br label %45

45:                                               ; preds = %5, %38, %44, %2
  %46 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 8), align 1
  %47 = add i8 %46, 1
  store i8 %47, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 8), align 1
  %48 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 3), align 1
  %49 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 2), align 2
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = load i8, ptr @gCommunicationState, align 4
  %53 = icmp eq i8 %52, 8
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = or disjoint i32 %51, 128
  %56 = tail call i32 asm "", "=r,0"(i32 %55) #3, !srcloc !4
  br label %57

57:                                               ; preds = %45, %54
  %58 = phi i32 [ %56, %54 ], [ %51, %45 ]
  %59 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 6), align 1
  %60 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 7), align 2
  %61 = lshr i8 %60, 3
  %62 = zext nneg i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 15
  %64 = and i32 %3, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = or disjoint i32 %63, 8192
  %68 = tail call i32 asm "", "=r,0"(i32 %67) #3, !srcloc !5
  br label %69

69:                                               ; preds = %57, %66
  %70 = phi i32 [ %68, %66 ], [ %63, %57 ]
  %71 = icmp eq i8 %59, 0
  %72 = zext i8 %48 to i32
  %73 = or i32 %58, %72
  %74 = or i32 %73, 4096
  %75 = select i1 %71, i32 %73, i32 %74
  %76 = or i32 %70, %75
  ret i32 %76
}

declare dso_local arm_apcscc i32 @ReadCommunicationPacket(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @PrepareCommunicationPacket(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2290}
!5 = !{i64 2772}
