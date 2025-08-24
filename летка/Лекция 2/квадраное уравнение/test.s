	.file	"test.c"
	.section .rdata,"dr"
LC11:
	.ascii "All tests passed\0"
	.text
	.globl	__Z4Testv
	.def	__Z4Testv;	.scl	2;	.type	32;	.endef
__Z4Testv:
LFB8:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$104, %esp
	fldz
	fstpl	-24(%ebp)
	fldz
	fstpl	-32(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	fldl	LC1
	fstpl	16(%esp)
	fldl	LC2
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
LEHB0:
	call	__Z5SqrEqdddPdS_
	movl	%eax, -12(%ebp)
	movb	$1, -13(%ebp)
	cmpb	$0, -13(%ebp)
	je	L2
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fldl	LC1
	fstpl	56(%esp)
	fldl	LC2
	fstpl	48(%esp)
	fld1
	fstpl	40(%esp)
	movl	$2, 36(%esp)
	fldl	LC4
	fstpl	28(%esp)
	fldl	LC5
	fstpl	20(%esp)
	fxch	%st(1)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z12IsRootsRightddiddiddd
	testb	%al, %al
	je	L2
	movl	$1, %eax
	jmp	L3
L2:
	movl	$0, %eax
L3:
	movb	%al, -13(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	fldz
	fstpl	16(%esp)
	fldz
	fstpl	8(%esp)
	fldz
	fstpl	(%esp)
	call	__Z5SqrEqdddPdS_
	movl	%eax, -12(%ebp)
	cmpb	$0, -13(%ebp)
	je	L4
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fldz
	fstpl	56(%esp)
	fldz
	fstpl	48(%esp)
	fldz
	fstpl	40(%esp)
	movl	$-1, 36(%esp)
	fldz
	fstpl	28(%esp)
	fldz
	fstpl	20(%esp)
	fxch	%st(1)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z12IsRootsRightddiddiddd
	testb	%al, %al
	je	L4
	movl	$1, %eax
	jmp	L5
L4:
	movl	$0, %eax
L5:
	movb	%al, -13(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	fldl	LC6
	fstpl	16(%esp)
	fldz
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	__Z5SqrEqdddPdS_
	movl	%eax, -12(%ebp)
	cmpb	$0, -13(%ebp)
	je	L6
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fldl	LC6
	fstpl	56(%esp)
	fldz
	fstpl	48(%esp)
	fld1
	fstpl	40(%esp)
	movl	$2, 36(%esp)
	fldl	LC7
	fstpl	28(%esp)
	fldl	LC5
	fstpl	20(%esp)
	fxch	%st(1)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z12IsRootsRightddiddiddd
	testb	%al, %al
	je	L6
	movl	$1, %eax
	jmp	L7
L6:
	movl	$0, %eax
L7:
	movb	%al, -13(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	fld1
	fstpl	16(%esp)
	fld1
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	__Z5SqrEqdddPdS_
	movl	%eax, -12(%ebp)
	cmpb	$0, -13(%ebp)
	je	L8
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fld1
	fstpl	56(%esp)
	fld1
	fstpl	48(%esp)
	fld1
	fstpl	40(%esp)
	movl	$0, 36(%esp)
	fldl	LC7
	fstpl	28(%esp)
	fldl	LC5
	fstpl	20(%esp)
	fxch	%st(1)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z12IsRootsRightddiddiddd
	testb	%al, %al
	je	L8
	movl	$1, %eax
	jmp	L9
L8:
	movl	$0, %eax
L9:
	movb	%al, -13(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	fld1
	fstpl	16(%esp)
	fld1
	fstpl	8(%esp)
	fldz
	fstpl	(%esp)
	call	__Z5SqrEqdddPdS_
	movl	%eax, -12(%ebp)
	cmpb	$0, -13(%ebp)
	je	L10
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fld1
	fstpl	56(%esp)
	fld1
	fstpl	48(%esp)
	fld1
	fstpl	40(%esp)
	movl	$1, 36(%esp)
	fld1
	fchs
	fstpl	28(%esp)
	fld1
	fchs
	fstpl	20(%esp)
	fxch	%st(1)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z12IsRootsRightddiddiddd
	testb	%al, %al
	je	L10
	movl	$1, %eax
	jmp	L11
L10:
	movl	$0, %eax
L11:
	movb	%al, -13(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	fldl	LC9
	fstpl	16(%esp)
	fldl	LC10
	fstpl	8(%esp)
	fld1
	fstpl	(%esp)
	call	__Z5SqrEqdddPdS_
	movl	%eax, -12(%ebp)
	cmpb	$0, -13(%ebp)
	je	L12
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fldl	LC9
	fstpl	56(%esp)
	fldl	LC10
	fstpl	48(%esp)
	fld1
	fstpl	40(%esp)
	movl	$1, 36(%esp)
	fldl	LC1
	fstpl	28(%esp)
	fldl	LC1
	fstpl	20(%esp)
	fxch	%st(1)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z12IsRootsRightddiddiddd
LEHE0:
	testb	%al, %al
	je	L12
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movb	%al, -13(%ebp)
	cmpb	$0, -13(%ebp)
	je	L14
	movl	$LC11, (%esp)
	call	_puts
L14:
	movl	$0, %eax
	jmp	L18
L17:
	movl	%eax, (%esp)
LEHB1:
	call	__Unwind_Resume
LEHE1:
L18:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.section	.gcc_except_table,"w"
LLSDA8:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE8-LLSDACSB8
LLSDACSB8:
	.uleb128 LEHB0-LFB8
	.uleb128 LEHE0-LEHB0
	.uleb128 L17-LFB8
	.uleb128 0
	.uleb128 LEHB1-LFB8
	.uleb128 LEHE1-LEHB1
	.uleb128 0
	.uleb128 0
LLSDACSE8:
	.text
	.globl	__Z12IsRootsRightddiddiddd
	.def	__Z12IsRootsRightddiddiddd;	.scl	2;	.type	32;	.endef
__Z12IsRootsRightddiddiddd:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$136, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	52(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	56(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	60(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	64(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	68(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$2, 44(%ebp)
	jne	L20
	fldl	-32(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__Z14CompareDoublesdd
	xorl	$1, %eax
	testb	%al, %al
	jne	L21
	fldl	-40(%ebp)
	fstpl	8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	__Z14CompareDoublesdd
	xorl	$1, %eax
	testb	%al, %al
	je	L22
L21:
	fldl	-32(%ebp)
	fstpl	8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	__Z14CompareDoublesdd
	xorl	$1, %eax
	testb	%al, %al
	jne	L23
	fldl	-40(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__Z14CompareDoublesdd
	xorl	$1, %eax
	testb	%al, %al
	jne	L23
	movl	24(%ebp), %eax
	cmpl	44(%ebp), %eax
	je	L22
L23:
	movl	$1, %eax
	jmp	L24
L22:
	movl	$0, %eax
L24:
	testb	%al, %al
	je	L25
	fldl	-64(%ebp)
	fstpl	56(%esp)
	fldl	-56(%ebp)
	fstpl	48(%esp)
	fldl	-48(%ebp)
	fstpl	40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	fldl	-40(%ebp)
	fstpl	28(%esp)
	fldl	-32(%ebp)
	fstpl	20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	fldl	-24(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__Z10ErrorPrintddiddiddd
	movl	$0, %eax
	jmp	L26
L20:
	cmpl	$1, 44(%ebp)
	jne	L27
	fldl	-32(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__Z14CompareDoublesdd
	xorl	$1, %eax
	testb	%al, %al
	je	L28
	fldl	-32(%ebp)
	fstpl	8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	__Z14CompareDoublesdd
	xorl	$1, %eax
	testb	%al, %al
	jne	L29
L28:
	movl	24(%ebp), %eax
	cmpl	44(%ebp), %eax
	je	L30
L29:
	movl	$1, %eax
	jmp	L31
L30:
	movl	$0, %eax
L31:
	testb	%al, %al
	je	L25
	fldl	-64(%ebp)
	fstpl	56(%esp)
	fldl	-56(%ebp)
	fstpl	48(%esp)
	fldl	-48(%ebp)
	fstpl	40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	fldl	-40(%ebp)
	fstpl	28(%esp)
	fldl	-32(%ebp)
	fstpl	20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	fldl	-24(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__Z10ErrorPrintddiddiddd
	movl	$0, %eax
	jmp	L26
L27:
	cmpl	$-1, 44(%ebp)
	jne	L32
	cmpl	$-1, 24(%ebp)
	je	L25
	fldl	-64(%ebp)
	fstpl	56(%esp)
	fldl	-56(%ebp)
	fstpl	48(%esp)
	fldl	-48(%ebp)
	fstpl	40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	fldl	-40(%ebp)
	fstpl	28(%esp)
	fldl	-32(%ebp)
	fstpl	20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	fldl	-24(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__Z10ErrorPrintddiddiddd
	movl	$0, %eax
	jmp	L26
L32:
	movl	24(%ebp), %eax
	cmpl	44(%ebp), %eax
	je	L25
	fldl	-64(%ebp)
	fstpl	56(%esp)
	fldl	-56(%ebp)
	fstpl	48(%esp)
	fldl	-48(%ebp)
	fstpl	40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	fldl	-40(%ebp)
	fstpl	28(%esp)
	fldl	-32(%ebp)
	fstpl	20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	fldl	-24(%ebp)
	fstpl	8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__Z10ErrorPrintddiddiddd
	movl	$0, %eax
	jmp	L26
L25:
	movl	$1, %eax
L26:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
	.align 4
LC13:
	.ascii "The solve is cringe: x1 right = %lg, x2 right = %lg, number of Roots right = %d;\12\0"
	.align 4
LC14:
	.ascii "your x1 = %lg, x2 = %lg, number of Roots = %d\12\0"
	.align 4
LC15:
	.ascii "Koeffs are: a = %lg, b = %lg, c = %lg\0"
	.text
	.globl	__Z10ErrorPrintddiddiddd
	.def	__Z10ErrorPrintddiddiddd;	.scl	2;	.type	32;	.endef
__Z10ErrorPrintddiddiddd:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$104, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	52(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	56(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	60(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	64(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	68(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, 20(%esp)
	fldl	-40(%ebp)
	fstpl	12(%esp)
	fldl	-32(%ebp)
	fstpl	4(%esp)
	movl	$LC13, (%esp)
	call	_printf
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC14, (%esp)
	call	_printf
	fldl	-64(%ebp)
	fstpl	20(%esp)
	fldl	-56(%ebp)
	fstpl	12(%esp)
	fldl	-48(%ebp)
	fstpl	4(%esp)
	movl	$LC15, (%esp)
	call	_printf
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 8
__ZL3EPS:
	.long	-755914244
	.long	1062232653
	.align 8
LC1:
	.long	0
	.long	1075314688
	.align 8
LC2:
	.long	0
	.long	-1072431104
	.align 8
LC4:
	.long	0
	.long	1074266112
	.align 8
LC5:
	.long	0
	.long	1073741824
	.align 8
LC6:
	.long	0
	.long	-1072693248
	.align 8
LC7:
	.long	0
	.long	-1073741824
	.align 8
LC9:
	.long	0
	.long	1078067200
	.align 8
LC10:
	.long	0
	.long	-1071120384
	.ident	"GCC: (GNU) 4.8.1"
	.def	__Z5SqrEqdddPdS_;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__Z14CompareDoublesdd;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
