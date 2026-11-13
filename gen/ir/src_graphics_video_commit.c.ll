; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.DisplayStatus = type { i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gDisplayStatus = external dso_local local_unnamed_addr global %struct.DisplayStatus, align 1
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @CommitVideoRegisters() local_unnamed_addr #0 {
  %1 = load i16, ptr @gDisplayStatus, align 1
  %2 = icmp ult i16 %1, 64
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = and i16 %1, 192
  %5 = icmp eq i16 %4, 64
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = and i16 %1, -200
  store i16 %7, ptr @gDisplayStatus, align 1
  store volatile i16 %7, ptr inttoptr (i32 67108868 to ptr), align 4
  br label %11

8:                                                ; preds = %3
  %9 = load volatile i16, ptr inttoptr (i32 67108868 to ptr), align 4
  %10 = and i16 %9, -193
  store i16 %10, ptr @gDisplayStatus, align 1
  br label %11

11:                                               ; preds = %6, %8, %0
  %12 = load i32, ptr @gVideoState, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  store volatile i16 %16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %17 = load i32, ptr @gVideoState, align 4
  %18 = and i32 %17, -2
  store i32 %18, ptr @gVideoState, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %18, %15 ], [ %12, %11 ]
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 2), align 1
  %25 = zext i8 %24 to i16
  %26 = shl nuw i16 %25, 8
  %27 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 1), align 2
  %28 = zext i8 %27 to i16
  %29 = or disjoint i16 %26, %28
  %30 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  store volatile i16 %30, ptr inttoptr (i32 67108944 to ptr), align 16
  store volatile i16 %29, ptr inttoptr (i32 67108946 to ptr), align 2
  %31 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 3), align 4
  %32 = zext i8 %31 to i16
  store volatile i16 %32, ptr inttoptr (i32 67108948 to ptr), align 4
  %33 = load i32, ptr @gVideoState, align 4
  %34 = and i32 %33, -3
  store i32 %34, ptr @gVideoState, align 4
  br label %35

35:                                               ; preds = %23, %19
  %36 = load i16, ptr getelementptr (i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 2), i32 1), align 2
  %37 = load i16, ptr getelementptr (i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 1), i32 1), align 2
  %38 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 2), align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %35
  %41 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  store volatile i16 %41, ptr inttoptr (i32 67108940 to ptr), align 4
  %42 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 1), align 2
  %43 = and i8 %42, 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %77, label %45

45:                                               ; preds = %40
  %46 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  %47 = and i16 %46, 15
  %48 = add nuw nsw i16 %47, 1
  %49 = zext nneg i16 %48 to i32
  %50 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef 240, i32 noundef %49) #2
  %51 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  %52 = lshr i16 %51, 4
  %53 = and i16 %52, 15
  %54 = add nuw nsw i16 %53, 1
  %55 = zext nneg i16 %54 to i32
  %56 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef 160, i32 noundef %55) #2
  %57 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  %58 = freeze i16 %57
  %59 = lshr i16 %58, 1
  %60 = and i16 %59, 7
  %61 = lshr i16 %58, 5
  %62 = and i16 %61, 7
  %63 = and i32 %50, 65535
  %64 = zext nneg i16 %60 to i32
  %65 = add nsw i32 %63, -1
  %66 = icmp ult i32 %65, %64
  %67 = trunc i32 %50 to i16
  %68 = add i16 %67, -1
  %69 = select i1 %66, i16 %68, i16 %60
  %70 = and i32 %56, 65535
  %71 = zext nneg i16 %62 to i32
  %72 = add nsw i32 %70, -1
  %73 = icmp ult i32 %72, %71
  %74 = trunc i32 %56 to i16
  %75 = add i16 %74, -1
  %76 = select i1 %73, i16 %75, i16 %62
  br label %77

