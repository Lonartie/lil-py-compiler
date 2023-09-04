	.align 16
block_291:
    movq %rcx, %rdi
    movq %r10, -4424(%rbp)
    movq %rcx, -4432(%rbp)
    movq %rsi, -4440(%rbp)
    movq %r9, -4448(%rbp)
    movq %r8, -4456(%rbp)
    movq %rdx, -4464(%rbp)
    callq print_int
    movq -4424(%rbp), %r10
    movq -4432(%rbp), %rcx
    movq -4440(%rbp), %rsi
    movq -4448(%rbp), %r9
    movq -4456(%rbp), %r8
    movq -4464(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_292:
    movq $42, %rcx
    jmp block_291

	.align 16
block_293:
    movq $0, %rcx
    jmp block_291

	.align 16
block_294:
    cmpq %rcx, %rdx
    sete %al
    movzbq %al, %rcx
    cmpq $0, %rcx
    je block_292
    jmp block_293

	.align 16
block_295:
    movq free_ptr(%rip), %r11
    addq $24, free_ptr(%rip)
    movq $4, 0(%r11)
    movq %r11, %rcx
    movq %rcx, %r11
    movq %r8, 8(%r11)
    movq %rcx, %r11
    movq %rsi, 16(%r11)
    cmpq %rdx, %rdx
    je block_294
    jmp block_293

	.align 16
block_296:
    movq %r15, %rdi
    movq $24, %rsi
    movq %rdx, 0(%r15)
    movq %rdx, -8(%r15)
    movq %rcx, -16(%r15)
    movq %rsi, -24(%r15)
    movq %rcx, -32(%r15)
    movq %rcx, -40(%r15)
    movq %rsi, -48(%r15)
    movq %r10, -4424(%rbp)
    movq %rcx, -4432(%rbp)
    movq %rsi, -4440(%rbp)
    movq %r9, -4448(%rbp)
    movq %r8, -4456(%rbp)
    movq %rdx, -4464(%rbp)
    callq collect
    movq -4424(%rbp), %r10
    movq -4432(%rbp), %rcx
    movq -4440(%rbp), %rsi
    movq -4448(%rbp), %r9
    movq -4456(%rbp), %r8
    movq -4464(%rbp), %rdx
    jmp block_295

	.align 16
block_297:
    movq free_ptr(%rip), %r11
    addq $24, free_ptr(%rip)
    movq $4, 0(%r11)
    movq %r11, %rsi
    movq %rsi, %r11
    movq %rdx, 8(%r11)
    movq %rsi, %r11
    movq %rcx, 16(%r11)
    movq %rsi, %rdx
    movq $3, %r8
    movq $7, %rsi
    movq free_ptr(%rip), %rcx
    addq $24, %rcx
    cmpq fromspace_end(%rip), %rcx
    jl block_295
    jmp block_296

	.align 16
block_298:
    movq %r15, %rdi
    movq $24, %rsi
    movq %rdx, 0(%r15)
    movq %rdx, -8(%r15)
    movq %rcx, -16(%r15)
    movq %rsi, -24(%r15)
    movq %rcx, -32(%r15)
    movq %rcx, -40(%r15)
    movq %rsi, -48(%r15)
    movq %r10, -4424(%rbp)
    movq %rcx, -4432(%rbp)
    movq %rsi, -4440(%rbp)
    movq %r9, -4448(%rbp)
    movq %r8, -4456(%rbp)
    movq %rdx, -4464(%rbp)
    callq collect
    movq -4424(%rbp), %r10
    movq -4432(%rbp), %rcx
    movq -4440(%rbp), %rsi
    movq -4448(%rbp), %r9
    movq -4456(%rbp), %r8
    movq -4464(%rbp), %rdx
    jmp block_297

	.align 16
start:
    movq $3, %rdx
    movq $7, %rcx
    movq free_ptr(%rip), %rsi
    addq $24, %rsi
    cmpq fromspace_end(%rip), %rsi
    jl block_297
    jmp block_298

	.align 16
conclusion:
    addq $4496, %rsp
    subq $56, %r15
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $4496, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    movq $0, 0(%r15)
    movq $0, 8(%r15)
    movq $0, 16(%r15)
    movq $0, 24(%r15)
    movq $0, 32(%r15)
    movq $0, 40(%r15)
    movq $0, 48(%r15)
    addq $56, %r15
    jmp start


