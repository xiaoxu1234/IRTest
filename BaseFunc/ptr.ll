; ModuleID = 'ptr.c'
source_filename = "ptr.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [16 x i8] c"i\E7\9A\84\E5\80\BC\E4\B8\BA\EF\BC\9A%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"*pi\E7\9A\84\E5\80\BC\E4\B8\BA\EF\BC\9A%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"&i\E7\9A\84\E5\9C\B0\E5\9D\80\E5\80\BC\E4\B8\BA\EF\BC\9A%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pi\E7\9A\84\E5\9C\B0\E5\9D\80\E5\80\BC\E4\B8\BA\EF\BC\9A%d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 10, i32* %1, align 4
  store i32* %1, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %3)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* noundef %1)
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32** noundef %2)
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