77:                                               ; preds = %40, %45, %35
  %78 = phi i16 [ %76, %45 ], [ 0, %40 ], [ 0, %35 ]
  %79 = phi i16 [ %69, %45 ], [ 0, %40 ], [ 0, %35 ]
  %80 = load i32, ptr @gVideoState, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %77
  %84 = and i32 %80, -5
  store i32 %84, ptr @gVideoState, align 4
  %85 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14), align 4
  store volatile i16 %85, ptr inttoptr (i32 67108872 to ptr), align 8
  %86 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 2), align 1
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i16 0, i16 %78
  %90 = select i1 %88, i16 0, i16 %79
  %91 = and i16 %85, 16384
  %92 = icmp eq i16 %91, 0
  %93 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 0, i32 1), align 2
  %94 = add i16 %90, %37
  %95 = sub i16 %94, %93
  %96 = select i1 %92, i16 255, i16 511
  %97 = and i16 %95, %96
  store volatile i16 %97, ptr inttoptr (i32 67108880 to ptr), align 16
  %98 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14), align 4
  %99 = icmp sgt i16 %98, -1
  %100 = select i1 %99, i16 255, i16 511
  %101 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 0, i32 2), align 4
  %102 = add i16 %89, %36
  %103 = sub i16 %102, %101
  %104 = and i16 %103, %100
  store volatile i16 %104, ptr inttoptr (i32 67108882 to ptr), align 2
  br label %105

105:                                              ; preds = %83, %77
  %106 = load i32, ptr @gVideoState, align 4
  %107 = and i32 %106, 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %131, label %109

109:                                              ; preds = %105
  %110 = and i32 %106, -9
  store i32 %110, ptr @gVideoState, align 4
  %111 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1), align 4
  store volatile i16 %111, ptr inttoptr (i32 67108874 to ptr), align 2
  %112 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 2), align 1
  %113 = and i8 %112, 2
  %114 = icmp eq i8 %113, 0
  %115 = and i16 %111, 16384
  %116 = icmp eq i16 %115, 0
  %117 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1, i32 1), align 2
  %118 = select i1 %114, i16 0, i16 %79
  %119 = add i16 %37, %118
  %120 = sub i16 %119, %117
  %121 = select i1 %116, i16 255, i16 511
  %122 = and i16 %120, %121
  store volatile i16 %122, ptr inttoptr (i32 67108884 to ptr), align 4
  %123 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1), align 4
  %124 = icmp sgt i16 %123, -1
  %125 = select i1 %124, i16 255, i16 511
  %126 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1, i32 2), align 4
  %127 = select i1 %114, i16 0, i16 %78
  %128 = add i16 %36, %127
  %129 = sub i16 %128, %126
  %130 = and i16 %129, %125
  store volatile i16 %130, ptr inttoptr (i32 67108886 to ptr), align 2
  br label %131

131:                                              ; preds = %109, %105
  %132 = load i32, ptr @gVideoState, align 4
  %133 = and i32 %132, 16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %174, label %135

135:                                              ; preds = %131
  %136 = and i32 %132, -17
  store i32 %136, ptr @gVideoState, align 4
  %137 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2), align 4
  store volatile i16 %137, ptr inttoptr (i32 67108876 to ptr), align 4
  %138 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 2), align 1
  %139 = and i8 %138, 4
  %140 = icmp eq i8 %139, 0
  %141 = and i16 %137, 16384
  %142 = icmp eq i16 %141, 0
  %143 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 1), align 2
  %144 = select i1 %140, i16 0, i16 %79
  %145 = add i16 %37, %144
  %146 = sub i16 %145, %143
  %147 = select i1 %142, i16 255, i16 511
  %148 = and i16 %146, %147
  store volatile i16 %148, ptr inttoptr (i32 67108888 to ptr), align 8
  %149 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2), align 4
  %150 = icmp sgt i16 %149, -1
  %151 = select i1 %150, i16 255, i16 511
  %152 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 2), align 4
  %153 = select i1 %140, i16 0, i16 %78
  %154 = add i16 %36, %153
  %155 = sub i16 %154, %152
  %156 = and i16 %155, %151
  store volatile i16 %156, ptr inttoptr (i32 67108890 to ptr), align 2
  %157 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 3), align 2
  store volatile i16 %157, ptr inttoptr (i32 67108896 to ptr), align 32
  %158 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 4), align 4
  store volatile i16 %158, ptr inttoptr (i32 67108898 to ptr), align 2
  %159 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 5), align 2
  store volatile i16 %159, ptr inttoptr (i32 67108900 to ptr), align 4
  %160 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 6), align 4
  store volatile i16 %160, ptr inttoptr (i32 67108902 to ptr), align 2
  %161 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 8), align 4
  %162 = trunc i32 %161 to i16
  store volatile i16 %162, ptr inttoptr (i32 67108904 to ptr), align 8
  %163 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 8), align 4
  %164 = lshr i32 %163, 16
  %165 = trunc i32 %164 to i16
  %166 = and i16 %165, 4095
  store volatile i16 %166, ptr inttoptr (i32 67108906 to ptr), align 2
  %167 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 9), align 4
  %168 = trunc i32 %167 to i16
  store volatile i16 %168, ptr inttoptr (i32 67108908 to ptr), align 4
  %169 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 9), align 4
  %170 = lshr i32 %169, 16
  %171 = trunc i32 %170 to i16
  %172 = and i16 %171, 4095
  store volatile i16 %172, ptr inttoptr (i32 67108910 to ptr), align 2
  %173 = load i32, ptr @gVideoState, align 4
  br label %174

