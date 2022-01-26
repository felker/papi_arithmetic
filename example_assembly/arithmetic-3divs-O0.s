	.file	"arithmetic.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC3:
	.string	"divide"
.LC4:
	.string	"c = %lf\n"
.LC5:
	.string	"d = %lf\n"
.LC6:
	.string	"e = %lf\n"
.LC7:
	.string	"multiply"
.LC8:
	.string	"add"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR [rbp-8], xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR [rbp-16], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR [rbp-24], xmm0
	mov	edi, OFFSET FLAT:.LC3
	call	PAPI_hl_region_begin
	mov	DWORD PTR [rbp-28], eax
	movsd	xmm0, QWORD PTR [rbp-8]
	divsd	xmm0, QWORD PTR [rbp-16]
	movsd	QWORD PTR [rbp-40], xmm0
	movsd	xmm0, QWORD PTR [rbp-24]
	divsd	xmm0, QWORD PTR [rbp-16]
	movsd	QWORD PTR [rbp-48], xmm0
	movsd	xmm0, QWORD PTR [rbp-8]
	divsd	xmm0, QWORD PTR [rbp-24]
	movsd	QWORD PTR [rbp-56], xmm0
	mov	edi, OFFSET FLAT:.LC3
	call	PAPI_hl_region_end
	mov	DWORD PTR [rbp-28], eax
	movsd	xmm0, QWORD PTR [rbp-40]
	mov	edi, OFFSET FLAT:.LC4
	mov	eax, 1
	call	printf
	movsd	xmm0, QWORD PTR [rbp-48]
	mov	edi, OFFSET FLAT:.LC5
	mov	eax, 1
	call	printf
	movsd	xmm0, QWORD PTR [rbp-56]
	mov	edi, OFFSET FLAT:.LC6
	mov	eax, 1
	call	printf
	mov	edi, OFFSET FLAT:.LC7
	call	PAPI_hl_region_begin
	mov	DWORD PTR [rbp-28], eax
	movsd	xmm0, QWORD PTR [rbp-8]
	mulsd	xmm0, QWORD PTR [rbp-16]
	movsd	QWORD PTR [rbp-40], xmm0
	movsd	xmm0, QWORD PTR [rbp-40]
	mulsd	xmm0, QWORD PTR [rbp-16]
	movsd	QWORD PTR [rbp-40], xmm0
	mov	edi, OFFSET FLAT:.LC7
	call	PAPI_hl_region_end
	mov	DWORD PTR [rbp-28], eax
	movsd	xmm0, QWORD PTR [rbp-40]
	mov	edi, OFFSET FLAT:.LC4
	mov	eax, 1
	call	printf
	mov	edi, OFFSET FLAT:.LC8
	call	PAPI_hl_region_begin
	mov	DWORD PTR [rbp-28], eax
	movsd	xmm0, QWORD PTR [rbp-8]
	addsd	xmm0, QWORD PTR [rbp-16]
	movsd	QWORD PTR [rbp-40], xmm0
	movsd	xmm0, QWORD PTR [rbp-40]
	addsd	xmm0, QWORD PTR [rbp-8]
	movsd	QWORD PTR [rbp-40], xmm0
	mov	edi, OFFSET FLAT:.LC8
	call	PAPI_hl_region_end
	mov	DWORD PTR [rbp-28], eax
	movsd	xmm0, QWORD PTR [rbp-40]
	mov	edi, OFFSET FLAT:.LC4
	mov	eax, 1
	call	printf
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC9:
	.string	"PAPI error %d: %s\n"
	.text
	.globl	handle_error
	.type	handle_error, @function
handle_error:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR [rbp-4], edi
	mov	eax, DWORD PTR [rbp-4]
	mov	edi, eax
	call	PAPI_strerror
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-4]
	mov	esi, eax
	mov	edi, OFFSET FLAT:.LC9
	mov	eax, 0
	call	printf
	mov	edi, 1
	call	exit
	.cfi_endproc
.LFE7:
	.size	handle_error, .-handle_error
	.section	.rodata
	.align 8
.LC0:
	.long	3931505689
	.long	1096916724
	.align 8
.LC1:
	.long	3917010174
	.long	1091343448
	.align 8
.LC2:
	.long	1168231105
	.long	1088083654
	.ident	"GCC: (GNU) 8.4.1 20200928 (Red Hat 8.4.1-1)"
	.section	.note.GNU-stack,"",@progbits
