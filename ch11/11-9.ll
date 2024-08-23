@i = external global i32, align 4

define i32 @foo(i32 %0, i32 %1) nounwind !prof !1 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %6, label %4, !prof !2
4:                                                ; preds = %2
  %5 =  call i32 @L1()
  br label %9
6:                                                ; preds = %2
  %7 = call i32 @R1()
  %8 = add nsw i32 %1, 1
  br label %9
9:                                               ; preds = %6, %4
  %10 = phi i32 [ %1, %4 ], [ %8, %6 ]
  %11 = load i32, i32* @i, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* @i, align 4
  ret i32 %12
}

declare i32 @L1()
declare i32 @R1() cold nounwind

!1 = !{!"function_entry_count", i64 7} //注意：要是有MFS或者HCS都必须有Profile数据
!2 = !{!"branch_weights", i32 0, i32 7}