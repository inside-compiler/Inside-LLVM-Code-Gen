	.text
	.file	"test.cpp"
	.globl	_Z4testii
	.p2align	3
	.type	_Z4testii,@function
_Z4testii:
	.cfi_startproc
	r0 = r1                                 # <MCInst #347 MOV_rr
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:2>>
	*(u32 *)(r10 - 8) = r2                  # <MCInst #378 STW
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Reg:11>
                                        #  <MCOperand Imm:-8>>
	*(u32 *)(r10 - 4) = r0                  # <MCInst #378 STW
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:11>
                                        #  <MCOperand Imm:-4>>
	r2 <<= 32                               # <MCInst #361 SLL_ri
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Imm:32>>
	r2 s>>= 32                              # <MCInst #365 SRA_ri
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Imm:32>>
	r1 <<= 32                               # <MCInst #361 SLL_ri
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Imm:32>>
	r1 s>>= 32                              # <MCInst #365 SRA_ri
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Imm:32>>
	if r1 s> r2 goto LBB0_2                 # <MCInst #296 JSGT_rr
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Expr:(LBB0_2)>>
	r1 = r10                                # <MCInst #347 MOV_rr
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:11>>
	r1 += -4                                # <MCInst #259 ADD_ri
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Reg:2>
                                        #  <MCOperand Imm:-4>>
	r2 = r10                                # <MCInst #347 MOV_rr
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Reg:11>>
	r2 += -8                                # <MCInst #259 ADD_ri
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Reg:3>
                                        #  <MCOperand Imm:-8>>
	call _Z4swapRiS_                        # <MCInst #279 JAL
                                        #  <MCOperand Expr:(_Z4swapRiS_)>>
	r0 = *(u32 *)(r10 - 4)                  # <MCInst #327 LDW
                                        #  <MCOperand Reg:1>
                                        #  <MCOperand Reg:11>
                                        #  <MCOperand Imm:-4>>
LBB0_2:
	exit                                    # <MCInst #360 RET>
.Lfunc_end0:
	.size	_Z4testii, .Lfunc_end0-_Z4testii
	.cfi_endproc
	.addrsig
