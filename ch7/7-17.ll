define dso_local noundef i32 @test(int, int)(i32 noundef %a, i32 noundef %b) local_unnamed_addr {
entry:
  %add = add nsw i32 %b, %a
  ret i32 %add
}