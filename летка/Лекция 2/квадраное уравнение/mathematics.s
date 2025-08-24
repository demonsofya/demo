	.file	"mathematics.c"
	.text
	.globl	__Z14CompareDoublesdd
	.def	__Z14CompareDoublesdd;	.scl	2;	.type	32;	.endef
__Z14CompareDoublesdd:
LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	fldl	-8(%ebp)
	fsubl	-16(%ebp)
	fabs
	fldl	LC0
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
	.align 8
__ZL3EPS:
	.long	-755914244
	.long	1062232653
	.align 8
LC0:
	.long	-755914244
	.long	1062232653
	.ident	"GCC: (GNU) 4.8.1"
