; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4
@gAudioDispatchWords4F10 = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeAudioCore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %0, align 4
  %3 = load volatile i32, ptr inttoptr (i32 67109060 to ptr), align 4
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store volatile i32 -2076180476, ptr inttoptr (i32 67109060 to ptr), align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load volatile i32, ptr inttoptr (i32 67109072 to ptr), align 16
  %9 = and i32 %8, 33554432
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store volatile i32 -2076180476, ptr inttoptr (i32 67109072 to ptr), align 16
  br label %12

12:                                               ; preds = %11, %7
  store volatile i16 1024, ptr inttoptr (i32 67109062 to ptr), align 2
  store volatile i16 1024, ptr inttoptr (i32 67109074 to ptr), align 2
  store volatile i16 143, ptr inttoptr (i32 67108996 to ptr), align 4
  store volatile i16 -22258, ptr inttoptr (i32 67108994 to ptr), align 2
  %13 = load volatile i8, ptr inttoptr (i32 67109001 to ptr), align 1
  %14 = and i8 %13, 63
  %15 = or disjoint i8 %14, 64
  store volatile i8 %15, ptr inttoptr (i32 67109001 to ptr), align 1
  %16 = getelementptr i8, ptr %0, i32 848
  %17 = ptrtoint ptr %16 to i32
  store volatile i32 %17, ptr inttoptr (i32 67109052 to ptr), align 4
  store volatile i32 67109024, ptr inttoptr (i32 67109056 to ptr), align 64
  %18 = getelementptr i8, ptr %0, i32 2432
  %19 = ptrtoint ptr %18 to i32
  store volatile i32 %19, ptr inttoptr (i32 67109064 to ptr), align 8
  store volatile i32 67109028, ptr inttoptr (i32 67109068 to ptr), align 4
  store ptr %0, ptr @gAudioCorePointer7FF0, align 4
  store i32 0, ptr %2, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef 83887084) #4
  %20 = getelementptr i8, ptr %0, i32 6
  store i8 8, ptr %20, align 1
  %21 = getelementptr i8, ptr %0, i32 7
  store i8 15, ptr %21, align 1
  %22 = getelementptr i32, ptr %0, i32 14
  store i32 ptrtoint (ptr @StartAudioTrackNoteAsm to i32), ptr %22, align 4
  %23 = getelementptr i32, ptr %0, i32 10
  store i32 ptrtoint (ptr @AudioDriverNoop to i32), ptr %23, align 4
  %24 = getelementptr i32, ptr %0, i32 11
  store i32 ptrtoint (ptr @AudioDriverNoop to i32), ptr %24, align 4
  %25 = getelementptr i32, ptr %0, i32 12
  store i32 ptrtoint (ptr @AudioDriverNoop to i32), ptr %25, align 4
  %26 = getelementptr i32, ptr %0, i32 15
  store i32 ptrtoint (ptr @AudioDriverNoop to i32), ptr %26, align 4
  call arm_apcscc void @CopyInitialAudioDispatchAsm(ptr noundef nonnull @gAudioDispatchWords4F10) #4
  %27 = getelementptr i32, ptr %0, i32 13
  store i32 ptrtoint (ptr @gAudioDispatchWords4F10 to i32), ptr %27, align 4
  call arm_apcscc void @SetAudioSampleFrequency(i32 noundef 262144) #4
  store i32 1752395091, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @StartAudioTrackNoteAsm(i32 noundef, ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @AudioDriverNoop() #2

declare dso_local arm_apcscc void @CopyInitialAudioDispatchAsm(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetAudioSampleFrequency(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
