	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.intel_syntax noprefix
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
## %bb.0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 2
	je	LBB0_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	call	_puts
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_16
LBB0_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 32], 0
	mov	rdi, qword ptr [rbp - 24]
	lea	rsi, [rbp - 28]
	lea	rdx, [rbp - 32]
	call	_cantaloupe
	mov	dword ptr [rbp - 36], eax
	mov	edi, dword ptr [rbp - 32]
	call	_srand
	call	_rand
	mov	edi, eax
	movsx	esi, byte ptr [rip + _data+26]
	movsx	edx, byte ptr [rip + _data+4]
	call	_fickleberry
	mov	dword ptr [rbp - 40], eax
	mov eax, 135
	shl eax, 27
	shr eax, 27
	mov dword ptr [rbp - 44], eax
	cmp	dword ptr [rbp - 40], -30
	jle	LBB0_5
## %bb.3:
	cmp	dword ptr [rbp - 40], 5
	jge	LBB0_5
## %bb.4:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 64], rax       ## 8-byte Spill
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 56], eax       ## 4-byte Spill
	call	_rand
	mov	edi, eax
	mov	esi, 30
	mov	edx, 5
	call	_fickleberry
	mov	rdi, qword ptr [rbp - 64]       ## 8-byte Reload
	mov	esi, dword ptr [rbp - 56]       ## 4-byte Reload
	mov	edx, eax
	call	_gourd
	mov	dword ptr [rbp - 44], eax
LBB0_5:
	cmp	dword ptr [rbp - 40], 56
	jge	LBB0_8
## %bb.6:
	cmp	dword ptr [rbp - 40], -56
	jle	LBB0_8
## %bb.7:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 80], rax       ## 8-byte Spill
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 68], eax       ## 4-byte Spill
	call	_rand
	mov	edi, eax
	mov	esi, 40
	mov	edx, 10
	call	_fickleberry
	mov	rdi, qword ptr [rbp - 80]       ## 8-byte Reload
	mov	esi, dword ptr [rbp - 68]       ## 4-byte Reload
	mov	edx, eax
	call	_gourd
	mov	dword ptr [rbp - 44], eax
LBB0_8:
	cmp	dword ptr [rbp - 40], 200
	jle	LBB0_10
## %bb.9:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 96], rax       ## 8-byte Spill
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 84], eax       ## 4-byte Spill
	call	_rand
	mov	edi, eax
	mov	edx, 20
	mov	esi, edx
	call	_fickleberry
	mov	rdi, qword ptr [rbp - 96]       ## 8-byte Reload
	mov	esi, dword ptr [rbp - 84]       ## 4-byte Reload
	mov	edx, eax
	call	_gourd
	mov	dword ptr [rbp - 44], eax
LBB0_10:
	cmp	dword ptr [rbp - 40], -200
	jge	LBB0_12
## %bb.11:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 112], rax      ## 8-byte Spill
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 100], eax      ## 4-byte Spill
	call	_rand
	mov	edi, eax
	mov	esi, 30
	mov	edx, 10
	call	_fickleberry
	mov	rdi, qword ptr [rbp - 112]      ## 8-byte Reload
	mov	esi, dword ptr [rbp - 100]      ## 4-byte Reload
	mov	edx, eax
	call	_gourd
	mov	dword ptr [rbp - 44], eax
LBB0_12:
	mov	rdi, qword ptr [rbp - 24]
	call	_durian
	mov	dword ptr [rbp - 48], eax
	mov	rdi, qword ptr [rbp - 24]
	call	_elderberry
	mov	dword ptr [rbp - 52], eax
	cmp	dword ptr [rbp - 48], 1
	jne	LBB0_14
## %bb.13:
	cmp	dword ptr [rbp - 52], 0
	jne	LBB0_15
LBB0_14:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_16
LBB0_15:
	mov	rdi, qword ptr [rbp - 24]
	mov	esi, dword ptr [rbp - 28]
	imul	ecx, dword ptr [rbp - 44], 3
	add	ecx, dword ptr [rbp - 44]
	sub	ecx, 1
	lea	rdx, [rip + _data]
	call	_banana
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 28], eax
	lea	rdi, [rip + _data]
	call	_puts
	mov	dword ptr [rbp - 4], 0
LBB0_16:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 112
	pop	rbp
	ret
                                        ## -- End function
	.globl	_cantaloupe                     ## -- Begin function cantaloupe
	.p2align	4, 0x90
