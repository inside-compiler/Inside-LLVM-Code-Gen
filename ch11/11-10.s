	.text
	.file	"11-9.ll"
	.section	.text.foo,"ax",@progbits
	.globl	foo                             # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	pushq	%rbx
	movl	%esi, %ebx
	testl	%edi, %edi
	je	.LBB0_3
# %bb.1:
	callq	L1@PLT
.LBB0_2:
	movq	i@GOTPCREL(%rip), %rax
	addl	(%rax), %ebx
	movl	%ebx, (%rax)
	movl	%ebx, %eax
	popq	%rbx
	retq
.LBB0_3:
	callq	R1@PLT
	incl	%ebx
	jmp	.LBB0_2
.LBB_END0_3:
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.cg_profile foo, L1, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig