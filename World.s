	.file	"World.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN10CoordinateC2Ev,"axG",@progbits,_ZN10CoordinateC5Ev,comdat
	.align 2
	.weak	_ZN10CoordinateC2Ev
	.type	_ZN10CoordinateC2Ev, @function
_ZN10CoordinateC2Ev:
.LFB1031:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$-1, (%eax)
	movl	8(%ebp), %eax
	movl	$-1, 4(%eax)
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1031:
	.size	_ZN10CoordinateC2Ev, .-_ZN10CoordinateC2Ev
	.section	.text._ZNK10CoordinatecvbEv,"axG",@progbits,_ZNK10CoordinatecvbEv,comdat
	.align 2
	.weak	_ZNK10CoordinatecvbEv
	.type	_ZNK10CoordinatecvbEv, @function
_ZNK10CoordinatecvbEv:
.LFB1033:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L3
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	js	.L3
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	$0, %eax
.L4:
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1033:
	.size	_ZNK10CoordinatecvbEv, .-_ZNK10CoordinatecvbEv
	.text
	.align 2
	.globl	_ZN5WorldC2Eiiiii
	.type	_ZN5WorldC2Eiiiii, @function
_ZN5WorldC2Eiiiii:
.LFB1035:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1035
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	$20, (%esp)
.LEHB0:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_Znwj
.LEHE0:
	movl	%eax, %ebx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB1:
	call	_ZN3MapC1Eii
.LEHE1:
	movl	8(%ebp), %eax
	movl	%ebx, (%eax)
	movl	$0, (%esp)
	call	time
	movl	%eax, (%esp)
	call	srand
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB2:
	call	_ZN5World18initializeCreatureEii
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World5printEv
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World3runEv
	addl	$16, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L7:
	.cfi_restore_state
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1035:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1035:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1035-.LLSDACSB1035
.LLSDACSB1035:
	.uleb128 .LEHB0-.LFB1035
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1035
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB1035
	.uleb128 0
	.uleb128 .LEHB2-.LFB1035
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1035:
	.text
	.size	_ZN5WorldC2Eiiiii, .-_ZN5WorldC2Eiiiii
	.align 2
	.globl	_ZN5World13cell_is_emptyE10Coordinate
	.type	_ZN5World13cell_is_emptyE10Coordinate, @function
_ZN5World13cell_is_emptyE10Coordinate:
.LFB1037:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1037:
	.size	_ZN5World13cell_is_emptyE10Coordinate, .-_ZN5World13cell_is_emptyE10Coordinate
	.section	.rodata
.LC0:
	.string	"mist"
.LC1:
	.string	"v\t"
.LC2:
	.string	":"
.LC3:
	.string	"\n"
.LC4:
	.string	"c1\t"
.LC5:
	.string	"C \t"
	.text
	.align 2
	.globl	_ZN5World18initializeCreatureEii
	.type	_ZN5World18initializeCreatureEii, @function