_cantaloupe:                            ## @cantaloupe
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	eax, byte ptr [rax + rcx]
	cmp	eax, 0
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	eax, byte ptr [rax + rcx]
	imul	eax, eax, 12
	add	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_1
LBB1_3:
	mov	ecx, dword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 24]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 28]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
	mov	eax, dword ptr [rbp - 28]
	add	eax, 5
	pop	rbp
	ret
                                        ## -- End function
	.globl	_fickleberry                    ## -- Begin function fickleberry
	.p2align	4, 0x90
_fickleberry:                           ## @fickleberry
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	ecx, dword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 4], edx
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 4]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	LBB2_2
## %bb.1:
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	LBB2_3
LBB2_2:
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], eax
LBB2_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
                                        ## -- End function
	.globl	_gourd                          ## -- Begin function gourd
	.p2align	4, 0x90
_gourd:                                 ## @gourd
## %bb.0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 39
	mov	dword ptr [rbp - 24], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	imul	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, dword ptr [rbp - 24]
	sub	ecx, 1
	movsxd	rcx, ecx
	movsx	eax, byte ptr [rax + rcx]
	xor	eax, dword ptr [rbp - 28]
	mov	dl, al
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	byte ptr [rax + rcx], dl
	mov	eax, dword ptr [rbp - 28]
	add	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB3_1
LBB3_4:
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 32
	pop	rbp
	ret
                                        ## -- End function
	.globl	_durian                         ## -- Begin function durian
	.p2align	4, 0x90
_durian:                                ## @durian
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 1
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 0
	mov	dword ptr [rbp - 36], 4
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 20], edx
	movsxd	rcx, ecx
	movsx	eax, byte ptr [rax + rcx]
	cmp	eax, 0
	je	LBB4_14
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	eax, byte ptr [rax + rcx]
	sub	eax, 48
                                        ## kill: def $al killed $al killed $eax
	mov	byte ptr [rbp - 37], al
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	eax, byte ptr [rax + rcx]
	cmp	eax, 48
	jl	LBB4_13
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	eax, byte ptr [rax + rcx]
	cmp	eax, 64
	jge	LBB4_13
## %bb.4:                               ##   in Loop: Header=BB4_1 Depth=1
	cmp	dword ptr [rbp - 20], 3
	jl	LBB4_6
## %bb.5:                               ##   in Loop: Header=BB4_1 Depth=1
	cmp	dword ptr [rbp - 20], 7
	jle	LBB4_7
LBB4_6:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB4_19
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	movsx	eax, byte ptr [rbp - 37]
	add	eax, 1
	imul	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 24], eax
	movsx	eax, byte ptr [rbp - 37]
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	movsx	eax, byte ptr [rbp - 37]
	mov	ecx, 3
	cdq
	idiv	ecx
	cmp	edx, 0
	je	LBB4_9
## %bb.8:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB4_19
LBB4_9:                                 ##   in Loop: Header=BB4_1 Depth=1
	cmp	dword ptr [rbp - 32], 2
	jne	LBB4_12
## %bb.10:                              ##   in Loop: Header=BB4_1 Depth=1
	movsx	eax, byte ptr [rbp - 37]
	cdq
	idiv	dword ptr [rbp - 36]
	cmp	eax, 3
	je	LBB4_12
## %bb.11:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB4_19
LBB4_12:                                ##   in Loop: Header=BB4_1 Depth=1
	movsx	eax, byte ptr [rbp - 37]
	mov	dword ptr [rbp - 36], eax
LBB4_13:                                ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_1
LBB4_14:
	cmp	dword ptr [rbp - 32], 3
	je	LBB4_18
## %bb.15:
	cmp	dword ptr [rbp - 24], 40
	je	LBB4_18
## %bb.16:
	mov	eax, dword ptr [rbp - 24]
	sub	eax, dword ptr [rbp - 28]
	cmp	eax, 28
	je	LBB4_18
## %bb.17:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB4_19
LBB4_18:
	mov	dword ptr [rbp - 4], 1
LBB4_19:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
                                        ## -- End function
	.globl	_elderberry                     ## -- Begin function elderberry
	.p2align	4, 0x90
_elderberry:                            ## @elderberry
## %bb.0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	call	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 20], eax
	lea	rdi, [rbp - 30]
	xor	esi, esi
	mov	edx, 10
	call	_memset
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], 0
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB5_6
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 40]
	movsx	edi, byte ptr [rax + rcx]
	call	_isdigit
	cmp	eax, 0
	jne	LBB5_4
