	.text
	.file	"11-1.c"
	.globl	square                          // -- Begin function square
	.p2align	2
	.type	square,@function
square:                                 // @square
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #12]
	mul	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	square, .Lfunc_end0-square
	.cfi_endproc
                                        // -- End function
	.ident	"clang version 15.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig