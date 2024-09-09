 .text
        .file   "dag.ll"
        .globl  test
        .p2align        3
        .type   test,@function
test:
.Ltest$local:
        .cfi_startproc
        r0 = r2                      # <MCInst #345 MOV_rr
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:3>>
        r0 += r1                   # <MCInst #259 ADD_rr
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:2>>
        exit                           # <MCInst #358 RET>
.Lfunc_end0:
        .size   test, .Lfunc_end0-test
        .cfi_endproc