	.text
	.file	"11-9.ll"
	.globl	foo                             # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %ebx
	testl	%edi, %edi
	je	.LBB0_2
# %bb.1:
	callq	L1@PLT
.LBB0_3:
	movq	i@GOTPCREL(%rip), %rax
	addl	(%rax), %ebx
	movl	%ebx, (%rax)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB0_2:                                # %codeRepl
	leaq	12(%rsp), %rsi
	movl	%ebx, %edi
	callq	foo.cold.1
	movl	12(%rsp), %ebx
	jmp	.LBB0_3
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function foo.cold.1
	.type	foo.cold.1,@function
foo.cold.1:                             # @foo.cold.1
# %bb.0:                                # %newFuncRoot
	pushq	%rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movl	%edi, %ebp
	callq	R1@PLT
	incl	%ebp
	movl	%ebp, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	foo.cold.1, .Lfunc_end1-foo.cold.1
                                        # -- End function
	.cg_profile foo, L1, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym foo.cold.1
