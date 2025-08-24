	.file	"main.c"
	.section	.text$getchar,"x"
	.linkonce discard
	.globl	_getchar
	.def	_getchar;	.scl	2;	.type	32;	.endef
_getchar:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	__imp___iob, %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	__imp___iob, %eax
	movl	%edx, 4(%eax)
	movl	__imp___iob, %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	js	L2
	movl	__imp___iob, %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	__imp___iob, %edx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L3
L2:
	movl	__imp___iob, %eax
	movl	%eax, (%esp)
	call	__filbuf
L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "Press any buton to close\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB8:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$80, %esp
	call	___main
	fldz
	fstpl	64(%esp)
	fldz
	fstpl	56(%esp)
	fldz
	fstpl	48(%esp)
	fldz
	fstpl	40(%esp)
	fldz
	fstpl	32(%esp)
LEHB0:
	call	__Z4Testv
	movl	%eax, 76(%esp)
	leal	48(%esp), %eax
	movl	%eax, 8(%esp)
	leal	56(%esp), %eax
	movl	%eax, 4(%esp)
	leal	64(%esp), %eax
	movl	%eax, (%esp)
	call	__Z4scanPdS_S_
	movl	%eax, 76(%esp)
	fldl	48(%esp)
	fldl	56(%esp)
	fldl	64(%esp)
	fxch	%st(2)
	leal	32(%esp), %eax
	movl	%eax, 28(%esp)
	leal	40(%esp), %eax
	movl	%eax, 24(%esp)
	fstpl	16(%esp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z5SqrEqdddPdS_
	movl	%eax, 72(%esp)
	fldl	32(%esp)
	fldl	40(%esp)
	fxch	%st(1)
	fstpl	12(%esp)
	fstpl	4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	__Z5printidd
LEHE0:
	movl	%eax, 76(%esp)
	movl	$LC1, (%esp)
	call	_printf
	call	_getchar
	movl	$0, %eax
	jmp	L9
L8:
	movl	%eax, (%esp)
LEHB1:
	call	__Unwind_Resume
LEHE1:
L9:
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
	.uleb128 L8-LFB8
	.uleb128 0
	.uleb128 LEHB1-LFB8
	.uleb128 LEHE1-LEHB1
	.uleb128 0
	.uleb128 0
LLSDACSE8:
	.text
	.section .rdata,"dr"
	.align 8
__ZL3EPS:
	.long	-755914244
	.long	1062232653
	.ident	"GCC: (GNU) 4.8.1"
	.def	__filbuf;	.scl	2;	.type	32;	.endef
	.def	__Z4Testv;	.scl	2;	.type	32;	.endef
	.def	__Z4scanPdS_S_;	.scl	2;	.type	32;	.endef
	.def	__Z5SqrEqdddPdS_;	.scl	2;	.type	32;	.endef
	.def	__Z5printidd;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
