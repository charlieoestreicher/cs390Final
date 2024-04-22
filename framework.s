	.file	"framework.c"
	.intel_syntax noprefix
	.text
	.globl	data
	.data
	.align 16
	.type	data, @object
	.size	data, 28
data:
	.string	"\004\033\002\025@\003\037C\006\033\002FK\036\017"
	.string	"\033JR\026b/>F/d{"
	.globl	forhash
	.align 16
	.type	forhash, @object
	.size	forhash, 30
forhash:
	.string	"asdlkf\177|Ev"
	.ascii	"\n\003jnbz.m/.83*&32;A."
	.section	.rodata
	.align 8
.LC0:
	.string	"please enter a single string as a password. The correct output is a valid link."
.LC1:
	.string	"Incorrect password!"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 64
	mov	DWORD PTR -68[rbp], edi
	mov	QWORD PTR -80[rbp], rsi
	cmp	DWORD PTR -68[rbp], 2
	je	.L2
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 1
	jmp	.L10
.L2:
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	lea	rdx, -56[rbp]
	lea	rcx, -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	cantaloupe
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	mov	edi, eax
	call	srand@PLT
	movzx	eax, BYTE PTR data[rip+4]
	movsx	r12d, al
	movzx	eax, BYTE PTR data[rip+26]
	movsx	ebx, al
	call	rand@PLT
	mov	edx, r12d
	mov	esi, ebx
	mov	edi, eax
	call	fickleberry
	mov	DWORD PTR -40[rbp], eax
	mov eax, 135
	shl eax, 27
	shr eax, 27
	mov dword ptr [rbp - 20], eax
	cmp	DWORD PTR -40[rbp], -29
	jl	.L4
	cmp	DWORD PTR -40[rbp], 4
	jg	.L4
	call	rand@PLT
	mov	edx, 5
	mov	esi, 30
	mov	edi, eax
	call	fickleberry
	mov	edx, eax
	mov	ecx, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	gourd
	mov	DWORD PTR -20[rbp], eax
.L4:
	cmp	DWORD PTR -40[rbp], 55
	jg	.L5
	cmp	DWORD PTR -40[rbp], -55
	jl	.L5
	call	rand@PLT
	mov	edx, 10
	mov	esi, 40
	mov	edi, eax
	call	fickleberry
	mov	edx, eax
	mov	ecx, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	gourd
	mov	DWORD PTR -20[rbp], eax
.L5:
	cmp	DWORD PTR -40[rbp], 200
	jle	.L6
	call	rand@PLT
	mov	edx, 20
	mov	esi, 20
	mov	edi, eax
	call	fickleberry
	mov	edx, eax
	mov	ecx, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	gourd
	mov	DWORD PTR -20[rbp], eax
.L6:
	cmp	DWORD PTR -40[rbp], -200
	jge	.L7
	call	rand@PLT
	mov	edx, 10
	mov	esi, 30
	mov	edi, eax
	call	fickleberry
	mov	edx, eax
	mov	ecx, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	gourd
	mov	DWORD PTR -20[rbp], eax
.L7:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	durian
	mov	ecx, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	gourd
	mov	DWORD PTR -44[rbp], ebx
	mov	DWORD PTR -48[rbp], eax
	cmp	DWORD PTR -44[rbp], 1
	jne	.L8
	cmp	DWORD PTR -48[rbp], 0
	jne	.L9
