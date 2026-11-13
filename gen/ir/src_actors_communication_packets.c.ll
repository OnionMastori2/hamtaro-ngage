; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.CommunicationState = type { i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, [8 x i8], i32, [2 x i32], [8 x i8], [2 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [192 x i8] }
%struct.anon = type { i32, i32 }
%struct.CommunicationInput = type { [2 x i32] }

@gCommunicationState = external dso_local global %struct.CommunicationState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @PrepareCommunicationPacket(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 8), align 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  store i8 %2, ptr %3, align 1
  %4 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 2), align 2
  %5 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 3), align 1
  %6 = xor i8 %5, %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  %8 = getelementptr i8, ptr %7, i32 1
  store i8 %6, ptr %8, align 1
  %9 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  %10 = getelementptr i16, ptr %9, i32 1
  store i16 0, ptr %10, align 2
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %0, ptr noundef %12, i32 noundef 67108868) #4
  %13 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  %14 = getelementptr i16, ptr %13, i32 1
  %15 = load i16, ptr %13, align 2
  %16 = getelementptr i16, ptr %13, i32 2
  %17 = load i16, ptr %14, align 2
  %18 = add i16 %15, %17
  %19 = getelementptr i16, ptr %13, i32 3
  %20 = load i16, ptr %16, align 2
  %21 = add i16 %18, %20
  %22 = getelementptr i16, ptr %13, i32 4
  %23 = load i16, ptr %19, align 2
  %24 = add i16 %21, %23
  %25 = getelementptr i16, ptr %13, i32 5
  %26 = load i16, ptr %22, align 2
  %27 = add i16 %24, %26
  %28 = getelementptr i16, ptr %13, i32 6
  %29 = load i16, ptr %25, align 2
  %30 = add i16 %27, %29
  %31 = getelementptr i16, ptr %13, i32 7
  %32 = load i16, ptr %28, align 2
  %33 = add i16 %30, %32
  %34 = getelementptr i16, ptr %13, i32 8
  %35 = load i16, ptr %31, align 2
  %36 = add i16 %33, %35
  %37 = getelementptr i16, ptr %13, i32 9
  %38 = load i16, ptr %34, align 2
  %39 = add i16 %36, %38
  %40 = load i16, ptr %37, align 2
  %41 = add i16 %39, %40
  %42 = sub i16 -13, %41
  store i16 %42, ptr %14, align 2
  %43 = load i8, ptr @gCommunicationState, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %1
  store volatile i16 0, ptr inttoptr (i32 67109134 to ptr), align 2
  br label %46

46:                                               ; preds = %45, %1
  store i32 -1, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 10), align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @ReadCommunicationPacket(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 0), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 0), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 0), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 0), align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 1), align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 1), align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 2), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 2), align 4
  store ptr %8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 2), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 2), align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 3), align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 3), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16, i32 3), align 4
  store ptr %9, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 3), align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 4, i32 0), align 4
  store i32 %11, ptr %2, align 4
  store i32 0, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 4, i32 0), align 4
  store volatile i16 1, ptr inttoptr (i32 67109384 to ptr), align 8
  store i8 0, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 3), align 1
  %12 = load i8, ptr @gCommunicationState, align 4
  %13 = icmp eq i8 %12, 8
  %14 = zext i1 %13 to i32
  %15 = select i1 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16) to i32), i32 4) to ptr), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16)
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i16, ptr %16, i32 1
  %18 = load i16, ptr %16, align 2
  %19 = getelementptr i16, ptr %16, i32 2
  %20 = load i16, ptr %17, align 2
  %21 = add i16 %18, %20
  %22 = getelementptr i16, ptr %16, i32 3
  %23 = load i16, ptr %19, align 2
  %24 = add i16 %21, %23
  %25 = getelementptr i16, ptr %16, i32 4
  %26 = load i16, ptr %22, align 2
  %27 = add i16 %24, %26
  %28 = getelementptr i16, ptr %16, i32 5
  %29 = load i16, ptr %25, align 2
  %30 = add i16 %27, %29
  %31 = getelementptr i16, ptr %16, i32 6
  %32 = load i16, ptr %28, align 2
  %33 = add i16 %30, %32
  %34 = getelementptr i16, ptr %16, i32 7
  %35 = load i16, ptr %31, align 2
  %36 = add i16 %33, %35
  %37 = getelementptr i16, ptr %16, i32 8
  %38 = load i16, ptr %34, align 2
  %39 = add i16 %36, %38
  %40 = getelementptr i16, ptr %16, i32 9
  %41 = load i16, ptr %37, align 2
  %42 = add i16 %39, %41
  %43 = load i16, ptr %40, align 2
  %44 = getelementptr i8, ptr %2, i32 %14
  %45 = load i8, ptr %44, align 1
  %46 = icmp ne i8 %45, 0
  %47 = add i16 %42, %43
  %48 = icmp eq i16 %47, -13
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %56

