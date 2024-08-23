define dso_local void @bubbleSort(i32* %0, i32 %1) {
  br label %3
3:                                                ; preds = %31, %2
  %.01 = phi i32 [ 0, %2 ], [ %32, %31 ]
  %4 = sub nsw i32 %1, 1
  %5 = icmp slt i32 %.01, %4
  br i1 %5, label %6, label %33
6:                                                ; preds = %3
  br label %7
7:                                                ; preds = %28, %6
  %.0 = phi i32 [ 0, %6 ], [ %29, %28 ]
  %8 = sub nsw i32 %1, %.01
  %9 = sub nsw i32 %8, 1
  %10 = icmp slt i32 %.0, %9
  br i1 %10, label %11, label %30
11:                                               ; preds = %7
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %.0, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %27
20:                                               ; preds = %11
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  %23 = add nsw i32 %.0, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = call i32 bitcast (i32 (...)* @swap to i32 (i32*, i32*)*)(i32* %22, i32* %25)
  br label %27
27:                                               ; preds = %20, %11
  br label %28
28:                                               ; preds = %27
  %29 = add nsw i32 %.0, 1
  br label %7
30:                                               ; preds = %7
  br label %31
31:                                               ; preds = %30
  %32 = add nsw i32 %.01, 1
  br label %3
33:                                               ; preds = %3
  ret void
}

declare dso_local i32 @swap(...)