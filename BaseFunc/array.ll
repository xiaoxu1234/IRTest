; ModuleID = 'array.c'
source_filename = "array.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [30 x i8], align 16
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 65, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i8, i8* %3, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp sle i32 %7, 90
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i8, i8* %3, align 1
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 %12
  store i8 %10, i8* %13, align 1
  br label %14

14:                                               ; preds = %9
  %15 = load i8, i8* %3, align 1
  %16 = add i8 %15, 1
  store i8 %16, i8* %3, align 1
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %5, !llvm.loop !6

19:                                               ; preds = %5
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 0
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %20)
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "darwin-stkchk-strong-link" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "darwin-stkchk-strong-link" "frame-pointer"="all" "no-trapping-math"="true" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Apple clang version 14.0.3 (clang-1403.0.22.14.1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