50:                                               ; preds = %1
  %51 = getelementptr i16, ptr %16, i32 2
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %51, ptr noundef %0, i32 noundef 67108868) #4
  %52 = shl nuw nsw i32 1, %14
  %53 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 3), align 1
  %54 = trunc i32 %52 to i8
  %55 = or i8 %53, %54
  store i8 %55, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 3), align 1
  br label %56

56:                                               ; preds = %50, %1
  %57 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %15, align 4
  %59 = getelementptr i16, ptr %58, i32 2
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %57, ptr noundef %59, i32 noundef 83886084) #4
  %60 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 3), align 1
  %61 = load i8, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 2), align 2
  %62 = or i8 %61, %60
  store i8 %62, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 2), align 2
  %63 = zext i8 %60 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %63
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateCommunicationTransferIrq() local_unnamed_addr #0 {
  %1 = alloca %struct.CommunicationInput, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #5
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %1, ptr align 4 inttoptr (i32 67109152 to ptr), i32 8, i1 true)
  %2 = load volatile i32, ptr inttoptr (i32 67109160 to ptr), align 8
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 6
  %5 = and i8 %4, 1
  store i8 %5, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 6), align 1
  %6 = load i32, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 10), align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  store volatile i16 -258, ptr inttoptr (i32 67109162 to ptr), align 2
  %9 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13, i32 1), align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13, i32 1), align 4
  store ptr %9, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  br label %17

11:                                               ; preds = %0
  %12 = icmp sgt i32 %6, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = load ptr, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13, i32 1), align 4
  %15 = getelementptr i16, ptr %14, i32 %6
  %16 = load i16, ptr %15, align 2
  store volatile i16 %16, ptr inttoptr (i32 67109162 to ptr), align 2
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i32, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 10), align 4
  %19 = icmp slt i32 %18, 11
  br i1 %19, label %20, label %23

20:                                               ; preds = %11, %17
  %21 = phi i32 [ %18, %17 ], [ %6, %11 ]
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 10), align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8, ptr @gCommunicationState, align 4
  %25 = icmp eq i8 %24, 8
  %26 = zext i1 %25 to i32
  %27 = select i1 %25, i32 2, i32 0
  %28 = call ptr asm "", "={r2},{r2}"(ptr nonnull %1) #6, !srcloc !4
  %29 = ptrtoint ptr %28 to i32
  %30 = add i32 %27, %29
  %31 = inttoptr i32 %30 to ptr
  %32 = load i16, ptr %31, align 2
  %33 = select i1 %25, i32 4, i32 0
  %34 = icmp eq i16 %32, -258
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 11) to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 -1, ptr %37, align 4
  br label %58

41:                                               ; preds = %35, %23
  %42 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 14) to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 11, i32 0) to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %43, align 4
  %48 = getelementptr i8, ptr %1, i32 %27
  %49 = load volatile i16, ptr %48, align 2
  %50 = getelementptr i16, ptr %47, i32 %46
  store i16 %49, ptr %50, align 2
  %51 = icmp eq i32 %46, 9
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15) to i32)
  %54 = inttoptr i32 %53 to ptr
  %55 = load ptr, ptr %54, align 4
  store ptr %47, ptr %54, align 4
  store ptr %55, ptr %43, align 4
  %56 = or disjoint i32 %26, ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 4) to i32)
  %57 = inttoptr i32 %56 to ptr
  store i8 1, ptr %57, align 1
  br label %58

58:                                               ; preds = %40, %41, %52
  %59 = call ptr asm "", "={r3},{r3}"(ptr nonnull @gCommunicationState) #6, !srcloc !5
  %60 = getelementptr inbounds %struct.CommunicationState, ptr %59, i32 0, i32 11
  %61 = ptrtoint ptr %60 to i32
  %62 = add i32 %33, %61
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %64, 11
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = add nsw i32 %64, 1
  store i32 %67, ptr %63, align 4
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i8, ptr %59, align 4
  %70 = icmp eq i8 %69, 8
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  store volatile i16 0, ptr inttoptr (i32 67109134 to ptr), align 2
  %72 = load volatile i16, ptr inttoptr (i32 67109160 to ptr), align 8
  %73 = or i16 %72, 128
  store volatile i16 %73, ptr inttoptr (i32 67109160 to ptr), align 8
  store volatile i16 192, ptr inttoptr (i32 67109134 to ptr), align 2
  br label %74

74:                                               ; preds = %71, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 4443}
!5 = !{i64 5653}
