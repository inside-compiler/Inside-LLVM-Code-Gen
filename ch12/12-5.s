	.text
	.file	"test.cpp"
	.globl	_Z4testii                       # -- Begin function _Z4testii
	.p2align	3
	.type	_Z4testii,@function
_Z4testii:                              # @_Z4testii
	.cfi_startproc
# %bb.0:                                # %entry
	r0 = r1
	*(u32 *)(r10 - 8) = r2
	*(u32 *)(r10 - 4) = r0
	r2 <<= 32
	r2 s>>= 32
	r1 <<= 32
	r1 s>>= 32
	if r1 s> r2 goto LBB0_2
# %bb.1:                                # %if.end
	r1 = r10
	r1 += -4
	r2 = r10
	r2 += -8
	call _Z4swapRiS_
	r0 = *(u32 *)(r10 - 4)
LBB0_2:                                 # %return
	exit
.Lfunc_end0:
	.size	_Z4testii, .Lfunc_end0-_Z4testii
	.cfi_endproc
                                        # -- End function
	.addrsig
