	.text
	.file	"11-5.c"
	.globl	func1                           # -- Begin function func1
	.p2align	4, 0x90
	.type	func1,@function
func1:                                  # @func1
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	imull	%edi, %edi
	leal	1(%rdi), %eax
	jmp	OUTLINED_FUNCTION_0             # TAILCALL
.Lfunc_end0:
	.size	func1, .Lfunc_end0-func1
	.cfi_endproc
                                        # -- End function
	.globl	func2                           # -- Begin function func2
	.p2align	4, 0x90
	.type	func2,@function
func2:                                  # @func2
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	51(%rdi), %eax
	imull	%eax, %eax
	incl	%eax
	jmp	OUTLINED_FUNCTION_0             # TAILCALL
.Lfunc_end1:
	.size	func2, .Lfunc_end1-func2
	.cfi_endproc
                                        # -- End function
	.type	OUTLINED_FUNCTION_0,@function   # -- Begin function OUTLINED_FUNCTION_0
OUTLINED_FUNCTION_0:                    # @OUTLINED_FUNCTION_0
	.cfi_startproc
# %bb.0:
	imull	%eax, %eax
	addl	$2, %eax
	retq
.Lfunc_end2:
	.size	OUTLINED_FUNCTION_0, .Lfunc_end2-OUTLINED_FUNCTION_0
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 15.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
