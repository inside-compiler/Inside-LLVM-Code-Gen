define i32 @sum() {
entry:
  br label %for.cond

for.cond:                     ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %res.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
  %cmp = icmp slt i32 %i.0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                     ; preds = %for.cond
  %add = add nsw i32 %res.0, %i.0
  br label %for.inc

for.inc:                     ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                     ; preds = %for.cond
  ret i32 %res.0
}