; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderRegionAudioRecord = type { ptr, i16, i16 }
%struct.GameCounterDisplayTemplates = type { [3 x ptr] }

@gActorApproachDirectionPairs = dso_local local_unnamed_addr constant [4 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 0], [2 x i32] [i32 1, i32 0]], align 4
@gRenderTurnNextDirections42E8 = dso_local local_unnamed_addr constant [16 x i8] c"\01\04\03\04\03\02\03\04\01\02\03\01\01\02\02\04", align 1
@gAudioPlayerContext4E90 = external dso_local global [0 x i8], align 1
@gRenderRegionAudioRecords42F8 = dso_local local_unnamed_addr constant [3 x %struct.RenderRegionAudioRecord] [%struct.RenderRegionAudioRecord { ptr @gAudioPlayerContext4E90, i16 3, i16 26 }, %struct.RenderRegionAudioRecord { ptr @gAudioPlayerContext4E90, i16 3, i16 16 }, %struct.RenderRegionAudioRecord { ptr @gAudioPlayerContext4E90, i16 3, i16 44 }], align 4
@gActorObjectFrames_5A4248 = external dso_local constant [0 x i16], align 2
@gGameCounterDisplayTemplates4310 = dso_local local_unnamed_addr constant %struct.GameCounterDisplayTemplates { [3 x ptr] [ptr @gActorObjectFrames_5A4248, ptr getelementptr (i8, ptr @gActorObjectFrames_5A4248, i64 32), ptr getelementptr (i8, ptr @gActorObjectFrames_5A4248, i64 64)] }, align 4
@gRenderMotionStopFlags431C = dso_local local_unnamed_addr constant [2 x i16] [i16 266, i16 350], align 2
@gSharedWordChoiceConfigScript4320 = dso_local local_unnamed_addr constant [7 x i8] c"E\00 \00\00\00\1F", align 1
@gUnusedWordChoiceConfigScript4327 = dso_local local_unnamed_addr constant [7 x i8] c"E\05\00\00\00\00\1F", align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
