	.file	"arithmetic.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"divide"
.LC2:
	.string	"c = %lf\n"
.LC4:
	.string	"d = %lf\n"
.LC6:
	.string	"e = %lf\n"
.LC7:
	.string	"multiply"
.LC9:
	.string	"add"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edi, OFFSET FLAT:.LC0
	call	PAPI_hl_region_begin
	mov	edi, OFFSET FLAT:.LC0
	call	PAPI_hl_region_end
	mov	edi, OFFSET FLAT:.LC2
	mov	eax, 1
	movsd	xmm0, QWORD PTR .LC1[rip]
	call	printf
	mov	edi, OFFSET FLAT:.LC4
	mov	eax, 1
	movsd	xmm0, QWORD PTR .LC3[rip]
	call	printf
	mov	edi, OFFSET FLAT:.LC6
	mov	eax, 1
	movsd	xmm0, QWORD PTR .LC5[rip]
	call	printf
	mov	edi, OFFSET FLAT:.LC7
	call	PAPI_hl_region_begin
	mov	edi, OFFSET FLAT:.LC7
	call	PAPI_hl_region_end
	mov	edi, OFFSET FLAT:.LC2
	mov	eax, 1
	movsd	xmm0, QWORD PTR .LC8[rip]
	call	printf
	mov	edi, OFFSET FLAT:.LC9
	call	PAPI_hl_region_begin
	mov	edi, OFFSET FLAT:.LC9
	call	PAPI_hl_region_end
	mov	edi, OFFSET FLAT:.LC2
	mov	eax, 1
	movsd	xmm0, QWORD PTR .LC10[rip]
	call	printf
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.section	.rodata.str1.1
.LC11:
	.string	"PAPI error %d: %s\n"
	.text
	.p2align 4,,15
	.globl	handle_error
	.type	handle_error, @function
handle_error:
.LFB23:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, edi
	call	PAPI_strerror
	mov	edi, OFFSET FLAT:.LC11
	mov	esi, ebx
	mov	rdx, rax
	xor	eax, eax
	call	printf
	mov	edi, 1
	call	exit
	.cfi_endproc
.LFE23:
	.size	handle_error, .-handle_error
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	242907256
	.long	1078180569
	.align 8
.LC3:
	.long	1554195504
	.long	1069419801
	.align 8
.LC5:
	.long	3407901482
	.long	1081410149
	.align 8
.LC8:
	.long	3800125016
	.long	1134304324
	.align 8
.LC10:
	.long	2619930051
	.long	1097979933
	.ident	"GCC: (GNU) 8.4.1 20200928 (Red Hat 8.4.1-1)"
	.section	.note.GNU-stack,"",@progbits
