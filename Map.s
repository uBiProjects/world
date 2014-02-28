	.file	"Map.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.align 2
	.globl	_ZN3MapC2Eii
	.type	_ZN3MapC2Eii, @function
_ZN3MapC2Eii:
.LFB971:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA971
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV3Map+8, (%eax)
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	$0, -20(%ebp)
	jmp	.L2
.L3:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-20(%ebp), %edx
	sall	$2, %edx
	leal	(%eax,%edx), %ebx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc
	movl	%eax, (%ebx)
	addl	$1, -20(%ebp)
.L2:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-20(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L3
	movl	$0, -16(%ebp)
	jmp	.L4
.L7:
	movl	$0, -12(%ebp)
	jmp	.L5
.L6:
	movl	$16, (%esp)
.LEHB0:
	call	_Znwj
.LEHE0:
	movl	%eax, %ebx
	movl	%ebx, (%esp)
.LEHB1:
	call	_ZN7MapItemC1Ev
.LEHE1:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	%ebx, (%eax)
	addl	$1, -12(%ebp)
.L5:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-12(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L6
	addl	$1, -16(%ebp)
.L4:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L7
	movl	12(%ebp), %eax
	movl	%eax, %edx
	imull	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	addl	$32, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L9:
	.cfi_restore_state
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE971:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA971:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE971-.LLSDACSB971
.LLSDACSB971:
	.uleb128 .LEHB0-.LFB971
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB971
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB971
	.uleb128 0
	.uleb128 .LEHB2-.LFB971
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE971:
	.text
	.size	_ZN3MapC2Eii, .-_ZN3MapC2Eii
	.align 2
	.globl	_ZN3MapD2Ev
	.type	_ZN3MapD2Ev, @function
_ZN3MapD2Ev:
.LFB974:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV3Map+8, (%eax)
	movl	$0, -20(%ebp)
	jmp	.L11
.L15:
	movl	$0, -16(%ebp)
	jmp	.L12
.L14:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L13
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3Map13deleteMonsterEii
.L13:
	addl	$1, -16(%ebp)
.L12:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-16(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L14
	addl	$1, -20(%ebp)
.L11:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L15
	movl	$0, -12(%ebp)
	jmp	.L16
.L17:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free
	addl	$1, -12(%ebp)
.L16:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-12(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L17
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L10
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L10:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE974:
	.size	_ZN3MapD2Ev, .-_ZN3MapD2Ev
	.align 2
	.globl	_ZN3MapD0Ev
	.type	_ZN3MapD0Ev, @function
_ZN3MapD0Ev:
.LFB976:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3MapD1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE976:
	.size	_ZN3MapD0Ev, .-_ZN3MapD0Ev
	.section	.text._ZN4LifeC2ERKS_,"axG",@progbits,_ZN4LifeC5ERKS_,comdat
	.align 2
	.weak	_ZN4LifeC2ERKS_
	.type	_ZN4LifeC2ERKS_, @function
_ZN4LifeC2ERKS_:
.LFB979:
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
.LFE979:
	.size	_ZN4LifeC2ERKS_, .-_ZN4LifeC2ERKS_
	.text
	.align 2
	.globl	_ZN3Map13removeMonsterEii
	.type	_ZN3Map13removeMonsterEii, @function
_ZN3Map13removeMonsterEii:
.LFB977:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA977
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_ZN4LifeC1ERKS_
	movl	$-1, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB3:
	call	_ZN3Map14updateEmissionE4Lifeiii
.LEHE3:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB4:
	call	_ZN4LifeD1Ev
.LEHE4:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	$0, 12(%eax)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	addl	$68, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L25:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4LifeD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
	.cfi_endproc
.LFE977:
	.section	.gcc_except_table
.LLSDA977:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE977-.LLSDACSB977
.LLSDACSB977:
	.uleb128 .LEHB3-.LFB977
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L25-.LFB977
	.uleb128 0
	.uleb128 .LEHB4-.LFB977
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB977
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE977:
	.text
	.size	_ZN3Map13removeMonsterEii, .-_ZN3Map13removeMonsterEii
	.align 2
	.globl	_ZN3Map13insertMonsterEP4Lifeii
	.type	_ZN3Map13insertMonsterEP4Lifeii, @function
_ZN3Map13insertMonsterEP4Lifeii:
.LFB981:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA981
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_ZN4LifeC1ERKS_
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB6:
	call	_ZN3Map14updateEmissionE4Lifeiii
.LEHE6:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB7:
	call	_ZN4LifeD1Ev
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4Life4setXEi
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4Life4setYEi
.LEHE7:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	addl	$68, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L28:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4LifeD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
	.cfi_endproc
.LFE981:
	.section	.gcc_except_table
.LLSDA981:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE981-.LLSDACSB981
.LLSDACSB981:
	.uleb128 .LEHB6-.LFB981
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L28-.LFB981
	.uleb128 0
	.uleb128 .LEHB7-.LFB981
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB981
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE981:
	.text
	.size	_ZN3Map13insertMonsterEP4Lifeii, .-_ZN3Map13insertMonsterEP4Lifeii
	.align 2
	.globl	_ZN3Map13deleteMonsterEii
	.type	_ZN3Map13deleteMonsterEii, @function
_ZN3Map13deleteMonsterEii:
.LFB982:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3Map13removeMonsterEii
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE982:
	.size	_ZN3Map13deleteMonsterEii, .-_ZN3Map13deleteMonsterEii
	.section	.rodata
	.align 4
.LC0:
	.string	"Map::updateEmission Error. ISA relationship is not complete."
	.text
	.align 2
	.globl	_ZN3Map14updateEmissionE4Lifeiii
	.type	_ZN3Map14updateEmissionE4Lifeiii, @function
_ZN3Map14updateEmissionE4Lifeiii:
.LFB983:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_ZN4Life13getStinkRangeEv
	movl	16(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
	jmp	.L31
.L44:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life13getStinkRangeEv
	movl	20(%ebp), %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -24(%ebp)
	jmp	.L32
.L43:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z6moduloii
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life13getStinkRangeEv
	leal	1(%eax), %ebx
	movl	20(%ebp), %eax
	movl	-24(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	16(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	imull	24(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L33
	movl	$0, 12(%esp)
	movl	$_ZTI9ConsumerI, 8(%esp)
	movl	$_ZTI4Life, 4(%esp)
	movl	%eax, (%esp)
	call	__dynamic_cast
	testl	%eax, %eax
	je	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	testb	%al, %al
	je	.L35
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movl	16(%edx), %edx
	movl	-20(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %edx
	movl	(%edx), %edx
	movl	-16(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %edx
	movl	(%edx), %edx
	movl	4(%edx), %edx
	addl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	jmp	.L36
.L35:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L37
	movl	$0, 12(%esp)
	movl	$_ZTI10ConsumerII, 8(%esp)
	movl	$_ZTI4Life, 4(%esp)
	movl	%eax, (%esp)
	call	__dynamic_cast
	testl	%eax, %eax
	je	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	testb	%al, %al
	je	.L39
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movl	16(%edx), %edx
	movl	-20(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %edx
	movl	(%edx), %edx
	movl	-16(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %edx
	movl	(%edx), %edx
	movl	8(%edx), %edx
	addl	-12(%ebp), %edx
	movl	%edx, 8(%eax)
	jmp	.L36
.L39:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L40
	movl	$0, 12(%esp)
	movl	$_ZTI7Vegetal, 8(%esp)
	movl	$_ZTI4Life, 4(%esp)
	movl	%eax, (%esp)
	call	__dynamic_cast
	testl	%eax, %eax
	je	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	movl	$0, %eax
.L41:
	testb	%al, %al
	je	.L42
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movl	16(%edx), %edx
	movl	-20(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %edx
	movl	(%edx), %edx
	movl	-16(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %edx
	movl	(%edx), %edx
	movl	(%edx), %edx
	addl	-12(%ebp), %edx
	movl	%edx, (%eax)
	jmp	.L36
.L42:
	movl	$.LC0, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L36:
	addl	$1, -24(%ebp)
.L32:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life13getStinkRangeEv
	addl	20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L43
	addl	$1, -28(%ebp)
.L31:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN4Life13getStinkRangeEv
	addl	16(%ebp), %eax
	cmpl	-28(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L44
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
.LFE983:
	.size	_ZN3Map14updateEmissionE4Lifeiii, .-_ZN3Map14updateEmissionE4Lifeiii
	.section	.rodata
.LC1:
	.string	"\n +"
.LC2:
	.string	"-"
.LC3:
	.string	"+"
.LC4:
	.string	"\n"
.LC5:
	.string	" |"
.LC6:
	.string	"p"
.LC7:
	.string	"c"
.LC8:
	.string	" "
.LC9:
	.string	"|"
.LC10:
	.string	"P"
.LC11:
	.string	"C"
.LC12:
	.string	"v"
.LC13:
	.string	"e"
.LC14:
	.string	"."
.LC15:
	.string	" +"
	.text
	.align 2
	.globl	_ZN3Map5printEb
	.type	_ZN3Map5printEb, @function
_ZN3Map5printEb:
.LFB984:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	12(%ebp), %eax
	movb	%al, -92(%ebp)
	movl	$50, (%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_Z6sleepdj
	call	_Z12clear_screenv
	movl	$3, -84(%ebp)
	cmpb	$0, -92(%ebp)
	je	.L46
	movl	$12, -84(%ebp)
.L46:
	movl	$.LC1, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -76(%ebp)
	jmp	.L47
.L50:
	movl	$0, -72(%ebp)
	jmp	.L48
.L49:
	movl	$.LC2, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -72(%ebp)
.L48:
	movl	-72(%ebp), %eax
	cmpl	-84(%ebp), %eax
	setl	%al
	testb	%al, %al
	jne	.L49
	movl	$.LC3, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -76(%ebp)
.L47:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L50
	movl	$.LC4, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -68(%ebp)
	jmp	.L51
.L87:
	movl	$0, -64(%ebp)
	jmp	.L52
.L81:
	cmpl	$0, -64(%ebp)
	jne	.L53
	movl	$.LC5, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L53:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L54
	movl	$0, 12(%esp)
	movl	$_ZTI9ConsumerI, 8(%esp)
	movl	$_ZTI4Life, 4(%esp)
	movl	%eax, (%esp)
	call	__dynamic_cast
	testl	%eax, %eax
	je	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	testb	%al, %al
	je	.L56
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18getMaxPregnantTimeEv
	cmpl	%eax, %ebx
	setl	%al
	testb	%al, %al
	je	.L57
	movl	$.LC6, -80(%ebp)
	jmp	.L58
.L57:
	movl	$.LC7, -80(%ebp)
.L58:
	movzbl	-92(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L59
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -60(%ebp)
	jmp	.L60
.L61:
	movl	$.LC8, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -60(%ebp)
.L60:
	movl	-84(%ebp), %eax
	subl	$1, %eax
	cmpl	-60(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L61
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L59
.L56:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L62
	movl	$0, 12(%esp)
	movl	$_ZTI10ConsumerII, 8(%esp)
	movl	$_ZTI4Life, 4(%esp)
	movl	%eax, (%esp)
	call	__dynamic_cast
	testl	%eax, %eax
	je	.L62
	movl	$1, %eax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	testb	%al, %al
	je	.L64
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN8Creature18getMaxPregnantTimeEv
	cmpl	%eax, %ebx
	setl	%al
	testb	%al, %al
	je	.L65
	movl	$.LC10, -80(%ebp)
	jmp	.L66
.L65:
	movl	$.LC11, -80(%ebp)
.L66:
	movzbl	-92(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L59
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -56(%ebp)
	jmp	.L67
.L68:
	movl	$.LC8, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -56(%ebp)
.L67:
	movl	-84(%ebp), %eax
	subl	$1, %eax
	cmpl	-56(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L68
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L59
.L64:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L69
	movl	$0, 12(%esp)
	movl	$_ZTI7Vegetal, 8(%esp)
	movl	$_ZTI4Life, 4(%esp)
	movl	%eax, (%esp)
	call	__dynamic_cast
	testl	%eax, %eax
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	testb	%al, %al
	je	.L71
	movl	$.LC12, -80(%ebp)
	movzbl	-92(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L59
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -52(%ebp)
	jmp	.L72
.L75:
	movl	$.LC8, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -52(%ebp)
.L72:
	movl	-84(%ebp), %eax
	subl	$1, %eax
	cmpl	-52(%ebp), %eax
	jle	.L73
	cmpb	$0, -92(%ebp)
	je	.L73
	movl	$1, %eax
	jmp	.L74
.L73:
	movl	$0, %eax
.L74:
	testb	%al, %al
	jne	.L75
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L59
.L71:
	movl	$.LC8, -80(%ebp)
	movzbl	-92(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L59
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -48(%ebp)
	jmp	.L76
.L77:
	movl	$.LC8, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -48(%ebp)
.L76:
	movl	-84(%ebp), %eax
	subl	$1, %eax
	cmpl	-48(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L77
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L59:
	cmpb	$0, -92(%ebp)
	je	.L78
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	(%eax), %edi
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC13, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC14, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC14, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$0, -44(%ebp)
	jmp	.L79
.L80:
	movl	$.LC8, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -44(%ebp)
.L79:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	notl	%eax
	movl	%eax, %ebx
	addl	-84(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	4(%eax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	notl	%eax
	addl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	8(%eax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	notl	%eax
	addl	%ebx, %eax
	subl	$4, %eax
	cmpl	-44(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L80
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L78:
	addl	$1, -64(%ebp)
.L52:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-64(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L81
	movl	$.LC4, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -40(%ebp)
	jmp	.L82
.L86:
	cmpl	$0, -40(%ebp)
	jne	.L83
	movl	$.LC15, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L83:
	movl	$0, -36(%ebp)
	jmp	.L84
.L85:
	movl	$.LC2, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -36(%ebp)
.L84:
	movl	-36(%ebp), %eax
	cmpl	-84(%ebp), %eax
	setl	%al
	testb	%al, %al
	jne	.L85
	movl	$.LC3, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -40(%ebp)
.L82:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-40(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L86
	movl	$.LC4, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -68(%ebp)
.L51:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-68(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	.L87
	addl	$108, %esp
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
.LFE984:
	.size	_ZN3Map5printEb, .-_ZN3Map5printEb
	.align 2
	.globl	_ZN3Map21getAmountFreePositionEv
	.type	_ZN3Map21getAmountFreePositionEv, @function
_ZN3Map21getAmountFreePositionEv:
.LFB985:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE985:
	.size	_ZN3Map21getAmountFreePositionEv, .-_ZN3Map21getAmountFreePositionEv
	.align 2
	.globl	_ZN3Map10getMapItemEii
	.type	_ZN3Map10getMapItemEii, @function
_ZN3Map10getMapItemEii:
.LFB986:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE986:
	.size	_ZN3Map10getMapItemEii, .-_ZN3Map10getMapItemEii
	.align 2
	.globl	_ZN3Map4testEv
	.type	_ZN3Map4testEv, @function
_ZN3Map4testEv:
.LFB987:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA987
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	$20, (%esp)
.LEHB9:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_Znwj
.LEHE9:
	movl	%eax, %ebx
	movl	$10, 8(%esp)
	movl	$10, 4(%esp)
	movl	%ebx, (%esp)
.LEHB10:
	call	_ZN3MapC1Eii
.LEHE10:
	movl	%ebx, -12(%ebp)
	movl	$64, (%esp)
.LEHB11:
	call	_Znwj
.LEHE11:
	movl	%eax, %ebx
	movl	$2, 8(%esp)
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
.LEHB12:
	call	_ZN9ConsumerIC1Eii
.LEHE12:
	movl	$2, 12(%esp)
	movl	$2, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
.LEHB13:
	call	_ZN3Map13insertMonsterEP4Lifeii
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3Map5printEb
	movl	$64, (%esp)
	call	_Znwj
.LEHE13:
	movl	%eax, %ebx
	movl	$3, 8(%esp)
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
.LEHB14:
	call	_ZN9ConsumerIC1Eii
.LEHE14:
	movl	$3, 12(%esp)
	movl	$2, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
.LEHB15:
	call	_ZN3Map13insertMonsterEP4Lifeii
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3Map5printEb
	movl	$2, 8(%esp)
	movl	$2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3Map13removeMonsterEii
	movl	$3, 8(%esp)
	movl	$2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3Map13removeMonsterEii
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN3Map5printEb
	addl	$32, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L94:
	.cfi_restore_state
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L95:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L96:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE15:
	.cfi_endproc
.LFE987:
	.section	.gcc_except_table
.LLSDA987:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE987-.LLSDACSB987
.LLSDACSB987:
	.uleb128 .LEHB9-.LFB987
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB987
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L94-.LFB987
	.uleb128 0
	.uleb128 .LEHB11-.LFB987
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB987
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L95-.LFB987
	.uleb128 0
	.uleb128 .LEHB13-.LFB987
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB987
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L96-.LFB987
	.uleb128 0
	.uleb128 .LEHB15-.LFB987
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE987:
	.text
	.size	_ZN3Map4testEv, .-_ZN3Map4testEv
	.weak	_ZTV3Map
	.section	.rodata._ZTV3Map,"aG",@progbits,_ZTV3Map,comdat
	.align 8
	.type	_ZTV3Map, @object
	.size	_ZTV3Map, 16
_ZTV3Map:
	.long	0
	.long	_ZTI3Map
	.long	_ZN3MapD1Ev
	.long	_ZN3MapD0Ev
	.weak	_ZTI3Map
	.section	.rodata._ZTI3Map,"aG",@progbits,_ZTI3Map,comdat
	.align 4
	.type	_ZTI3Map, @object
	.size	_ZTI3Map, 8
_ZTI3Map:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS3Map
	.weak	_ZTS3Map
	.section	.rodata._ZTS3Map,"aG",@progbits,_ZTS3Map,comdat
	.type	_ZTS3Map, @object
	.size	_ZTS3Map, 5
_ZTS3Map:
	.string	"3Map"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB991:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L97
	cmpl	$65535, 12(%ebp)
	jne	.L97
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L97:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE991:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN3MapC2Eii, @function
_GLOBAL__sub_I__ZN3MapC2Eii:
.LFB992:
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
.LFE992:
	.size	_GLOBAL__sub_I__ZN3MapC2Eii, .-_GLOBAL__sub_I__ZN3MapC2Eii
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__sub_I__ZN3MapC2Eii
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
	.globl	_ZN3MapC1Eii
	.set	_ZN3MapC1Eii,_ZN3MapC2Eii
	.globl	_ZN3MapD1Ev
	.set	_ZN3MapD1Ev,_ZN3MapD2Ev
	.weak	_ZN4LifeC1ERKS_
	.set	_ZN4LifeC1ERKS_,_ZN4LifeC2ERKS_
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