174:                                              ; preds = %135, %131
  %175 = phi i32 [ %173, %135 ], [ %132, %131 ]
  %176 = and i32 %175, 32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %216, label %178

178:                                              ; preds = %174
  %179 = and i32 %175, -33
  store i32 %179, ptr @gVideoState, align 4
  %180 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3), align 4
  store volatile i16 %180, ptr inttoptr (i32 67108878 to ptr), align 2
  %181 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 2), align 1
  %182 = and i8 %181, 8
  %183 = icmp eq i8 %182, 0
  %184 = and i16 %180, 16384
  %185 = icmp eq i16 %184, 0
  %186 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 1), align 2
  %187 = select i1 %183, i16 0, i16 %79
  %188 = add i16 %37, %187
  %189 = sub i16 %188, %186
  %190 = select i1 %185, i16 255, i16 511
  %191 = and i16 %189, %190
  store volatile i16 %191, ptr inttoptr (i32 67108892 to ptr), align 4
  %192 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3), align 4
  %193 = icmp sgt i16 %192, -1
  %194 = select i1 %193, i16 255, i16 511
  %195 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 2), align 4
  %196 = select i1 %183, i16 0, i16 %78
  %197 = add i16 %36, %196
  %198 = sub i16 %197, %195
  %199 = and i16 %198, %194
  store volatile i16 %199, ptr inttoptr (i32 67108894 to ptr), align 2
  %200 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 3), align 2
  store volatile i16 %200, ptr inttoptr (i32 67108912 to ptr), align 16
  %201 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 4), align 4
  store volatile i16 %201, ptr inttoptr (i32 67108914 to ptr), align 2
  %202 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 5), align 2
  store volatile i16 %202, ptr inttoptr (i32 67108916 to ptr), align 4
  %203 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 6), align 4
  store volatile i16 %203, ptr inttoptr (i32 67108918 to ptr), align 2
  %204 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 8), align 4
  %205 = trunc i32 %204 to i16
  store volatile i16 %205, ptr inttoptr (i32 67108920 to ptr), align 8
  %206 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 8), align 4
  %207 = lshr i32 %206, 16
  %208 = trunc i32 %207 to i16
  %209 = and i16 %208, 4095
  store volatile i16 %209, ptr inttoptr (i32 67108922 to ptr), align 2
  %210 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 9), align 4
  %211 = trunc i32 %210 to i16
  store volatile i16 %211, ptr inttoptr (i32 67108924 to ptr), align 4
  %212 = load i32, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 9), align 4
  %213 = lshr i32 %212, 16
  %214 = trunc i32 %213 to i16
  %215 = and i16 %214, 4095
  store volatile i16 %215, ptr inttoptr (i32 67108926 to ptr), align 2
  br label %216

216:                                              ; preds = %178, %174
  ret void
}

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
