	.file	"World.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.align 2
	.globl	_ZN5WorldC2Ev
	.type	_ZN5WorldC2Ev, @function
_ZN5WorldC2Ev:
.LFB1031:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1031
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$800, %rax
	movq	%rax, %rdi
.LEHB0:
	.cfi_offset 3, -24
	call	_ZNSsC1Ev
.LEHE0:
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZN5World18initializeCreatureEv
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World3runEv
	movq	-24(%rbp), %rax
	addq	$800, %rax
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
.LEHE1:
	jmp	.L4
.L3:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$800, %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L4:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1031:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1031:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1031-.LLSDACSB1031
.LLSDACSB1031:
	.uleb128 .LEHB0-.LFB1031
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1031
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L3-.LFB1031
	.uleb128 0
	.uleb128 .LEHB2-.LFB1031
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1031:
	.text
	.size	_ZN5WorldC2Ev, .-_ZN5WorldC2Ev
	.align 2
	.globl	_ZN5World18initializeCreatureEv
	.type	_ZN5World18initializeCreatureEv, @function
_ZN5World18initializeCreatureEv:
.LFB1033:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1033
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L6
	.cfi_offset 3, -32
	.cfi_offset 12, -24
.L9:
	movl	$0, -20(%rbp)
	jmp	.L7
.L8:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	$0, (%rcx,%rax,8)
	addl	$1, -20(%rbp)
