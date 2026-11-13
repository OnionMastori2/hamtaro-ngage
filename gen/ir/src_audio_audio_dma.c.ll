; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioCoreDmaPrefix = type { i32, i8 }

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @PauseAudioDma() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1752395091
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  %7 = add nuw nsw i32 %3, 10
  store i32 %7, ptr %2, align 4
  %8 = load volatile i32, ptr inttoptr (i32 67109060 to ptr), align 4
  %9 = and i32 %8, 33554432
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store volatile i32 -2076180476, ptr inttoptr (i32 67109060 to ptr), align 4
  br label %12

12:                                               ; preds = %11, %6
  %13 = load volatile i32, ptr inttoptr (i32 67109072 to ptr), align 16
  %14 = and i32 %13, 33554432
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store volatile i32 -2076180476, ptr inttoptr (i32 67109072 to ptr), align 16
  br label %17

17:                                               ; preds = %16, %12
  store volatile i16 1024, ptr inttoptr (i32 67109062 to ptr), align 2
  store volatile i16 1024, ptr inttoptr (i32 67109074 to ptr), align 2
  store i32 0, ptr %1, align 4
  %18 = getelementptr i8, ptr %2, i32 848
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %1, ptr noundef %18, i32 noundef 83886872) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  br label %19

19:                                               ; preds = %17, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @ResumeAudioDma() local_unnamed_addr #3 {
  %1 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %2 = load i32, ptr %1, align 4
  %3 = icmp eq i32 %2, 1752395091
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  store volatile i16 -18944, ptr inttoptr (i32 67109062 to ptr), align 2
  store volatile i16 -18944, ptr inttoptr (i32 67109074 to ptr), align 2
  %5 = getelementptr inbounds %struct.AudioCoreDmaPrefix, ptr %1, i32 0, i32 1
  store volatile i8 0, ptr %5, align 4
  %6 = add i32 %2, -10
  store i32 %6, ptr %1, align 4
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