.L8:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -20[rbp]
	sal	eax, 2
	lea	edx, -1[rax]
	mov	esi, DWORD PTR -52[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	ecx, edx
	lea	rdx, data[rip]
	mov	rdi, rax
	call	banana
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -52[rbp], eax
	lea	rax, data[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
.L10:
	add	rsp, 64
	pop	rbx
	pop	r12
	pop	rbp
	ret
	.size	main, .-main
	.globl	banana
	.type	banana, @function
banana:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -32[rbp], ecx
	mov	DWORD PTR -4[rbp], 1
	jmp	.L12
.L20:
	cmp	DWORD PTR -4[rbp], 4
	je	.L13
	cmp	DWORD PTR -4[rbp], 4
	jg	.L12
	cmp	DWORD PTR -4[rbp], 3
	je	.L14
	cmp	DWORD PTR -4[rbp], 3
	jg	.L12
	cmp	DWORD PTR -4[rbp], 1
	je	.L15
	cmp	DWORD PTR -4[rbp], 2
	je	.L16
	jmp	.L12
.L15:
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 2
	jmp	.L12
.L16:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jge	.L17
	mov	DWORD PTR -4[rbp], 3
	jmp	.L12
.L17:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
.L14:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	ecx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rsi
	xor	edx, ecx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -4[rbp], 4
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L19
	mov	DWORD PTR -12[rbp], 0
.L19:
	mov	DWORD PTR -4[rbp], 2
	nop
.L12:
	cmp	DWORD PTR -4[rbp], 0
	jne	.L20
	mov	rax, QWORD PTR -24[rbp]
	pop	rbp
	ret
	.size	banana, .-banana
	.globl	cantaloupe
	.type	cantaloupe, @function
cantaloupe:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L23
.L24:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sal	eax, 2
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
.L23:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L24
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 5
	pop	rbp
	ret
	.size	cantaloupe, .-cantaloupe
	.globl	durian
	.type	durian, @function
durian:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 4
	jmp	.L27
.L33:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	sub	eax, 48
	mov	BYTE PTR -21[rbp], al
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 47
	jle	.L27
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 63
	jg	.L27
	cmp	DWORD PTR -4[rbp], 2
	jle	.L28
	cmp	DWORD PTR -4[rbp], 7
	jle	.L29
.L28:
	mov	eax, -1
	jmp	.L30
.L29:
	movsx	eax, BYTE PTR -21[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, edx
	mov	DWORD PTR -8[rbp], eax
	movsx	eax, BYTE PTR -21[rbp]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -16[rbp], 1
	movzx	edx, BYTE PTR -21[rbp]
	mov	ecx, 86
	mov	eax, ecx
	imul	dl
	shr	ax, 8
	mov	ecx, edx
	sar	cl, 7
	sub	eax, ecx
	mov	ecx, eax
	add	ecx, ecx
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	test	al, al
	je	.L31
	mov	eax, -1
	jmp	.L30
.L31:
	cmp	DWORD PTR -16[rbp], 2
	jne	.L32
	movsx	eax, BYTE PTR -21[rbp]
	cdq
	idiv	DWORD PTR -20[rbp]
	cmp	eax, 3
	je	.L32
	mov	eax, -1
	jmp	.L30
.L32:
	movsx	eax, BYTE PTR -21[rbp]
	mov	DWORD PTR -20[rbp], eax
.L27:
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L33
	cmp	DWORD PTR -16[rbp], 3
	je	.L34
	cmp	DWORD PTR -8[rbp], 40
	je	.L34
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cmp	eax, 28
	je	.L34
	mov	eax, -1
	jmp	.L30
.L34:
	mov	eax, 1
.L30:
	pop	rbp
	call elderberry
	add	DWORD PTR [rsp], 17
	ret
	.size	durian, .-durian
	.globl	fickleberry
	.type	fickleberry, @function
fickleberry:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	DWORD PTR -12[rbp], edx
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], edx
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	add	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jns	.L36
	mov	eax, DWORD PTR -12[rbp]
	sub	DWORD PTR -4[rbp], eax
	jmp	.L37
.L36:
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -4[rbp], eax
.L37:
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	fickleberry, .-fickleberry
	.section	.rodata
.LC2:
	.string	"Gourd called!!! Congrats!! JK"
	.text
	.globl	gourd
	.type	gourd, @function
gourd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	DWORD PTR -4[rbp], 39
	mov	DWORD PTR -8[rbp], 0
	jmp	.L40
.L41:
	mov	eax, DWORD PTR -32[rbp]
	imul	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	xor	edx, esi
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L40:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L41
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
	.size	gourd, .-gourd
	.globl	elderberry
	.type	elderberry, @function
elderberry:
	push rax
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	lea	rax, -26[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L44
.L46:
	call	__ctype_b_loc@PLT
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rax
	add	rax, rdx
	movzx	eax, WORD PTR [rax]
	movzx	eax, ax
	and	eax, 2048
	test	eax, eax
	jne	.L45
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	sub	eax, 16
	xor	eax, 35
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	BYTE PTR -26[rbp+rax], dl
	add	DWORD PTR -4[rbp], 1
.L45:
	add	DWORD PTR -8[rbp], 1
.L44:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L46
	lea	rax, -26[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rax, 4
	je	.L47
	mov	eax, 0
	jmp	.L52
.L47:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L49
.L51:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	edx, BYTE PTR -26[rbp+rax]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 6
	cdqe
	lea	rcx, forhash[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	je	.L50
	mov	eax, 0
	jmp	.L52
.L50:
	add	DWORD PTR -12[rbp], 1
.L49:
	cmp	DWORD PTR -12[rbp], 3
	jle	.L51
	mov	eax, 1
.L52:
	leave
	mov rbx, rax
	pop rax
	ret
	.size	elderberry, .-elderberry
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