.L7:
	cmpl	$9, -20(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L8
	addl	$1, -24(%rbp)
.L6:
	cmpl	$9, -24(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L9
	movl	$64, %edi
.LEHB3:
	call	_Znwm
.LEHE3:
	movq	%rax, %rbx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
.LEHB4:
	call	_ZN9ConsumerIC1Eii
.LEHE4:
	movq	-40(%rbp), %rax
	movq	%rbx, (%rax)
	movl	$64, %edi
.LEHB5:
	call	_Znwm
.LEHE5:
	movq	%rax, %rbx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
.LEHB6:
	call	_ZN9ConsumerIC1Eii
.LEHE6:
	movq	-40(%rbp), %rax
	movq	%rbx, 8(%rax)
	movl	$32, %edi
.LEHB7:
	call	_Znwm
.LEHE7:
	movq	%rax, %rbx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
.LEHB8:
	call	_ZN7VegetalC1Eii
.LEHE8:
	movq	-40(%rbp), %rax
	movq	%rbx, 32(%rax)
	movl	$32, %edi
.LEHB9:
	call	_Znwm
.LEHE9:
	movq	%rax, %rbx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
.LEHB10:
	call	_ZN7VegetalC1Eii
.LEHE10:
	movq	-40(%rbp), %rax
	movq	%rbx, 40(%rax)
	movl	$64, %edi
.LEHB11:
	call	_Znwm
.LEHE11:
	movq	%rax, %rbx
	movl	$3, %edx
	movl	$3, %esi
	movq	%rbx, %rdi
.LEHB12:
	call	_ZN9ConsumerIC1Eii
.LEHE12:
	movq	-40(%rbp), %rax
	movq	%rbx, 344(%rax)
	movl	$64, %edi
.LEHB13:
	call	_Znwm
.LEHE13:
	movq	%rax, %rbx
	movl	$2, %edx
	movl	$2, %esi
	movq	%rbx, %rdi
.LEHB14:
	call	_ZN9ConsumerIC1Eii
.LEHE14:
	movq	-40(%rbp), %rax
	movq	%rbx, 544(%rax)
	movl	$64, %edi
.LEHB15:
	call	_Znwm
.LEHE15:
	movq	%rax, %rbx
	movl	$2, %edx
	movl	$2, %esi
	movq	%rbx, %rdi
.LEHB16:
	call	_ZN9ConsumerIC1Eii
.LEHE16:
	movq	-40(%rbp), %rax
	movq	%rbx, 704(%rax)
	movl	$32, %edi
.LEHB17:
	call	_Znwm
.LEHE17:
	movq	%rax, %rbx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rbx, %rdi
.LEHB18:
	call	_ZN7VegetalC1Eii
.LEHE18:
	movq	-40(%rbp), %rax
	movq	%rbx, 80(%rax)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L18:
	.cfi_restore_state
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume
.L19:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L20:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L21:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L22:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L23:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L24:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L25:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE19:
	.cfi_endproc
.LFE1033:
	.section	.gcc_except_table
.LLSDA1033:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1033-.LLSDACSB1033
.LLSDACSB1033:
	.uleb128 .LEHB3-.LFB1033
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1033
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L18-.LFB1033
	.uleb128 0
	.uleb128 .LEHB5-.LFB1033
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1033
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L19-.LFB1033
	.uleb128 0
	.uleb128 .LEHB7-.LFB1033
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB1033
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L20-.LFB1033
	.uleb128 0
	.uleb128 .LEHB9-.LFB1033
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB1033
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L21-.LFB1033
	.uleb128 0
	.uleb128 .LEHB11-.LFB1033
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB1033
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L22-.LFB1033
	.uleb128 0
	.uleb128 .LEHB13-.LFB1033
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB1033
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L23-.LFB1033
	.uleb128 0
	.uleb128 .LEHB15-.LFB1033
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB1033
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L24-.LFB1033
	.uleb128 0
	.uleb128 .LEHB17-.LFB1033
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB1033
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L25-.LFB1033
	.uleb128 0
	.uleb128 .LEHB19-.LFB1033
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE1033:
	.text
	.size	_ZN5World18initializeCreatureEv, .-_ZN5World18initializeCreatureEv
	.section	.rodata
.LC0:
	.string	"hi\n"
	.text
	.align 2
	.globl	_ZN5World3runEv
	.type	_ZN5World3runEv, @function
_ZN5World3runEv:
.LFB1034:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1034
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 808(%rax)
	jmp	.L27
	.cfi_offset 3, -32
	.cfi_offset 12, -24
.L29:
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
.LEHB20:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World14performOneStepEv
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -32(%rbp)
	movl	$10, -28(%rbp)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%rax), %ebx
	call	rand
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	addl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$10, -28(%rbp)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%rax), %ebx
	call	rand
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	addl	-32(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	jne	.L28
	movl	$32, %edi
	call	_Znwm
.LEHE20:
	movq	%rax, %rbx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
.LEHB21:
	call	_ZN7VegetalC1Eii
.LEHE21:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	%rbx, (%rcx,%rax,8)
.L28:
	movq	-40(%rbp), %rax
	movl	808(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 808(%rax)
.L27:
	movq	-40(%rbp), %rax
	movl	808(%rax), %eax
	cmpl	$899, %eax
	setle	%al
	testb	%al, %al
	jne	.L29
	jmp	.L32
.L31:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB22:
	call	_Unwind_Resume
.LEHE22:
.L32:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1034:
	.section	.gcc_except_table
.LLSDA1034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1034-.LLSDACSB1034
.LLSDACSB1034:
	.uleb128 .LEHB20-.LFB1034
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB1034
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L31-.LFB1034
	.uleb128 0
	.uleb128 .LEHB22-.LFB1034
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE1034:
	.text
	.size	_ZN5World3runEv, .-_ZN5World3runEv
	.section	.rodata
.LC1:
	.string	"step"
.LC2:
	.string	"."
.LC3:
	.string	"\n"
.LC4:
	.string	"zeit1"
.LC5:
	.string	"zeit2: "
.LC6:
	.string	"zeit3: "
	.text
	.align 2
	.globl	_ZN5World14performOneStepEv
	.type	_ZN5World14performOneStepEv, @function
_ZN5World14performOneStepEv:
.LFB1035:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1035
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	movq	%rdi, -216(%rbp)
	movl	$2, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L34
	.cfi_offset 3, -32
	.cfi_offset 12, -24
.L70:
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %ebx
	movq	-216(%rbp), %rax
	movl	808(%rax), %r12d
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
.LEHB23:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r12d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -48(%rbp)
	jmp	.L35
.L43:
	movl	$0, -44(%rbp)
	jmp	.L36
.L42:
	movq	-216(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L37
	movq	-216(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L38
	movl	$0, %ecx
	movl	$_ZTI9ConsumerI, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	jne	.L39
.L38:
	movq	-216(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L40
	movl	$0, %ecx
	movl	$_ZTI10ConsumerII, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L40
.L39:
	movl	$1, %eax
	jmp	.L41
.L40:
	movl	$0, %eax
.L41:
	testb	%al, %al
	je	.L37
	movq	-216(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN4Life11setWalkableEb
.L37:
	addl	$1, -44(%rbp)
.L36:
	cmpl	$9, -44(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L42
	addl	$1, -48(%rbp)
.L35:
	cmpl	$9, -48(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L43
	movl	$0, -40(%rbp)
	jmp	.L44
.L69:
	movl	$0, -36(%rbp)
	jmp	.L45
.L68:
	movq	-216(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L46
	movl	$0, %ecx
	movl	$_ZTI9ConsumerI, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	jne	.L47
.L46:
	movq	-216(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L48
	movl	$0, %ecx
	movl	$_ZTI10ConsumerII, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L48
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L48
.L47:
	movq	-216(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	call	_ZN4Life10isWalkableEv
	testb	%al, %al
	je	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	movl	$0, %eax
.L49:
	testb	%al, %al
	je	.L50
	movq	-216(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-60(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World5smellEP8CreaturePiS2_
	testb	%al, %al
	je	.L51
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jns	.L52
	movl	$-1, -60(%rbp)
	jmp	.L53
.L52:
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jle	.L53
	movl	$1, -60(%rbp)
.L53:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jns	.L54
	movl	$-1, -56(%rbp)
	jmp	.L55
.L54:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jle	.L55
	movl	$1, -56(%rbp)
.L55:
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	-40(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -32(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -28(%rbp)
	jmp	.L56
.L51:
	call	rand
	movl	%eax, %ecx
	movq	-216(%rbp), %rax
	movl	$3, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	call	rand
	movl	%eax, %ecx
	movq	-216(%rbp), %rax
	movl	$3, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	-40(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -32(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movq	-216(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -28(%rbp)
.L56:
	movq	-216(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN8Creature8interactEPS_P4Life
	movl	%eax, -20(%rbp)
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L57
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jne	.L57
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L50
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World10timePassedEP8Creatureii
	jmp	.L50
.L57:
	cmpl	$1, -20(%rbp)
	jne	.L60
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN8Creature14changePositionEii
	movq	-216(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	$0, (%rcx,%rax,8)
	movq	-216(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rsi), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rcx,%rdx,8)
	movq	-216(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4Life11setWalkableEb
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L61
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World10timePassedEP8Creatureii
.L61:
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN8Creature18setTimeWithoutFoodEi
	jmp	.L50
.L60:
	movq	-216(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	jne	.L62
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN8Creature14changePositionEii
	movq	-216(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	$0, (%rcx,%rax,8)
	movq	-216(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rsi), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rcx,%rdx,8)
	movq	-216(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4Life11setWalkableEb
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L50
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World10timePassedEP8Creatureii
	jmp	.L50
.L62:
	cmpl	$-1, -20(%rbp)
	jne	.L63
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L50
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World10timePassedEP8Creatureii
	jmp	.L50
.L63:
	cmpl	$0, -20(%rbp)
	jne	.L50
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L64
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World10timePassedEP8Creatureii
.L64:
	movq	-216(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8CreatureC1ERKS_
.LEHE23:
	movq	-72(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZN8CreatureC1ERKS_
.LEHE24:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
.LEHB25:
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature14getMaxLifeTimeEv
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	cmpl	%eax, %ebx
	jle	.L65
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature14getMaxLifeTimeEv
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	cmpl	%eax, %ebx
	jle	.L65
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature18getMaxPregnantTimeEv
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	.L65
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature18getMaxPregnantTimeEv
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	testb	%al, %al
	je	.L67
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN8Creature11setPregnantEb
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE25:
.L67:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
.LEHB26:
	call	_ZN8CreatureD1Ev
.LEHE26:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
.LEHB27:
	call	_ZN8CreatureD1Ev
.L50:
	addl	$1, -36(%rbp)
.L45:
	cmpl	$9, -36(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L68
	addl	$1, -40(%rbp)
.L44:
	cmpl	$9, -40(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L69
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5World5printEv
.LEHE27:
	addl	$1, -52(%rbp)
.L34:
	movl	-52(%rbp), %eax
	cmpl	-24(%rbp), %eax
	setl	%al
	testb	%al, %al
	jne	.L70
	jmp	.L75
.L74:
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8CreatureD1Ev
	jmp	.L72
.L73:
	movq	%rax, %rbx
.L72:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8CreatureD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB28:
	call	_Unwind_Resume
.LEHE28:
.L75:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1035:
	.section	.gcc_except_table
.LLSDA1035:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1035-.LLSDACSB1035
.LLSDACSB1035:
	.uleb128 .LEHB23-.LFB1035
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB1035
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L73-.LFB1035
	.uleb128 0
	.uleb128 .LEHB25-.LFB1035
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L74-.LFB1035
	.uleb128 0
	.uleb128 .LEHB26-.LFB1035
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L73-.LFB1035
	.uleb128 0
	.uleb128 .LEHB27-.LFB1035
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB1035
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE1035:
	.text
	.size	_ZN5World14performOneStepEv, .-_ZN5World14performOneStepEv
	.section	.text._ZN4LifeC2ERKS_,"axG",@progbits,_ZN4LifeC5ERKS_,comdat
	.align 2
	.weak	_ZN4LifeC2ERKS_
	.type	_ZN4LifeC2ERKS_, @function
_ZN4LifeC2ERKS_:
.LFB1038:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTV4Life+16, (%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-16(%rbp), %rax
	movzbl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 28(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1038:
	.size	_ZN4LifeC2ERKS_, .-_ZN4LifeC2ERKS_
	.section	.text._ZN8CreatureC2ERKS_,"axG",@progbits,_ZN8CreatureC5ERKS_,comdat
	.align 2
	.weak	_ZN8CreatureC2ERKS_
	.type	_ZN8CreatureC2ERKS_, @function
_ZN8CreatureC2ERKS_:
.LFB1040:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4LifeC2ERKS_
	movq	-8(%rbp), %rax
	movq	$_ZTV8Creature+16, (%rax)
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	36(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 52(%rax)
	movq	-16(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1040:
	.size	_ZN8CreatureC2ERKS_, .-_ZN8CreatureC2ERKS_
	.text
	.align 2
	.globl	_ZN5World5smellEP8CreaturePiS2_
	.type	_ZN5World5smellEP8CreaturePiS2_, @function
_ZN5World5smellEP8CreaturePiS2_:
.LFB1042:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	_ZN8Creature24getRangeOfSmellDetectionEv
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movl	$-1, -112(%rbp)
	movl	$-1, -108(%rbp)
	movl	$-1, -84(%rbp)
	movl	$-1, -104(%rbp)
	movl	$-1, -100(%rbp)
	movl	$-1, -80(%rbp)
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-224(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movb	$0, -19(%rbp)
	movb	$0, -18(%rbp)
	movb	$0, -17(%rbp)
	movq	-200(%rbp), %rax
	movl	$10, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	_ZN5World7maximumEii
	movl	%eax, %ecx
	movq	-200(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World7maximumEii
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	movl	-76(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.L79
.L113:
	movl	-88(%rbp), %eax
	movl	-72(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.L80
.L112:
	movl	-96(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.L81
	movl	-92(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L81
	addl	$1, -92(%rbp)
.L81:
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	subl	-96(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	subl	%ecx, %edx
	movq	-224(%rbp), %rax
	movl	(%rax), %eax
	subl	-92(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	-96(%rbp), %ecx
	movq	-200(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -60(%rbp)
	movl	-92(%rbp), %ecx
	movq	-200(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -56(%rbp)
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	je	.L82
	movl	$0, %ecx
	movl	$_ZTI9ConsumerI, %edx
	movl	$_ZTI8Creature, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L82
	movl	$1, %eax
	jmp	.L83
.L82:
	movl	$0, %eax
.L83:
	testb	%al, %al
	je	.L84
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L85
	movl	$0, %ecx
	movl	$_ZTI7Vegetal, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	movl	$0, %eax
.L86:
	testb	%al, %al
	je	.L87
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	call	_ZN4Life13getStinkRangeEv
	addl	-88(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.L88
	movl	-64(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jg	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movl	$0, %eax
.L89:
	testb	%al, %al
	je	.L90
	movl	-64(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-76(%rbp), %eax
	movl	-96(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -112(%rbp)
	movl	-72(%rbp), %eax
	movl	-92(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movb	$1, -19(%rbp)
	jmp	.L90
.L87:
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L91
	movl	$0, %ecx
	movl	$_ZTI9ConsumerI, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L91
	movl	$1, %eax
	jmp	.L92
.L91:
	movl	$0, %eax
.L92:
	testb	%al, %al
	je	.L93
	movl	-64(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jg	.L94
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	call	_ZN4Life13getStinkRangeEv
	addl	-88(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.L94
	movl	$1, %eax
	jmp	.L95
.L94:
	movl	$0, %eax
.L95:
	testb	%al, %al
	je	.L90
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature14getMaxLifeTimeEv
	movl	%eax, -44(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	jle	.L96
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Life4getXEv
	movl	%eax, %ebx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Life4getXEv
	cmpl	%eax, %ebx
	jne	.L97
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Life4getYEv
	movl	%eax, %ebx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Life4getYEv
	cmpl	%eax, %ebx
	je	.L96
.L97:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature18getMaxPregnantTimeEv
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	.L96
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature15getPregnantTimeEv
	movl	%eax, %ebx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature18getMaxPregnantTimeEv
	addl	$1, %eax
	cmpl	%eax, %ebx
	jl	.L96
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	jle	.L96
	movl	$1, %eax
	jmp	.L98
.L96:
	movl	$0, %eax
.L98:
	testb	%al, %al
	je	.L90
	movl	-64(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -160(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-76(%rbp), %eax
	movl	-96(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -108(%rbp)
	movl	-72(%rbp), %eax
	movl	-92(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movb	$1, -18(%rbp)
	jmp	.L90
.L93:
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L99
	movl	$0, %ecx
	movl	$_ZTI10ConsumerII, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L99
	movl	$1, %eax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	testb	%al, %al
	je	.L90
	movl	-64(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jg	.L101
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	call	_ZN4Life13getStinkRangeEv
	addl	-88(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.L101
	movl	$1, %eax
	jmp	.L102
.L101:
	movl	$0, %eax
.L102:
	testb	%al, %al
	je	.L90
	movl	-64(%rbp), %eax
	movl	%eax, -116(%rbp)
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -152(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-76(%rbp), %eax
	movl	-96(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movl	-72(%rbp), %eax
	movl	-92(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movb	$1, -17(%rbp)
	jmp	.L90
.L84:
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	je	.L103
	movl	$0, %ecx
	movl	$_ZTI10ConsumerII, %edx
	movl	$_ZTI8Creature, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L103
	movl	$1, %eax
	jmp	.L104
.L103:
	movl	$0, %eax
.L104:
	testb	%al, %al
	je	.L90
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L105
	movl	$0, %ecx
	movl	$_ZTI9ConsumerI, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L105
	movl	$1, %eax
	jmp	.L106
.L105:
	movl	$0, %eax
.L106:
	testb	%al, %al
	je	.L107
	movl	-64(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jg	.L90
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	call	_ZN4Life13getStinkRangeEv
	cmpl	-64(%rbp), %eax
	setge	%al
	testb	%al, %al
	je	.L90
	movl	-64(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-76(%rbp), %eax
	movl	-96(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -112(%rbp)
	movl	-72(%rbp), %eax
	movl	-92(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movb	$1, -19(%rbp)
	jmp	.L90
.L107:
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L108
	movl	$0, %ecx
	movl	$_ZTI10ConsumerII, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L108
	movl	$1, %eax
	jmp	.L109
.L108:
	movl	$0, %eax
.L109:
	testb	%al, %al
	je	.L90
	movq	-208(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature14getMaxLifeTimeEv
	movl	%eax, -24(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jg	.L110
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jle	.L110
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jle	.L110
	movl	$1, %eax
	jmp	.L111
.L110:
	movl	$0, %eax
.L111:
	testb	%al, %al
	je	.L90
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	call	_ZN4Life13getStinkRangeEv
	cmpl	-64(%rbp), %eax
	setge	%al
	testb	%al, %al
	je	.L90
	movl	-64(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-200(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -160(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-76(%rbp), %eax
	movl	-96(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -108(%rbp)
	movl	-72(%rbp), %eax
	movl	-92(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movb	$1, -18(%rbp)
.L90:
	addl	$1, -92(%rbp)
.L80:
	movl	-88(%rbp), %eax
	movl	-72(%rbp), %edx
	addl	%edx, %eax
	addl	-68(%rbp), %eax
	cmpl	-92(%rbp), %eax
	setg	%al
	testb	%al, %al
	jne	.L112
	addl	$1, -96(%rbp)
.L79:
	movl	-88(%rbp), %eax
	movl	-76(%rbp), %edx
	addl	%edx, %eax
	addl	-68(%rbp), %eax
	cmpl	-96(%rbp), %eax
	setg	%al
	testb	%al, %al
	jne	.L113
	cmpb	$0, -19(%rbp)
	je	.L114
	movq	-216(%rbp), %rax
	movl	-112(%rbp), %edx
	movl	%edx, (%rax)
	movq	-224(%rbp), %rax
	movl	-104(%rbp), %edx
	movl	%edx, (%rax)
	movzbl	-19(%rbp), %eax
	jmp	.L115
.L114:
	cmpb	$0, -18(%rbp)
	je	.L116
	movq	-216(%rbp), %rax
	movl	-108(%rbp), %edx
	movl	%edx, (%rax)
	movq	-224(%rbp), %rax
	movl	-100(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L115
.L116:
	movl	$0, %eax
.L115:
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1042:
	.size	_ZN5World5smellEP8CreaturePiS2_, .-_ZN5World5smellEP8CreaturePiS2_
	.section	.rodata
.LC7:
	.string	"I died!\n"
.LC8:
	.string	"current time without food: "
.LC9:
	.string	"current life time: "
	.text
	.align 2
	.globl	_ZN5World10timePassedEP8Creatureii
	.type	_ZN5World10timePassedEP8Creatureii, @function
_ZN5World10timePassedEP8Creatureii:
.LFB1043:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1043
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB29:
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	_ZN8Creature18getTimeWithoutFoodEv
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN8Creature18setTimeWithoutFoodEi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN8Creature11setLifeTimeEi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature20increasePregnantTimeEv
	testb	%al, %al
	je	.L118
	movl	$-1, -32(%rbp)
	jmp	.L119
.L130:
	movl	$-1, -28(%rbp)
	jmp	.L120
.L129:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Life4getXEv
	movl	%eax, %ecx
	addl	-32(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4Life4getYEv
	movl	%eax, %ecx
	addl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	jne	.L121
	movq	-40(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L122
	movl	$0, %ecx
	movl	$_ZTI9ConsumerI, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L122
	movl	$1, %eax
	jmp	.L123
.L122:
	movl	$0, %eax
.L123:
	testb	%al, %al
	je	.L124
	movl	$64, %edi
	call	_Znwm
.LEHE29:
	movq	%rax, %rbx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
.LEHB30:
	call	_ZN9ConsumerIC1Eii
.LEHE30:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	%rbx, (%rcx,%rax,8)
	jmp	.L125
.L124:
	movq	-40(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L126
	movl	$0, %ecx
	movl	$_ZTI10ConsumerII, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L126
	movl	$1, %eax
	jmp	.L127
.L126:
	movl	$0, %eax
.L127:
	testb	%al, %al
	je	.L125
	movl	$64, %edi
.LEHB31:
	call	_Znwm
.LEHE31:
	movq	%rax, %rbx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
.LEHB32:
	call	_ZN10ConsumerIIC1Eii
.LEHE32:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	%rbx, (%rcx,%rax,8)
.L125:
	movl	$100, -32(%rbp)
	movl	$100, -28(%rbp)
	jmp	.L128
.L121:
	addl	$1, -28(%rbp)
.L120:
	cmpl	$1, -28(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L129
.L128:
	addl	$1, -32(%rbp)
.L119:
	cmpl	$1, -32(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L130
.L118:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB33:
	call	_ZN8Creature18getTimeWithoutFoodEv
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature21getMaxTimeWithoutFoodEv
	cmpl	%eax, %ebx
	jge	.L131
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature14getMaxLifeTimeEv
	cmpl	%eax, %ebx
	jl	.L132
.L131:
	movl	$1, %eax
	jmp	.L133
.L132:
	movl	$0, %eax
.L133:
	testb	%al, %al
	je	.L139
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature11getLifeTimeEv
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Creature18getTimeWithoutFoodEv
	movl	%eax, %r12d
	movl	$.LC8, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r12d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	$0, (%rcx,%rax,8)
	jmp	.L117
.L137:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L138:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE33:
.L139:
	nop
.L117:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1043:
	.section	.gcc_except_table
.LLSDA1043:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1043-.LLSDACSB1043
.LLSDACSB1043:
	.uleb128 .LEHB29-.LFB1043
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB1043
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L137-.LFB1043
	.uleb128 0
	.uleb128 .LEHB31-.LFB1043
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB1043
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L138-.LFB1043
	.uleb128 0
	.uleb128 .LEHB33-.LFB1043
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSE1043:
	.text
	.size	_ZN5World10timePassedEP8Creatureii, .-_ZN5World10timePassedEP8Creatureii
	.section	.rodata
.LC10:
	.string	"\n +"
.LC11:
	.string	"---+"
.LC12:
	.string	" |"
.LC13:
	.string	" c |"
.LC14:
	.string	" C |"
.LC15:
	.string	" v |"
.LC16:
	.string	"   |"
.LC17:
	.string	" +"
	.text
	.align 2
	.globl	_ZN5World5printEv
	.type	_ZN5World5printEv, @function
_ZN5World5printEv:
.LFB1044:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$400, %edi
	call	_Z6sleepdj
	movl	$.LC10, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -16(%rbp)
	jmp	.L141
.L142:
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -16(%rbp)
.L141:
	cmpl	$9, -16(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L142
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -12(%rbp)
	jmp	.L143
.L160:
	movl	$0, -8(%rbp)
	jmp	.L144
.L156:
	cmpl	$0, -8(%rbp)
	jne	.L145
	movl	$.LC12, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L145:
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L146
	movl	$0, %ecx
	movl	$_ZTI9ConsumerI, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L146
	movl	$1, %eax
	jmp	.L147
.L146:
	movl	$0, %eax
.L147:
	testb	%al, %al
	je	.L148
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L149
.L148:
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L150
	movl	$0, %ecx
	movl	$_ZTI10ConsumerII, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L150
	movl	$1, %eax
	jmp	.L151
.L150:
	movl	$0, %eax
.L151:
	testb	%al, %al
	je	.L152
	movl	$.LC14, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L149
.L152:
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.L153
	movl	$0, %ecx
	movl	$_ZTI7Vegetal, %edx
	movl	$_ZTI4Life, %esi
	movq	%rax, %rdi
	call	__dynamic_cast
	testq	%rax, %rax
	je	.L153
	movl	$1, %eax
	jmp	.L154
.L153:
	movl	$0, %eax
.L154:
	testb	%al, %al
	je	.L155
	movl	$.LC15, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L149
.L155:
	movl	$.LC16, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L149:
	addl	$1, -8(%rbp)
.L144:
	cmpl	$9, -8(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L156
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -4(%rbp)
	jmp	.L157
.L159:
	cmpl	$0, -4(%rbp)
	jne	.L158
	movl	$.LC17, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L158:
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -4(%rbp)
.L157:
	cmpl	$9, -4(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L159
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -12(%rbp)
.L143:
	cmpl	$9, -12(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L160
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1044:
	.size	_ZN5World5printEv, .-_ZN5World5printEv
	.align 2
	.globl	_ZN5World7maximumEii
	.type	_ZN5World7maximumEii, @function
_ZN5World7maximumEii:
.LFB1045:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L162
	movl	-12(%rbp), %eax
	jmp	.L163
.L162:
	movl	-16(%rbp), %eax
.L163:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1045:
	.size	_ZN5World7maximumEii, .-_ZN5World7maximumEii
	.align 2
	.globl	_ZN5World6moduloEii
	.type	_ZN5World6moduloEii, @function
_ZN5World6moduloEii:
.LFB1046:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L165
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-32(%rbp)
	movl	%edx, -4(%rbp)
	jmp	.L166
.L165:
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %edx
	leal	(%rdx,%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5World6moduloEii
	movl	%eax, -4(%rbp)
.L166:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1046:
	.size	_ZN5World6moduloEii, .-_ZN5World6moduloEii
	.section	.rodata
	.align 8
.LC18:
	.string	"\n7th param\t[pathToConsumerI]\n8th param\t[consumer2]"
	.align 8
.LC19:
	.string	"[NumberOfC2AtTheBeginning]<<\n6th param\t[pathToVegetal.txt]"
	.align 8
.LC20:
	.string	"[NumberOfC1AtTheBeginning]\n5th param\t"
	.align 8
.LC21:
	.string	"3rd param\t[maxNumberOfStepsInSimulation]\n4th param\t"
	.align 8
.LC22:
	.string	"\n\n1st Param\t[height]\n2nd param\t[width]\n"
	.align 8
.LC23:
	.string	"World [int] [int] [int] [int] [int] [char*] [char*] [char*]"
	.align 8
.LC24:
	.string	"Recall World with 8 parameters like \n"
.LC25:
	.string	"Missing arguments.\n"
.LC26:
	.string	"Wrong arguments.\n"
	.align 8
.LC27:
	.string	"file does not exist or is a directory"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1047:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1047
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$336, %rsp
	movl	%edi, -340(%rbp)
	movq	%rsi, -352(%rbp)
	leaq	-22(%rbp), %rax
	movq	%rax, %rdi
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	_ZNSaIcEC1Ev
	leaq	-22(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE34:
	leaq	-23(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-23(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE35:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-24(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
.LEHB36:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE36:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-25(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
.LEHB37:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE37:
	leaq	-26(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-26(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE38:
	leaq	-27(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-27(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
.LEHB39:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE39:
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-28(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
.LEHB40:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE40:
	leaq	-288(%rbp), %rax
	leaq	-304(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB41:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE41:
	leaq	-256(%rbp), %rax
	leaq	-272(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB42:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE42:
	leaq	-224(%rbp), %rax
	leaq	-240(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB43:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE43:
	leaq	-192(%rbp), %rax
	leaq	-208(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB44:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE44:
	leaq	-160(%rbp), %rax
	leaq	-176(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB45:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE45:
	leaq	-336(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB46:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE46:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
.LEHB47:
	call	_ZNSsD1Ev
.LEHE47:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
.LEHB48:
	call	_ZNSsD1Ev
.LEHE48:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
.LEHB49:
	call	_ZNSsD1Ev
.LEHE49:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
.LEHB50:
	call	_ZNSsD1Ev
.LEHE50:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
.LEHB51:
	call	_ZNSsD1Ev
.LEHE51:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
.LEHB52:
	call	_ZNSsD1Ev
.LEHE52:
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
.LEHB53:
	call	_ZNSsD1Ev
.LEHE53:
	leaq	-27(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
.LEHB54:
	call	_ZNSsD1Ev
.LEHE54:
	leaq	-26(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
.LEHB55:
	call	_ZNSsD1Ev
.LEHE55:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
.LEHB56:
	call	_ZNSsD1Ev
.LEHE56:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
.LEHB57:
	call	_ZNSsD1Ev
.LEHE57:
	leaq	-23(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
.LEHB58:
	call	_ZNSsD1Ev
.LEHE58:
	leaq	-22(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	cmpl	$9, -340(%rbp)
	je	.L168
	movl	$.LC25, %esi
	movl	$_ZSt4cout, %edi
.LEHB59:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
.LEHE59:
	movl	$-1, %ebx
	jmp	.L169
.L168:
	leaq	-21(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-21(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB60:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE60:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
.LEHB61:
	call	_ZNKSs5c_strEv
.LEHE61:
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -48(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
.LEHB62:
	call	_ZNSsD1Ev
.LEHE62:
	leaq	-21(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB63:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE63:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB64:
	call	_ZNKSs5c_strEv
.LEHE64:
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -44(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB65:
	call	_ZNSsD1Ev
.LEHE65:
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-19(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-19(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB66:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE66:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
.LEHB67:
	call	_ZNKSs5c_strEv
.LEHE67:
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -40(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
.LEHB68:
	call	_ZNSsD1Ev
.LEHE68:
	leaq	-19(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-18(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB69:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE69:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB70:
	call	_ZNKSs5c_strEv
.LEHE70:
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -36(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB71:
	call	_ZNSsD1Ev
.LEHE71:
	leaq	-18(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-17(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB72:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE72:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB73:
	call	_ZNKSs5c_strEv
.LEHE73:
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -32(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB74:
	call	_ZNSsD1Ev
.LEHE74:
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	cmpl	$0, -48(%rbp)
	jle	.L170
	cmpl	$0, -44(%rbp)
	jle	.L170
	cmpl	$0, -40(%rbp)
	jle	.L170
	cmpl	$0, -36(%rbp)
	jle	.L170
	cmpl	$0, -32(%rbp)
	jg	.L171
.L170:
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
.LEHB75:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movl	$-1, %ebx
	jmp	.L169
.L171:
	movq	-352(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z7is_filePKc
	xorl	$1, %eax
	testb	%al, %al
	jne	.L172
	movq	-352(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z7is_filePKc
	xorl	$1, %eax
	testb	%al, %al
	jne	.L172
	movq	-352(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z7is_filePKc
	xorl	$1, %eax
	testb	%al, %al
	je	.L173
.L172:
	movl	$1, %eax
	jmp	.L174
.L173:
	movl	$0, %eax
.L174:
	testb	%al, %al
	je	.L175
	movq	-352(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rbx
	movl	$.LC27, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ebx
	jmp	.L169
.L175:
	movl	$816, %edi
	call	_Znwm
.LEHE75:
	movq	%rax, %rbx
	movq	%rbx, %rdi
.LEHB76:
	call	_ZN5WorldC1Ev
.LEHE76:
	movl	$0, %ebx
.L169:
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
.LEHB77:
	call	_ZNSsD1Ev
.LEHE77:
	movl	%ebx, %eax
	addq	$336, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L225:
	.cfi_restore_state
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L177
.L226:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L177
.L224:
	movq	%rax, %rbx
.L177:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L179
.L227:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L179
.L223:
	movq	%rax, %rbx
.L179:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L181
.L228:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L181
.L222:
	movq	%rax, %rbx
.L181:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L183
.L229:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L183
.L221:
	movq	%rax, %rbx
.L183:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L185
.L230:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L185
.L220:
	movq	%rax, %rbx
.L185:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L187
.L231:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L187
.L219:
	movq	%rax, %rbx
.L187:
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L189
.L232:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L189
.L218:
	movq	%rax, %rbx
.L189:
	leaq	-27(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L191
.L233:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L191
.L217:
	movq	%rax, %rbx
.L191:
	leaq	-26(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L193
.L234:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L193
.L216:
	movq	%rax, %rbx
.L193:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L195
.L235:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L195
.L215:
	movq	%rax, %rbx
.L195:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L197
.L236:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L197
.L214:
	movq	%rax, %rbx
.L197:
	leaq	-23(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L199
.L237:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L199
.L213:
	movq	%rax, %rbx
.L199:
	leaq	-22(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB78:
	call	_Unwind_Resume
.LEHE78:
.L240:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L202
.L239:
	movq	%rax, %rbx
.L202:
	leaq	-21(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L203
.L242:
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L205
.L241:
	movq	%rax, %rbx
.L205:
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L203
.L244:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L207
.L243:
	movq	%rax, %rbx
.L207:
	leaq	-19(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L203
.L246:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L209
.L245:
	movq	%rax, %rbx
.L209:
	leaq	-18(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L203
.L248:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L211
.L247:
	movq	%rax, %rbx
.L211:
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L203
.L249:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rbx
	jmp	.L203
.L238:
	movq	%rax, %rbx
.L203:
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB79:
	call	_Unwind_Resume
.LEHE79:
	.cfi_endproc
.LFE1047:
	.section	.gcc_except_table
.LLSDA1047:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1047-.LLSDACSB1047
.LLSDACSB1047:
	.uleb128 .LEHB34-.LFB1047
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L213-.LFB1047
	.uleb128 0
	.uleb128 .LEHB35-.LFB1047
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L214-.LFB1047
	.uleb128 0
	.uleb128 .LEHB36-.LFB1047
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L215-.LFB1047
	.uleb128 0
	.uleb128 .LEHB37-.LFB1047
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L216-.LFB1047
	.uleb128 0
	.uleb128 .LEHB38-.LFB1047
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L217-.LFB1047
	.uleb128 0
	.uleb128 .LEHB39-.LFB1047
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L218-.LFB1047
	.uleb128 0
	.uleb128 .LEHB40-.LFB1047
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L219-.LFB1047
	.uleb128 0
	.uleb128 .LEHB41-.LFB1047
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L220-.LFB1047
	.uleb128 0
	.uleb128 .LEHB42-.LFB1047
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L221-.LFB1047
	.uleb128 0
	.uleb128 .LEHB43-.LFB1047
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L222-.LFB1047
	.uleb128 0
	.uleb128 .LEHB44-.LFB1047
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L223-.LFB1047
	.uleb128 0
	.uleb128 .LEHB45-.LFB1047
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L224-.LFB1047
	.uleb128 0
	.uleb128 .LEHB46-.LFB1047
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L225-.LFB1047
	.uleb128 0
	.uleb128 .LEHB47-.LFB1047
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L226-.LFB1047
	.uleb128 0
	.uleb128 .LEHB48-.LFB1047
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L227-.LFB1047
	.uleb128 0
	.uleb128 .LEHB49-.LFB1047
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L228-.LFB1047
	.uleb128 0
	.uleb128 .LEHB50-.LFB1047
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L229-.LFB1047
	.uleb128 0
	.uleb128 .LEHB51-.LFB1047
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L230-.LFB1047
	.uleb128 0
	.uleb128 .LEHB52-.LFB1047
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L231-.LFB1047
	.uleb128 0
	.uleb128 .LEHB53-.LFB1047
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L232-.LFB1047
	.uleb128 0
	.uleb128 .LEHB54-.LFB1047
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L233-.LFB1047
	.uleb128 0
	.uleb128 .LEHB55-.LFB1047
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L234-.LFB1047
	.uleb128 0
	.uleb128 .LEHB56-.LFB1047
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L235-.LFB1047
	.uleb128 0
	.uleb128 .LEHB57-.LFB1047
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L236-.LFB1047
	.uleb128 0
	.uleb128 .LEHB58-.LFB1047
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L237-.LFB1047
	.uleb128 0
	.uleb128 .LEHB59-.LFB1047
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L238-.LFB1047
	.uleb128 0
	.uleb128 .LEHB60-.LFB1047
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L239-.LFB1047
	.uleb128 0
	.uleb128 .LEHB61-.LFB1047
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L240-.LFB1047
	.uleb128 0
	.uleb128 .LEHB62-.LFB1047
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L239-.LFB1047
	.uleb128 0
	.uleb128 .LEHB63-.LFB1047
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L241-.LFB1047
	.uleb128 0
	.uleb128 .LEHB64-.LFB1047
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L242-.LFB1047
	.uleb128 0
	.uleb128 .LEHB65-.LFB1047
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L241-.LFB1047
	.uleb128 0
	.uleb128 .LEHB66-.LFB1047
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L243-.LFB1047
	.uleb128 0
	.uleb128 .LEHB67-.LFB1047
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L244-.LFB1047
	.uleb128 0
	.uleb128 .LEHB68-.LFB1047
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L243-.LFB1047
	.uleb128 0
	.uleb128 .LEHB69-.LFB1047
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L245-.LFB1047
	.uleb128 0
	.uleb128 .LEHB70-.LFB1047
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L246-.LFB1047
	.uleb128 0
	.uleb128 .LEHB71-.LFB1047
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L245-.LFB1047
	.uleb128 0
	.uleb128 .LEHB72-.LFB1047
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L247-.LFB1047
	.uleb128 0
	.uleb128 .LEHB73-.LFB1047
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L248-.LFB1047
	.uleb128 0
	.uleb128 .LEHB74-.LFB1047
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L247-.LFB1047
	.uleb128 0
	.uleb128 .LEHB75-.LFB1047
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L238-.LFB1047
	.uleb128 0
	.uleb128 .LEHB76-.LFB1047
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L249-.LFB1047
	.uleb128 0
	.uleb128 .LEHB77-.LFB1047
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB1047
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB1047
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSE1047:
	.text
	.size	main, .-main
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, @function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_:
.LFB1065:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1065
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB80:
	.cfi_offset 3, -24
	call	_ZNSsC1ERKSs
.LEHE80:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB81:
	call	_ZNSs6appendERKSs
.LEHE81:
	jmp	.L253
.L252:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB82:
	call	_Unwind_Resume
.LEHE82:
.L253:
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1065:
	.section	.gcc_except_table
.LLSDA1065:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1065-.LLSDACSB1065
.LLSDACSB1065:
	.uleb128 .LEHB80-.LFB1065
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB1065
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L252-.LFB1065
	.uleb128 0
	.uleb128 .LEHB82-.LFB1065
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
.LLSDACSE1065:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1093:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L254
	cmpl	$65535, -8(%rbp)
	jne	.L254
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movq	%rax, %rdi
	call	__cxa_atexit
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1093:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN5WorldC2Ev, @function
_GLOBAL__sub_I__ZN5WorldC2Ev:
.LFB1094:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1094:
	.size	_GLOBAL__sub_I__ZN5WorldC2Ev, .-_GLOBAL__sub_I__ZN5WorldC2Ev
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__ZN5WorldC2Ev
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL22__gthrw_pthread_cancelm
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
	.globl	_ZN5WorldC1Ev
	.set	_ZN5WorldC1Ev,_ZN5WorldC2Ev
	.weak	_ZN4LifeC1ERKS_
	.set	_ZN4LifeC1ERKS_,_ZN4LifeC2ERKS_
	.weak	_ZN8CreatureC1ERKS_
	.set	_ZN8CreatureC1ERKS_,_ZN8CreatureC2ERKS_
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
