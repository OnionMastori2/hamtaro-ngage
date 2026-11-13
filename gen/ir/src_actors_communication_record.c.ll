; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.IndexedCommunicationResource = type { ptr, ptr, ptr, i32, i16, i16, i16, i8, [5 x i8] }

@gIndexedCommunicationResources = external dso_local local_unnamed_addr constant [0 x %struct.IndexedCommunicationResource], align 4
@gCommunicationReceivedRecord = external dso_local global [0 x i8], align 1
@gIndexedCommunicationTexts = external dso_local constant [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gCommunicationRecordText = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeIndexedCommunicationRecord(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = zext i8 %0 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  %4 = tail call arm_apcscc i32 @__udivsi3(i32 noundef %3, i32 noundef 5) #4
  %5 = and i32 %4, 255
  store i32 0, ptr %2, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef nonnull @gCommunicationReceivedRecord, i32 noundef 83886112) #4
  %6 = icmp eq i8 %0, 50
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call ptr asm "", "=r,0"(ptr nonnull @gCommunicationReceivedRecord) #5, !srcloc !4
  store i8 1, ptr %8, align 1
  %9 = getelementptr i8, ptr %8, i32 20
  store i8 0, ptr %9, align 1
  %10 = getelementptr i8, ptr %8, i32 21
  store i8 0, ptr %10, align 1
  %11 = getelementptr i8, ptr %8, i32 22
  store i8 0, ptr %11, align 1
  %12 = getelementptr i8, ptr %8, i32 23
  store i8 0, ptr %12, align 1
  %13 = getelementptr i8, ptr %8, i32 24
  store i8 0, ptr %13, align 1
  %14 = getelementptr i8, ptr %8, i32 25
  store i8 0, ptr %14, align 1
  %15 = getelementptr i8, ptr %8, i32 26
  store i8 0, ptr %15, align 1
  %16 = getelementptr i8, ptr %8, i32 27
  store i8 0, ptr %16, align 1
  %17 = getelementptr i8, ptr %8, i32 28
  store i8 0, ptr %17, align 1
  %18 = getelementptr i8, ptr %8, i32 29
  store i8 0, ptr %18, align 1
  br label %68

19:                                               ; preds = %1
  %20 = call arm_apcscc i32 @__umodsi3(i32 noundef %3, i32 noundef 5) #4
  %21 = trunc i32 %20 to i8
  %22 = add i8 %21, 3
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 4), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 2) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 3) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 4) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 5) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 6) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 7) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 8) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 9) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 10) to ptr), align 1
  store i8 1, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 3) to i32), i32 11) to ptr), align 1
  %23 = and i32 %20, 255
  store i8 0, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 15), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 16), align 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  br i1 icmp ne (ptr @gIndexedCommunicationTexts, ptr @gDefaultTaskContextScript), label %26, label %31

26:                                               ; preds = %25
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr ptr, ptr @gIndexedCommunicationTexts, i32 %28
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %25, %26
  %32 = phi ptr [ %30, %26 ], [ @gIndexedCommunicationTexts, %25 ]
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  store i8 %33, ptr @gCommunicationRecordText, align 1
  %36 = getelementptr i8, ptr %32, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  store i8 %37, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 1), align 1
  %40 = getelementptr i8, ptr %32, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  store i8 %41, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 2), align 1
  %44 = getelementptr i8, ptr %32, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  store i8 %45, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 3), align 1
  %48 = getelementptr i8, ptr %32, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  store i8 %49, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 4), align 1
  %52 = getelementptr i8, ptr %32, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 5), align 1
  %56 = getelementptr i8, ptr %32, i32 6
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i8 %57, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 6), align 1
  br label %60

60:                                               ; preds = %59, %55, %51, %47, %43, %39, %35, %31
  %61 = phi i8 [ 0, %31 ], [ 1, %35 ], [ 2, %39 ], [ 3, %43 ], [ 4, %47 ], [ 5, %51 ], [ 6, %55 ], [ 7, %59 ]
  %62 = phi ptr [ @gCommunicationRecordText, %31 ], [ getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 1), %35 ], [ getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 2), %39 ], [ getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 3), %43 ], [ getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 4), %47 ], [ getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 5), %51 ], [ getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 6), %55 ], [ getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 7), %59 ]
  store i8 0, ptr %62, align 1
  %63 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %5, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %5, i32 7
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i16
  call arm_apcscc void @CopyBytes16(ptr noundef %64, ptr noundef getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 12), i16 noundef zeroext %67) #4
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 -5), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 -4), align 1
  store i8 %61, ptr getelementptr ([0 x i8], ptr @gCommunicationRecordText, i32 0, i32 -3), align 1
  br label %68

68:                                               ; preds = %7, %19, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @__udivsi3(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @__umodsi3(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @CopyBytes16(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 617}
