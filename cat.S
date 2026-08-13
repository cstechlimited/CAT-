	.file	"practice.c"
	.text
	.type	syscall, @function
syscall:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r8
	movq	16(%rbp), %r9
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
#APP
# 17 "Sanne.h" 1
	syscall
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	syscall, .-syscall
	.type	write, @function
write:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	write, .-write
	.type	open, @function
open:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$2, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	open, .-open
	.type	close, @function
close:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$3, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	close, .-close
	.type	lseek, @function
lseek:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	cltq
	movq	-16(%rbp), %rdx
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$8, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	lseek, .-lseek
	.type	mmap, @function
mmap:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	pushq	-40(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$9, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mmap, .-mmap
	.type	fork, @function
fork:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$57, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fork, .-fork
	.type	execve, @function
execve:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$59, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	execve, .-execve
	.type	wait4, @function
wait4:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	pushq	$0
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$61, %edi
	call	syscall
	addq	$8, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	wait4, .-wait4
	.type	exit, @function
exit:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$60, %edi
	call	syscall
	addq	$8, %rsp
	.cfi_endproc
.LFE12:
	.size	exit, .-exit
	.section	.rodata
.LC0:
	.string	"sh"
.LC1:
	.string	"-c"
.LC2:
	.string	"/bin/sh"
	.text
	.globl	system
	.type	system, @function
system:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L21
	movl	$1, %eax
	jmp	.L20
.L21:
	call	fork
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L23
	cmpl	$0, -4(%rbp)
	jle	.L24
	movl	-4(%rbp), %eax
	cltq
	leaq	-8(%rbp), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	wait4
	testq	%rax, %rax
	js	.L24
	movl	-8(%rbp), %eax
	jmp	.L20
.L24:
	movl	$-1, %eax
	jmp	.L20
.L23:
	movq	$0, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	execve
	movl	$127, %edi
	call	exit
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	system, .-system
	.local	sayf_buf
	.comm	sayf_buf,65536,32
	.section	.data.rel.local,"aw"
	.align 8
	.type	sayf_p, @object
	.size	sayf_p, 8
sayf_p:
	.quad	sayf_buf
	.text
	.type	sayx, @function
sayx:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	sayf_p(%rip), %rax
	leaq	sayf_buf(%rip), %rdx
	cmpq	%rax, %rdx
	jnb	.L29
	movq	sayf_p(%rip), %rdx
	leaq	sayf_buf(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	leaq	sayf_buf(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	write
	leaq	sayf_buf(%rip), %rax
	movq	%rax, sayf_p(%rip)
.L29:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	sayx, .-sayx
	.type	sayX, @function
sayX:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movq	sayf_p(%rip), %rax
	leaq	sayf_buf(%rip), %rdx
	cmpq	%rax, %rdx
	jnb	.L32
	movq	sayf_p(%rip), %rdx
	leaq	sayf_buf(%rip), %rax
	subq	%rax, %rdx
	movl	-4(%rbp), %eax
	leaq	sayf_buf(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write
	leaq	sayf_buf(%rip), %rax
	movq	%rax, sayf_p(%rip)
.L32:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	sayX, .-sayX
	.type	_strlen, @function
_strlen:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L34
.L35:
	addq	$1, -8(%rbp)
.L34:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L35
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_strlen, .-_strlen
	.type	_memcpy, @function
_memcpy:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	jmp	.L38
.L39:
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L38:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -20(%rbp)
	testl	%eax, %eax
	jne	.L39
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_memcpy, .-_memcpy
	.type	_strchrnul, @function
_strchrnul:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	jmp	.L41
.L43:
	addq	$1, -8(%rbp)
.L41:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L42
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -12(%rbp)
	jne	.L43
.L42:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	_strchrnul, .-_strchrnul
	.type	_ensure_space, @function
_ensure_space:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	leaq	65536+sayf_buf(%rip), %rdx
	movq	sayf_p(%rip), %rax
	subq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L47
	call	sayx
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	_ensure_space, .-_ensure_space
	.section	.rodata
	.align 32
	.type	_digits_100, @object
	.size	_digits_100, 201
_digits_100:
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.text
	.type	fast_u64, @function
fast_u64:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	leaq	-64(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L49
.L50:
	movq	-80(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rdx
	mulq	%rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -80(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	subq	$1, -8(%rbp)
	cltq
	leaq	_digits_100(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	subq	$1, -8(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	_digits_100(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L49:
	cmpq	$99, -80(%rbp)
	ja	.L50
	cmpq	$9, -80(%rbp)
	jbe	.L51
	movq	-80(%rbp), %rax
	addl	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	subq	$1, -8(%rbp)
	cltq
	leaq	_digits_100(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	subq	$1, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	_digits_100(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L53
.L51:
	movq	-80(%rbp), %rax
	addl	$48, %eax
	subq	$1, -8(%rbp)
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L53
.L54:
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L53:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L54
	movq	-72(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	fast_u64, .-fast_u64
	.type	fast_i64, @function
fast_i64:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L57
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$45, (%rax)
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fast_u64
	jmp	.L58
.L57:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fast_u64
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	fast_i64, .-fast_i64
	.section	.rodata
.LC3:
	.string	"0123456789ABCDEF"
.LC4:
	.string	"0123456789abcdef"
	.text
	.type	fast_hex2, @function
fast_hex2:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-64(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L60
	leaq	.LC3(%rip), %rax
	jmp	.L61
.L60:
	leaq	.LC4(%rip), %rax
.L61:
	movq	%rax, -24(%rbp)
	jmp	.L62
.L63:
	movq	-80(%rbp), %rax
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	shrq	$8, -80(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, -8(%rbp)
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, -8(%rbp)
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L62:
	cmpq	$255, -80(%rbp)
	ja	.L63
	cmpq	$15, -80(%rbp)
	jbe	.L64
	movq	-80(%rbp), %rax
	andl	$15, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, -8(%rbp)
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	shrq	$4, -80(%rbp)
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, -8(%rbp)
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L66
.L64:
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, -8(%rbp)
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L66
.L67:
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L66:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L67
	movq	-72(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	fast_hex2, .-fast_hex2
	.section	.rodata
.LC5:
	.string	"(null)"
	.text
	.type	saveInBuffer, @function
saveInBuffer:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L103
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L103:
	movl	$8, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	.L71
.L101:
	movq	-232(%rbp), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	_strchrnul
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	subq	-232(%rbp), %rax
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	je	.L72
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	_ensure_space
	movq	sayf_p(%rip), %rax
	movl	-196(%rbp), %edx
	movq	-232(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	sayf_p(%rip), %rdx
	movl	-196(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, sayf_p(%rip)
	movq	-192(%rbp), %rax
	movq	%rax, -232(%rbp)
.L72:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L104
	addq	$1, -232(%rbp)
	movq	-232(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -232(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$37, %eax
	je	.L75
	cmpl	$37, %eax
	jl	.L76
	cmpl	$120, %eax
	jg	.L76
	cmpl	$88, %eax
	jl	.L76
	subl	$88, %eax
	cmpl	$32, %eax
	ja	.L76
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L78(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L78(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L78:
	.long	.L84-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L83-.L78
	.long	.L82-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L82-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L81-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L80-.L78
	.long	.L76-.L78
	.long	.L79-.L78
	.long	.L76-.L78
	.long	.L76-.L78
	.long	.L77-.L78
	.text
.L80:
	movl	-224(%rbp), %eax
	cmpl	$47, %eax
	ja	.L85
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L86
.L85:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L86:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.L87
	leaq	.LC5(%rip), %rax
	movq	%rax, -184(%rbp)
.L87:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_strlen
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, %edi
	call	_ensure_space
	movq	sayf_p(%rip), %rax
	movl	-200(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	sayf_p(%rip), %rdx
	movl	-200(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, sayf_p(%rip)
	jmp	.L71
.L83:
	movl	$1, %edi
	call	_ensure_space
	movl	-224(%rbp), %eax
	cmpl	$47, %eax
	ja	.L89
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L90
.L89:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L90:
	movl	(%rax), %ecx
	movq	sayf_p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, sayf_p(%rip)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L71
.L82:
	movl	$24, %edi
	call	_ensure_space
	movl	-224(%rbp), %eax
	cmpl	$47, %eax
	ja	.L91
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L92
.L91:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L92:
	movq	(%rax), %rdx
	movq	sayf_p(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fast_i64
	movq	%rax, sayf_p(%rip)
	jmp	.L71
.L79:
	movl	$24, %edi
	call	_ensure_space
	movl	-224(%rbp), %eax
	cmpl	$47, %eax
	ja	.L93
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L94
.L93:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L94:
	movq	(%rax), %rdx
	movq	sayf_p(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fast_u64
	movq	%rax, sayf_p(%rip)
	jmp	.L71
.L77:
	movl	$18, %edi
	call	_ensure_space
	movl	-224(%rbp), %eax
	cmpl	$47, %eax
	ja	.L95
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L96
.L95:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L96:
	movq	(%rax), %rcx
	movq	sayf_p(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fast_hex2
	movq	%rax, sayf_p(%rip)
	jmp	.L71
.L84:
	movl	$18, %edi
	call	_ensure_space
	movl	-224(%rbp), %eax
	cmpl	$47, %eax
	ja	.L97
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L98
.L97:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L98:
	movq	(%rax), %rcx
	movq	sayf_p(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fast_hex2
	movq	%rax, sayf_p(%rip)
	jmp	.L71
.L81:
	movl	$20, %edi
	call	_ensure_space
	movq	sayf_p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, sayf_p(%rip)
	movb	$48, (%rax)
	movq	sayf_p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, sayf_p(%rip)
	movb	$120, (%rax)
	movl	-224(%rbp), %eax
	cmpl	$47, %eax
	ja	.L99
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L100
.L99:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L100:
	movq	(%rax), %rax
	movq	%rax, %rcx
	movq	sayf_p(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fast_hex2
	movq	%rax, sayf_p(%rip)
	jmp	.L71
.L75:
	movl	$1, %edi
	call	_ensure_space
	movq	sayf_p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, sayf_p(%rip)
	movb	$37, (%rax)
	jmp	.L71
.L76:
	movl	$2, %edi
	call	_ensure_space
	movq	sayf_p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, sayf_p(%rip)
	movb	$37, (%rax)
	movq	-232(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	sayf_p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, sayf_p(%rip)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
.L71:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L101
	jmp	.L74
.L104:
	nop
.L74:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	saveInBuffer, .-saveInBuffer
	.section	.rodata
.LC6:
	.string	"USAGE :: Filename Missing\n"
	.align 8
.LC7:
	.string	"Sufi-->Invalid file:: %s \nerror= %d\n"
	.align 8
.LC8:
	.string	"Sufi--> File Descriptor not not seekable:: fd=%d\nIn File= %s\n"
	.text
	.type	fileOpen, @function
fileOpen:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L106
	leaq	.LC6(%rip), %rax
	jmp	.L107
.L106:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	open
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L108
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	saveInBuffer
	movl	$2, %edi
	call	sayX
	movl	$1, %edi
	call	exit
.L108:
	movl	-4(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L109
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	saveInBuffer
	movl	$2, %edi
	call	sayX
	movl	$1, %edi
	call	exit
.L109:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	movl	-4(%rbp), %eax
	movl	$0, %r9d
	movl	%eax, %r8d
	movl	$1, %ecx
	movl	$3, %edx
	movl	$0, %edi
	call	mmap
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	fileOpen, .-fileOpen
	.globl	_start
	.type	_start, @function
_start:
.LFB29:
	.cfi_startproc
	endbr64
#APP
# 22 "practice.c" 1
	xor %rbp,%rbp
	pop %rdi
	mov %rsp,%rsi
	and $-16,%rsp
	call main
	mov %eax,%edi
	mov $60,%eax
	syscall
	
# 0 "" 2
#NO_APP
	ud2
	.cfi_endproc
.LFE29:
	.size	_start, .-_start
	.section	.rodata
.LC9:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fileOpen
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	saveInBuffer
	call	sayx
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