## %bb.3:                               ##   in Loop: Header=BB5_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 40]
	movsx	eax, byte ptr [rax + rcx]
	sub	eax, 16
	xor	eax, 35
	mov	cl, al
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 30], cl
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
LBB5_4:                                 ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_5
LBB5_5:                                 ##   in Loop: Header=BB5_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB5_1
LBB5_6:
	lea	rdi, [rbp - 30]
	call	_strlen
	cmp	rax, 4
	je	LBB5_8
## %bb.7:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB5_15
LBB5_8:
	mov	dword ptr [rbp - 44], 0
LBB5_9:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 44], 4
	jge	LBB5_14
## %bb.10:                              ##   in Loop: Header=BB5_9 Depth=1
	movsxd	rax, dword ptr [rbp - 44]
	movsx	eax, byte ptr [rbp + rax - 30]
	mov	ecx, dword ptr [rbp - 44]
	add	ecx, 6
	movsxd	rdx, ecx
	lea	rcx, [rip + _forhash]
	movsx	ecx, byte ptr [rcx + rdx]
	cmp	eax, ecx
	je	LBB5_12
## %bb.11:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB5_15
LBB5_12:                                ##   in Loop: Header=BB5_9 Depth=1
	jmp	LBB5_13
LBB5_13:                                ##   in Loop: Header=BB5_9 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB5_9
LBB5_14:
	mov	dword ptr [rbp - 4], 1
LBB5_15:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
                                        ## -- End function
	.globl	_banana                         ## -- Begin function banana
	.p2align	4, 0x90
_banana:                                ## @banana
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 28], ecx
	mov	dword ptr [rbp - 32], 1
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 32], 0
	je	LBB6_13
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	dec	eax
	mov	ecx, eax
	mov	qword ptr [rbp - 48], rcx       ## 8-byte Spill
	sub	eax, 3
	ja	LBB6_12
## %bb.14:                              ##   in Loop: Header=BB6_1 Depth=1
	mov	rax, qword ptr [rbp - 48]       ## 8-byte Reload
	lea	rcx, [rip + LJTI6_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
LBB6_3:                                 ##   in Loop: Header=BB6_1 Depth=1
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], 0
	mov	dword ptr [rbp - 32], 2
	jmp	LBB6_12
LBB6_4:                                 ##   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB6_6
## %bb.5:                               ##   in Loop: Header=BB6_1 Depth=1
	mov	dword ptr [rbp - 32], 3
	jmp	LBB6_7
LBB6_6:                                 ##   in Loop: Header=BB6_1 Depth=1
	mov	dword ptr [rbp - 32], 0
LBB6_7:                                 ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_12
LBB6_8:                                 ##   in Loop: Header=BB6_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 36]
	movsx	eax, byte ptr [rax + rcx]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 40]
	movsx	ecx, byte ptr [rcx + rdx]
	xor	eax, ecx
	mov	dl, al
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	byte ptr [rax + rcx], dl
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	mov	dword ptr [rbp - 32], 4
	jmp	LBB6_12
LBB6_9:                                 ##   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 12]
	jl	LBB6_11
## %bb.10:                              ##   in Loop: Header=BB6_1 Depth=1
	mov	dword ptr [rbp - 40], 0
LBB6_11:                                ##   in Loop: Header=BB6_1 Depth=1
	mov	dword ptr [rbp - 32], 2
LBB6_12:                                ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_1
LBB6_13:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.p2align	2, 0x90
	.data_region jt32
.set L6_0_set_3, LBB6_3-LJTI6_0
.set L6_0_set_4, LBB6_4-LJTI6_0
.set L6_0_set_8, LBB6_8-LJTI6_0
.set L6_0_set_9, LBB6_9-LJTI6_0
LJTI6_0:
	.long	L6_0_set_3
	.long	L6_0_set_4
	.long	L6_0_set_8
	.long	L6_0_set_9
	.end_data_region
                                        ## -- End function
	.section	__DATA,__data
	.globl	_data                           ## @data
	.p2align	4, 0x0
_data:
	.asciz	"\004\033\002\025@\003\037C\006\033\002FK\036\017\000\033JR\026b/>F/d{"

	.globl	_forhash                        ## @forhash
	.p2align	4, 0x0
_forhash:
	.ascii	"asdlkf\177|Ev\000\n\003jnbz.m/.83*&32;A."

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"please enter a single string as a password"

L_.str.1:                               ## @.str.1
	.asciz	"Incorrect password!\n"

L_.str.2:                               ## @.str.2
	.asciz	"Gourd called!!! Congrats!! JK\n"

.subsections_via_symbols
