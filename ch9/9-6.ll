define dso_local void @foo(i32 noundef %var) local_unnamed_addr {
entry:
  %z = alloca [4096 x i8], align 16
  %x = alloca [4096 x i8], align 16
  %y = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %z)
  call void @bar(ptr noundef nonnull %z, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %z)
  %tobool.not = icmp eq i32 %var, 0
  br i1 %tobool.not, label %if.else, label %B

if.else:                                          ; preds = %entry
  call void @bar(ptr noundef nonnull %y, i32 noundef 1)
  %add.ptr = getelementptr inbounds i8, ptr %y, i64 1024
  br label %B

B:                                                ; preds = %entry, %if.else
  %p.0 = phi ptr [ %add.ptr, %if.else ], [ %x, %entry ]
  call void @bar(ptr noundef nonnull %p.0, i32 noundef 2)
  ret void
}