_ZN5World18initializeCreatureEii:
.LFB1038:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1038
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_ZN10CoordinateC1Ev
	movl	$5, -28(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L10
.L12:
	leal	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB3:
	call	_ZN5World21getRandomFreePositionEv
	subl	$4, %esp
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK10CoordinatecvbEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L11
	movl	$.LC0, (%esp)
	call	perror
	call	_Z19wait_for_keypressedv
.L11:
	movl	-44(%ebp), %ebx
	movl	-48(%ebp), %esi
	movl	$.LC1, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC2, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %esi
	movl	$32, (%esp)
	call	_Znwj
.LEHE3:
	movl	%eax, %ebx
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB4:
	call	_ZN7VegetalC1Eii
.LEHE4:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB5:
	call	_ZN3Map13insertMonsterEP4Lifeii
	addl	$1, -40(%ebp)
.L10:
	movl	-40(%ebp), %eax
	cmpl	-28(%ebp), %eax
	setl	%al
	testb	%al, %al
	jne	.L12
	movl	$0, -36(%ebp)
	jmp	.L13
.L15:
	leal	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5World21getRandomFreePositionEv
	subl	$4, %esp
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK10CoordinatecvbEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L14
	movl	$.LC0, (%esp)
	call	perror
	call	_Z19wait_for_keypressedv
.L14:
	movl	-44(%ebp), %ebx
	movl	-48(%ebp), %esi
	movl	$.LC4, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC2, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %esi
	movl	$64, (%esp)
	call	_Znwj
.LEHE5:
	movl	%eax, %ebx
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB6:
	call	_ZN9ConsumerIC1Eii
.LEHE6:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB7:
	call	_ZN3Map13insertMonsterEP4Lifeii
	addl	$1, -36(%ebp)
.L13:
	movl	-36(%ebp), %eax
	cmpl	12(%ebp), %eax
	setl	%al
	testb	%al, %al
	jne	.L15
	movl	$0, -32(%ebp)
	jmp	.L16
.L18:
	leal	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5World21getRandomFreePositionEv
	subl	$4, %esp
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK10CoordinatecvbEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L17
	movl	$.LC0, (%esp)
	call	perror
	call	_Z19wait_for_keypressedv
.L17:
	movl	-44(%ebp), %ebx
	movl	-48(%ebp), %esi
	movl	$.LC5, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC2, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %esi
	movl	$64, (%esp)
	call	_Znwj
.LEHE7:
	movl	%eax, %ebx
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB8:
	call	_ZN10ConsumerIIC1Eii
.LEHE8:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB9:
	call	_ZN3Map13insertMonsterEP4Lifeii
	addl	$1, -32(%ebp)
.L16:
	movl	-32(%ebp), %eax
	cmpl	16(%ebp), %eax
	setl	%al
	testb	%al, %al
	jne	.L18
	jmp	.L25
.L22:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L23:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L24:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE9:
.L25:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1038:
	.section	.gcc_except_table
.LLSDA1038:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1038-.LLSDACSB1038
.LLSDACSB1038:
	.uleb128 .LEHB3-.LFB1038
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1038
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L22-.LFB1038
	.uleb128 0
	.uleb128 .LEHB5-.LFB1038
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1038
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L23-.LFB1038
	.uleb128 0
	.uleb128 .LEHB7-.LFB1038
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB1038
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L24-.LFB1038
	.uleb128 0
	.uleb128 .LEHB9-.LFB1038
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1038:
	.text
	.size	_ZN5World18initializeCreatureEii, .-_ZN5World18initializeCreatureEii
	.section	.rodata
.LC6:
	.string	"everything is full"
	.text
	.align 2
	.globl	_ZN5World21getRandomFreePositionEv
	.type	_ZN5World21getRandomFreePositionEv, @function
_ZN5World21getRandomFreePositionEv:
.LFB1039:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_ZN10CoordinateC1Ev
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map21getAmountFreePositionEv
	movl	%eax, -12(%ebp)
	call	rand
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	.L27
.L34:
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	.L28
.L32:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13cell_is_emptyE10Coordinate
	testb	%al, %al
	je	.L29
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L35
.L30:
	addl	$1, -16(%ebp)
.L29:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L28:
	movl	8(%ebp), %eax
	movl	4(%eax), %ebx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map9getHeightEv
	cmpl	%eax, %ebx
	setl	%al
	testb	%al, %al
	jne	.L32
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	subl	$1, %eax
	cmpl	%eax, %ebx
	sete	%al
	testb	%al, %al
	je	.L33
	cmpl	$0, -16(%ebp)
	jle	.L33
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L33:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L27:
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	cmpl	%eax, %ebx
	setl	%al
	testb	%al, %al
	jne	.L34
	movl	$.LC6, (%esp)
	call	perror
	call	_Z19wait_for_keypressedv
	movl	8(%ebp), %eax
	movl	$-1, (%eax)
	movl	8(%ebp), %eax
	movl	$-1, 4(%eax)
	jmp	.L26
.L35:
	nop
.L26:
	movl	8(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret	$4
	.cfi_endproc
.LFE1039:
	.size	_ZN5World21getRandomFreePositionEv, .-_ZN5World21getRandomFreePositionEv
	.align 2
	.globl	_ZN5World3runEv
	.type	_ZN5World3runEv, @function
_ZN5World3runEv:
.LFB1040:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1040
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	.L37
	.cfi_offset 3, -16
	.cfi_offset 6, -12
.L39:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB10:
	call	_ZN5World14performOneStepEv
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%eax), %ebx
	call	rand
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	addl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map9getHeightEv
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%eax), %ebx
	call	rand
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	addl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CoordinateC1Ev
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13cell_is_emptyE10Coordinate
	xorl	$1, %eax
	testb	%al, %al
	je	.L38
	movl	$32, (%esp)
	call	_Znwj
.LEHE10:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB11:
	call	_ZN7VegetalC1Eii
.LEHE11:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB12:
	call	_ZN3Map13insertMonsterEP4Lifeii
.L38:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L37:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	setl	%al
	testb	%al, %al
	jne	.L39
	jmp	.L42
.L41:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE12:
.L42:
	addl	$48, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1040:
	.section	.gcc_except_table
.LLSDA1040:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1040-.LLSDACSB1040
.LLSDACSB1040:
	.uleb128 .LEHB10-.LFB1040
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1040
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L41-.LFB1040
	.uleb128 0
	.uleb128 .LEHB12-.LFB1040
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE1040:
	.text
	.size	_ZN5World3runEv, .-_ZN5World3runEv
	.section	.rodata
.LC7:
	.string	"step"
.LC8:
	.string	"."
.LC9:
	.string	"zeit1"
.LC10:
	.string	"zeit2: "
.LC11:
	.string	"zeit3: "
	.text
	.align 2
	.globl	_ZN5World14performOneStepEv
	.type	_ZN5World14performOneStepEv, @function
_ZN5World14performOneStepEv:
.LFB1041:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1041
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$192, %esp
	movl	$2, -16(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L44
	.cfi_offset 3, -16
	.cfi_offset 6, -12
.L74:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	$.LC7, 4(%esp)
	movl	$_ZSt4cout, (%esp)
.LEHB13:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -36(%ebp)
	jmp	.L45
.L52:
	movl	$0, -32(%ebp)
	jmp	.L46
.L51:
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CoordinateC1Ev
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13cell_is_emptyE10Coordinate
	xorl	$1, %eax
	testb	%al, %al
	je	.L47
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life11getCellCharEv
	cmpb	$99, %al
	je	.L48
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life11getCellCharEv
	cmpb	$67, %al
	jne	.L49
.L48:
	movl	$1, %eax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	testb	%al, %al
	je	.L47
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN4Life11setWalkableEb
.L47:
	addl	$1, -32(%ebp)
.L46:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map9getHeightEv
	cmpl	-32(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L51
	addl	$1, -36(%ebp)
.L45:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	cmpl	-36(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L52
	movl	$0, -28(%ebp)
	jmp	.L53
.L73:
	movl	$0, -24(%ebp)
	jmp	.L54
.L72:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World12isAConsumerIEii
	testb	%al, %al
	jne	.L55
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13isAConsumerIIEii
	testb	%al, %al
	je	.L56
	movl	-40(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L56
.L55:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life10isWalkableEv
	testb	%al, %al
	je	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	testb	%al, %al
	je	.L58
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map13removeMonsterEii
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CoordinateC1Ev
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World5smellEP8CreaturePiS2_
	testb	%al, %al
	je	.L59
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	jns	.L60
	movl	$-1, -48(%ebp)
	jmp	.L61
.L60:
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	jle	.L61
	movl	$1, -48(%ebp)
.L61:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jns	.L62
	movl	$-1, -44(%ebp)
	jmp	.L63
.L62:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jle	.L63
	movl	$1, -44(%ebp)
	jmp	.L63
.L59:
	call	rand
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	call	rand
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	subl	$1, %eax
	movl	%eax, -44(%ebp)
.L63:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map9getHeightEv
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -52(%ebp)
	movl	$-2, -20(%ebp)
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L64
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L64
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map13insertMonsterEP4Lifeii
	jmp	.L65
.L64:
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature8interactEPS_P4Life
	movl	%eax, -20(%ebp)
.L65:
	cmpl	$-1, -20(%ebp)
	jne	.L66
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map13insertMonsterEP4Lifeii
	jmp	.L67
.L66:
	cmpl	$1, -20(%ebp)
	jne	.L68
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map13deleteMonsterEii
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map13insertMonsterEP4Lifeii
	jmp	.L67
.L68:
	cmpl	$0, -20(%ebp)
	jne	.L67
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	%eax, 4(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8CreatureC1ERKS_
.LEHE13:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
.LEHB14:
	call	_ZN8CreatureC1ERKS_
.LEHE14:
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
.LEHB15:
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature14getMaxLifeTimeEv
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	cmpl	%eax, %ebx
	jle	.L69
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature14getMaxLifeTimeEv
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	cmpl	%eax, %ebx
	jle	.L69
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18getMaxPregnantTimeEv
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	.L69
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18getMaxPregnantTimeEv
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	testb	%al, %al
	je	.L71
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	$.LC10, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature11setPregnantEb
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	$.LC11, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE15:
.L71:
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
.LEHB16:
	call	_ZN8CreatureD1Ev
.LEHE16:
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
.LEHB17:
	call	_ZN8CreatureD1Ev
.L67:
	movl	-12(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN4Life11setWalkableEb
	movl	-40(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L58
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World10timePassedEP8Creatureii
.L58:
	addl	$1, -24(%ebp)
.L54:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map9getHeightEv
	cmpl	-24(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L72
	addl	$1, -28(%ebp)
.L53:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	cmpl	-28(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L73
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World5printEv
.LEHE17:
	addl	$1, -40(%ebp)
.L44:
	movl	-40(%ebp), %eax
	cmpl	-16(%ebp), %eax
	setl	%al
	testb	%al, %al
	jne	.L74
	jmp	.L79
.L78:
	movl	%eax, %ebx
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8CreatureD1Ev
	jmp	.L76
.L77:
	movl	%eax, %ebx
.L76:
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8CreatureD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB18:
	call	_Unwind_Resume
.LEHE18:
.L79:
	addl	$192, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1041:
	.section	.gcc_except_table
.LLSDA1041:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1041-.LLSDACSB1041
.LLSDACSB1041:
	.uleb128 .LEHB13-.LFB1041
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB1041
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L77-.LFB1041
	.uleb128 0
	.uleb128 .LEHB15-.LFB1041
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L78-.LFB1041
	.uleb128 0
	.uleb128 .LEHB16-.LFB1041
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L77-.LFB1041
	.uleb128 0
	.uleb128 .LEHB17-.LFB1041
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB1041
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE1041:
	.text
	.size	_ZN5World14performOneStepEv, .-_ZN5World14performOneStepEv
	.section	.text._ZN4LifeC2ERKS_,"axG",@progbits,_ZN4LifeC5ERKS_,comdat
	.align 2
	.weak	_ZN4LifeC2ERKS_
	.type	_ZN4LifeC2ERKS_, @function
_ZN4LifeC2ERKS_:
.LFB1044:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$_ZTV4Life+8, (%eax)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	movzbl	12(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	12(%ebp), %eax
	movzbl	28(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 28(%eax)
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1044:
	.size	_ZN4LifeC2ERKS_, .-_ZN4LifeC2ERKS_
	.section	.text._ZN8CreatureC2ERKS_,"axG",@progbits,_ZN8CreatureC5ERKS_,comdat
	.align 2
	.weak	_ZN8CreatureC2ERKS_
	.type	_ZN8CreatureC2ERKS_, @function
_ZN8CreatureC2ERKS_:
.LFB1046:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN4LifeC2ERKS_
	movl	8(%ebp), %eax
	movl	$_ZTV8Creature+8, (%eax)
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	12(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1046:
	.size	_ZN8CreatureC2ERKS_, .-_ZN8CreatureC2ERKS_
	.text
	.align 2
	.globl	_ZN5World5smellEP8CreaturePiS2_
	.type	_ZN5World5smellEP8CreaturePiS2_, @function
_ZN5World5smellEP8CreaturePiS2_:
.LFB1048:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_ZN8Creature24getRangeOfSmellDetectionEv
	movl	%eax, -24(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CoordinateC1Ev
	movl	$-2147483648, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18getTimeWithoutFoodEv
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature21getMaxTimeWithoutFoodEv
	movl	%eax, -16(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CoordinateC1Ev
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-64(%ebp), %eax
	subl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L83
.L89:
	movl	-60(%ebp), %eax
	subl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L84
.L88:
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CoordinateC1Ev
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map9getHeightEv
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World12isAConsumerIEP4Life
	testb	%al, %al
	je	.L85
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L86
.L85:
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
.L86:
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-16(%ebp)
	movl	%eax, %ecx
	imull	-36(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-16(%ebp)
	imull	%ebx, %eax
	addl	%ecx, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jle	.L87
	movl	-12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -68(%ebp)
.L87:
	addl	$1, -40(%ebp)
.L84:
	movl	-60(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L88
	addl	$1, -44(%ebp)
.L83:
	movl	-64(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	-44(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L89
	movl	-64(%ebp), %edx
	movl	-72(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	-60(%ebp), %edx
	movl	-68(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	-72(%ebp), %eax
	cmpl	$-2147483648, %eax
	jne	.L90
	movl	-68(%ebp), %eax
	cmpl	$-2147483648, %eax
	je	.L91
.L90:
	movl	$1, %eax
	jmp	.L92
.L91:
	movl	$0, %eax
.L92:
	addl	$80, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1048:
	.size	_ZN5World5smellEP8CreaturePiS2_, .-_ZN5World5smellEP8CreaturePiS2_
	.section	.rodata
	.align 4
.LC12:
	.string	"-----C2 hat ein Kind bekommen---\n"
.LC13:
	.string	"I died!\n"
.LC14:
	.string	"current time without food: "
.LC15:
	.string	"current life time: "
	.text
	.align 2
	.globl	_ZN5World10timePassedEP8Creatureii
	.type	_ZN5World10timePassedEP8Creatureii, @function
_ZN5World10timePassedEP8Creatureii:
.LFB1049:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1049
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
.LEHB19:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_ZN8Creature18getTimeWithoutFoodEv
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18setTimeWithoutFoodEi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature11getLifeTimeEv
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature11setLifeTimeEi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature20increasePregnantTimeEv
	testb	%al, %al
	je	.L94
	movl	$-1, -32(%ebp)
	jmp	.L95
.L102:
	movl	$-1, -28(%ebp)
	jmp	.L96
.L101:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map8getWidthEv
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN3Map9getHeightEv
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4Life4getXEv
	addl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4Life4getYEv
	addl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -12(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CoordinateC1Ev
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13cell_is_emptyE10Coordinate
	testb	%al, %al
	je	.L97
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World12isAConsumerIEii
	testb	%al, %al
	je	.L98
	movl	$64, (%esp)
	call	_Znwj
.LEHE19:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB20:
	call	_ZN9ConsumerIC1Eii
.LEHE20:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB21:
	call	_ZN3Map13insertMonsterEP4Lifeii
	jmp	.L99
.L98:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13isAConsumerIIEii
	testb	%al, %al
	je	.L99
	movl	$64, (%esp)
	call	_Znwj
.LEHE21:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB22:
	call	_ZN10ConsumerIIC1Eii
.LEHE22:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB23:
	call	_ZN3Map13insertMonsterEP4Lifeii
	movl	$.LC12, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L99:
	movl	$100, -32(%ebp)
	movl	$100, -28(%ebp)
	jmp	.L100
.L97:
	addl	$1, -28(%ebp)
.L96:
	cmpl	$1, -28(%ebp)
	setle	%al
	testb	%al, %al
	jne	.L101
.L100:
	addl	$1, -32(%ebp)
.L95:
	cmpl	$1, -32(%ebp)
	setle	%al
	testb	%al, %al
	jne	.L102
.L94:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18getTimeWithoutFoodEv
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature21getMaxTimeWithoutFoodEv
	cmpl	%eax, %ebx
	jge	.L103
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature14getMaxLifeTimeEv
	cmpl	%eax, %ebx
	jl	.L104
.L103:
	movl	$1, %eax
	jmp	.L105
.L104:
	movl	$0, %eax
.L105:
	testb	%al, %al
	je	.L111
	movl	$.LC13, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18getTimeWithoutFoodEv
	movl	%eax, %esi
	movl	$.LC14, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC15, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map13deleteMonsterEii
	jmp	.L93
.L109:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L110:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE23:
.L111:
	nop
.L93:
	addl	$48, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1049:
	.section	.gcc_except_table
.LLSDA1049:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1049-.LLSDACSB1049
.LLSDACSB1049:
	.uleb128 .LEHB19-.LFB1049
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB1049
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L109-.LFB1049
	.uleb128 0
	.uleb128 .LEHB21-.LFB1049
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB1049
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L110-.LFB1049
	.uleb128 0
	.uleb128 .LEHB23-.LFB1049
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE1049:
	.text
	.size	_ZN5World10timePassedEP8Creatureii, .-_ZN5World10timePassedEP8Creatureii
	.section	.rodata
	.align 4
.LC16:
	.string	"\n7th param\t[pathToConsumerI]\n8th param\t[consumer2]\n"
	.align 4
.LC17:
	.string	"[NumberOfC2AtTheBeginning]<<\n6th param\t[pathToVegetal.txt]"
	.align 4
.LC18:
	.string	"[NumberOfC1AtTheBeginning]\n5th param\t"
	.align 4
.LC19:
	.string	"3rd param\t[maxNumberOfStepsInSimulation]\n4th param\t"
	.align 4
.LC20:
	.string	"\n\n1st Param\t[height]\n2nd param\t[width]\n"
	.align 4
.LC21:
	.string	"World [int] [int] [int] [int] [int] [char*] [char*] [char*]"
	.align 4
.LC22:
	.string	"Recall World with 8 parameters like \n"
.LC23:
	.string	"Missing arguments.\n"
.LC24:
	.string	"Wrong arguments.\n"
	.align 4
.LC25:
	.string	"file does not exist or is a directory"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1050:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1050
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	subl	$156, %esp
	movl	%ecx, %ebx
	leal	-30(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-30(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC16, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
.LEHB24:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE24:
	leal	-31(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-31(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC17, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
.LEHB25:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE25:
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC18, 4(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
.LEHB26:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE26:
	leal	-33(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-33(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC19, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
.LEHB27:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE27:
	leal	-34(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-34(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC20, 4(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
.LEHB28:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE28:
	leal	-35(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-35(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC21, 4(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
.LEHB29:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE29:
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC22, 4(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
.LEHB30:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE30:
	leal	-116(%ebp), %eax
	leal	-120(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-124(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB31:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE31:
	subl	$4, %esp
	leal	-108(%ebp), %eax
	leal	-112(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-116(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB32:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE32:
	subl	$4, %esp
	leal	-100(%ebp), %eax
	leal	-104(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-108(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB33:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE33:
	subl	$4, %esp
	leal	-92(%ebp), %eax
	leal	-96(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-100(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB34:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE34:
	subl	$4, %esp
	leal	-84(%ebp), %eax
	leal	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB35:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE35:
	subl	$4, %esp
	leal	-128(%ebp), %eax
	leal	-80(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB36:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE36:
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, (%esp)
.LEHB37:
	call	_ZNSsD1Ev
.LEHE37:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
.LEHB38:
	call	_ZNSsD1Ev
.LEHE38:
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
.LEHB39:
	call	_ZNSsD1Ev
.LEHE39:
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
.LEHB40:
	call	_ZNSsD1Ev
.LEHE40:
	leal	-116(%ebp), %eax
	movl	%eax, (%esp)
.LEHB41:
	call	_ZNSsD1Ev
.LEHE41:
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
.LEHB42:
	call	_ZNSsD1Ev
.LEHE42:
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
.LEHB43:
	call	_ZNSsD1Ev
.LEHE43:
	leal	-35(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
.LEHB44:
	call	_ZNSsD1Ev
.LEHE44:
	leal	-34(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
.LEHB45:
	call	_ZNSsD1Ev
.LEHE45:
	leal	-33(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
.LEHB46:
	call	_ZNSsD1Ev
.LEHE46:
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
.LEHB47:
	call	_ZNSsD1Ev
.LEHE47:
	leal	-31(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
.LEHB48:
	call	_ZNSsD1Ev
.LEHE48:
	leal	-30(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	cmpl	$9, (%ebx)
	je	.L113
	movl	$.LC23, 4(%esp)
	movl	$_ZSt4cout, (%esp)
.LEHB49:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leal	-128(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
.LEHE49:
	jmp	.L114
.L113:
	leal	-29(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	4(%ebx), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	leal	-29(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
.LEHB50:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE50:
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
.LEHB51:
	call	_ZNKSs5c_strEv
.LEHE51:
	movl	%eax, (%esp)
	call	atoi
	movl	%eax, -56(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
.LEHB52:
	call	_ZNSsD1Ev
.LEHE52:
	leal	-29(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
.LEHB53:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE53:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
.LEHB54:
	call	_ZNKSs5c_strEv
.LEHE54:
	movl	%eax, (%esp)
	call	atoi
	movl	%eax, -52(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
.LEHB55:
	call	_ZNSsD1Ev
.LEHE55:
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-27(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	4(%ebx), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	leal	-27(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
.LEHB56:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE56:
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
.LEHB57:
	call	_ZNKSs5c_strEv
.LEHE57:
	movl	%eax, (%esp)
	call	atoi
	movl	%eax, -48(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
.LEHB58:
	call	_ZNSsD1Ev
.LEHE58:
	leal	-27(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-26(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	4(%ebx), %eax
	addl	$16, %eax
	movl	(%eax), %eax
	leal	-26(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
.LEHB59:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE59:
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
.LEHB60:
	call	_ZNKSs5c_strEv
.LEHE60:
	movl	%eax, (%esp)
	call	atoi
	movl	%eax, -44(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
.LEHB61:
	call	_ZNSsD1Ev
.LEHE61:
	leal	-26(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	4(%ebx), %eax
	addl	$20, %eax
	movl	(%eax), %eax
	leal	-25(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
.LEHB62:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE62:
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
.LEHB63:
	call	_ZNKSs5c_strEv
.LEHE63:
	movl	%eax, (%esp)
	call	atoi
	movl	%eax, -40(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
.LEHB64:
	call	_ZNSsD1Ev
.LEHE64:
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	cmpl	$0, -56(%ebp)
	jle	.L115
	cmpl	$0, -52(%ebp)
	jle	.L115
	cmpl	$0, -48(%ebp)
	jle	.L115
	cmpl	$0, -44(%ebp)
	js	.L115
	cmpl	$0, -40(%ebp)
	jns	.L116
.L115:
	movl	$.LC24, 4(%esp)
	movl	$_ZSt4cout, (%esp)
.LEHB65:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leal	-128(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	jmp	.L114
.L116:
	movl	4(%ebx), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_Z7is_filePKc
	xorl	$1, %eax
	testb	%al, %al
	jne	.L117
	movl	4(%ebx), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_Z7is_filePKc
	xorl	$1, %eax
	testb	%al, %al
	jne	.L117
	movl	4(%ebx), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_Z7is_filePKc
	xorl	$1, %eax
	testb	%al, %al
	je	.L118
.L117:
	movl	$1, %eax
	jmp	.L119
.L118:
	movl	$0, %eax
.L119:
	testb	%al, %al
	je	.L120
	movl	4(%ebx), %eax
	addl	$24, %eax
	movl	(%eax), %ebx
	movl	$.LC25, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L114
.L120:
	call	_Z12clear_screenv
	movl	$20, (%esp)
	call	_Znwj
.LEHE65:
	movl	%eax, %ebx
	movl	-48(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB66:
	call	_ZN5WorldC1Eiiiii
.LEHE66:
.L114:
.LEHB67:
	call	_Z19wait_for_keypressedv
.LEHE67:
	movl	$0, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
.LEHB68:
	call	_ZNSsD1Ev
.LEHE68:
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_def_cfa 1, 0
	.cfi_restore 1
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
.L170:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L122
.L171:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L122
.L169:
	movl	%eax, %ebx
.L122:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L124
.L172:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L124
.L168:
	movl	%eax, %ebx
.L124:
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L126
.L173:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L126
.L167:
	movl	%eax, %ebx
.L126:
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L128
.L174:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L128
.L166:
	movl	%eax, %ebx
.L128:
	leal	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L130
.L175:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L130
.L165:
	movl	%eax, %ebx
.L130:
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L132
.L176:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L132
.L164:
	movl	%eax, %ebx
.L132:
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L134
.L177:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L134
.L163:
	movl	%eax, %ebx
.L134:
	leal	-35(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L136
.L178:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L136
.L162:
	movl	%eax, %ebx
.L136:
	leal	-34(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L138
.L179:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L138
.L161:
	movl	%eax, %ebx
.L138:
	leal	-33(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L140
.L180:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L140
.L160:
	movl	%eax, %ebx
.L140:
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L142
.L181:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L142
.L159:
	movl	%eax, %ebx
.L142:
	leal	-31(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L144
.L182:
	movl	%eax, %ebx
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L144
.L158:
	movl	%eax, %ebx
.L144:
	leal	-30(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB69:
	call	_Unwind_Resume
.LEHE69:
.L185:
	movl	%eax, %ebx
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L147
.L184:
	movl	%eax, %ebx
.L147:
	leal	-29(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L148
.L187:
	movl	%eax, %ebx
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L150
.L186:
	movl	%eax, %ebx
.L150:
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L148
.L189:
	movl	%eax, %ebx
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L152
.L188:
	movl	%eax, %ebx
.L152:
	leal	-27(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L148
.L191:
	movl	%eax, %ebx
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L154
.L190:
	movl	%eax, %ebx
.L154:
	leal	-26(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L148
.L193:
	movl	%eax, %ebx
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L156
.L192:
	movl	%eax, %ebx
.L156:
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L148
.L194:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %ebx
	jmp	.L148
.L183:
	movl	%eax, %ebx
.L148:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB70:
	call	_Unwind_Resume
.LEHE70:
	.cfi_endproc
.LFE1050:
	.section	.gcc_except_table
.LLSDA1050:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1050-.LLSDACSB1050
.LLSDACSB1050:
	.uleb128 .LEHB24-.LFB1050
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L158-.LFB1050
	.uleb128 0
	.uleb128 .LEHB25-.LFB1050
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L159-.LFB1050
	.uleb128 0
	.uleb128 .LEHB26-.LFB1050
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L160-.LFB1050
	.uleb128 0
	.uleb128 .LEHB27-.LFB1050
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L161-.LFB1050
	.uleb128 0
	.uleb128 .LEHB28-.LFB1050
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L162-.LFB1050
	.uleb128 0
	.uleb128 .LEHB29-.LFB1050
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L163-.LFB1050
	.uleb128 0
	.uleb128 .LEHB30-.LFB1050
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L164-.LFB1050
	.uleb128 0
	.uleb128 .LEHB31-.LFB1050
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L165-.LFB1050
	.uleb128 0
	.uleb128 .LEHB32-.LFB1050
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L166-.LFB1050
	.uleb128 0
	.uleb128 .LEHB33-.LFB1050
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L167-.LFB1050
	.uleb128 0
	.uleb128 .LEHB34-.LFB1050
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L168-.LFB1050
	.uleb128 0
	.uleb128 .LEHB35-.LFB1050
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L169-.LFB1050
	.uleb128 0
	.uleb128 .LEHB36-.LFB1050
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L170-.LFB1050
	.uleb128 0
	.uleb128 .LEHB37-.LFB1050
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L171-.LFB1050
	.uleb128 0
	.uleb128 .LEHB38-.LFB1050
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L172-.LFB1050
	.uleb128 0
	.uleb128 .LEHB39-.LFB1050
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L173-.LFB1050
	.uleb128 0
	.uleb128 .LEHB40-.LFB1050
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L174-.LFB1050
	.uleb128 0
	.uleb128 .LEHB41-.LFB1050
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L175-.LFB1050
	.uleb128 0
	.uleb128 .LEHB42-.LFB1050
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L176-.LFB1050
	.uleb128 0
	.uleb128 .LEHB43-.LFB1050
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L177-.LFB1050
	.uleb128 0
	.uleb128 .LEHB44-.LFB1050
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L178-.LFB1050
	.uleb128 0
	.uleb128 .LEHB45-.LFB1050
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L179-.LFB1050
	.uleb128 0
	.uleb128 .LEHB46-.LFB1050
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L180-.LFB1050
	.uleb128 0
	.uleb128 .LEHB47-.LFB1050
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L181-.LFB1050
	.uleb128 0
	.uleb128 .LEHB48-.LFB1050
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L182-.LFB1050
	.uleb128 0
	.uleb128 .LEHB49-.LFB1050
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L183-.LFB1050
	.uleb128 0
	.uleb128 .LEHB50-.LFB1050
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L184-.LFB1050
	.uleb128 0
	.uleb128 .LEHB51-.LFB1050
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L185-.LFB1050
	.uleb128 0
	.uleb128 .LEHB52-.LFB1050
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L184-.LFB1050
	.uleb128 0
	.uleb128 .LEHB53-.LFB1050
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L186-.LFB1050
	.uleb128 0
	.uleb128 .LEHB54-.LFB1050
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L187-.LFB1050
	.uleb128 0
	.uleb128 .LEHB55-.LFB1050
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L186-.LFB1050
	.uleb128 0
	.uleb128 .LEHB56-.LFB1050
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L188-.LFB1050
	.uleb128 0
	.uleb128 .LEHB57-.LFB1050
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L189-.LFB1050
	.uleb128 0
	.uleb128 .LEHB58-.LFB1050
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L188-.LFB1050
	.uleb128 0
	.uleb128 .LEHB59-.LFB1050
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L190-.LFB1050
	.uleb128 0
	.uleb128 .LEHB60-.LFB1050
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L191-.LFB1050
	.uleb128 0
	.uleb128 .LEHB61-.LFB1050
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L190-.LFB1050
	.uleb128 0
	.uleb128 .LEHB62-.LFB1050
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L192-.LFB1050
	.uleb128 0
	.uleb128 .LEHB63-.LFB1050
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L193-.LFB1050
	.uleb128 0
	.uleb128 .LEHB64-.LFB1050
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L192-.LFB1050
	.uleb128 0
	.uleb128 .LEHB65-.LFB1050
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L183-.LFB1050
	.uleb128 0
	.uleb128 .LEHB66-.LFB1050
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L194-.LFB1050
	.uleb128 0
	.uleb128 .LEHB67-.LFB1050
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L183-.LFB1050
	.uleb128 0
	.uleb128 .LEHB68-.LFB1050
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB69-.LFB1050
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB70-.LFB1050
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE1050:
	.text
	.size	main, .-main
	.align 2
	.globl	_ZN5World11isACreatureEii
	.type	_ZN5World11isACreatureEii, @function
_ZN5World11isACreatureEii:
.LFB1051:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World12isAConsumerIEii
	testb	%al, %al
	jne	.L196
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13isAConsumerIIEii
	testb	%al, %al
	je	.L197
.L196:
	movl	$1, %eax
	jmp	.L198
.L197:
	movl	$0, %eax
.L198:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1051:
	.size	_ZN5World11isACreatureEii, .-_ZN5World11isACreatureEii
	.align 2
	.globl	_ZN5World12isAConsumerIEii
	.type	_ZN5World12isAConsumerIEii, @function
_ZN5World12isAConsumerIEii:
.LFB1052:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World12isAConsumerIEP4Life
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1052:
	.size	_ZN5World12isAConsumerIEii, .-_ZN5World12isAConsumerIEii
	.align 2
	.globl	_ZN5World12isAConsumerIEP4Life
	.type	_ZN5World12isAConsumerIEP4Life, @function
_ZN5World12isAConsumerIEP4Life:
.LFB1053:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4Life11getCellCharEv
	cmpb	$99, %al
	sete	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1053:
	.size	_ZN5World12isAConsumerIEP4Life, .-_ZN5World12isAConsumerIEP4Life
	.align 2
	.globl	_ZN5World13isAConsumerIIEii
	.type	_ZN5World13isAConsumerIIEii, @function
_ZN5World13isAConsumerIIEii:
.LFB1054:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5World13isAConsumerIIEP4Life
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1054:
	.size	_ZN5World13isAConsumerIIEii, .-_ZN5World13isAConsumerIIEii
	.align 2
	.globl	_ZN5World13isAConsumerIIEP4Life
	.type	_ZN5World13isAConsumerIIEP4Life, @function
_ZN5World13isAConsumerIIEP4Life:
.LFB1055:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4Life11getCellCharEv
	cmpb	$67, %al
	sete	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1055:
	.size	_ZN5World13isAConsumerIIEP4Life, .-_ZN5World13isAConsumerIIEP4Life
	.align 2
	.globl	_ZN5World10isAVegetalEii
	.type	_ZN5World10isAVegetalEii, @function
_ZN5World10isAVegetalEii:
.LFB1056:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN3Map10getMapItemEii
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life11getCellCharEv
	cmpb	$118, %al
	sete	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1056:
	.size	_ZN5World10isAVegetalEii, .-_ZN5World10isAVegetalEii
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, @function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_:
.LFB1070:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1070
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB71:
	.cfi_offset 3, -12
	call	_ZNSsC1ERKSs
.LEHE71:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB72:
	call	_ZNSs6appendERKSs
.LEHE72:
	jmp	.L207
.L206:
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB73:
	call	_Unwind_Resume
.LEHE73:
.L207:
	movl	8(%ebp), %eax
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret	$4
	.cfi_endproc
.LFE1070:
	.section	.gcc_except_table
.LLSDA1070:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1070-.LLSDACSB1070
.LLSDACSB1070:
	.uleb128 .LEHB71-.LFB1070
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB1070
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L206-.LFB1070
	.uleb128 0
	.uleb128 .LEHB73-.LFB1070
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
.LLSDACSE1070:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1094:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L208
	cmpl	$65535, 12(%ebp)
	jne	.L208
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L208:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1094:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN5WorldC2Eiiiii, @function
_GLOBAL__sub_I__ZN5WorldC2Eiiiii:
.LFB1095:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1095:
	.size	_GLOBAL__sub_I__ZN5WorldC2Eiiiii, .-_GLOBAL__sub_I__ZN5WorldC2Eiiiii
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__sub_I__ZN5WorldC2Eiiiii
	.section	.rodata
	.align 4
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.long	_ZL22__gthrw_pthread_cancelm
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.weak	_ZN10CoordinateC1Ev
	.set	_ZN10CoordinateC1Ev,_ZN10CoordinateC2Ev
	.globl	_ZN5WorldC1Eiiiii
	.set	_ZN5WorldC1Eiiiii,_ZN5WorldC2Eiiiii
	.weak	_ZN4LifeC1ERKS_
	.set	_ZN4LifeC1ERKS_,_ZN4LifeC2ERKS_
	.weak	_ZN8CreatureC1ERKS_
	.set	_ZN8CreatureC1ERKS_,_ZN8CreatureC2ERKS_
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
