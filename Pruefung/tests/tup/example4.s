	.align 16
block_273:
    movq free_ptr(%rip), %r11
    addq $16, free_ptr(%rip)
    movq $130, 0(%r11)
    movq %r11, %rcx
    movq %rcx, %rsi
    movq %rsi, %r11
    movq %rdx, 8(%r11)
    movq %rsi, %rcx
    movq %rcx, %r11
    movq 8(%r11), %rcx
    movq %rcx, %r11
    movq 16(%r11), %rcx
    movq %rcx, %rdi
    movq %r10, -4344(%rbp)
    movq %rcx, -4352(%rbp)
    movq %rsi, -4360(%rbp)
    movq %r9, -4368(%rbp)
    movq %r8, -4376(%rbp)
    movq %rdx, -4384(%rbp)
    callq print_int
    movq -4344(%rbp), %r10
    movq -4352(%rbp), %rcx
    movq -4360(%rbp), %rsi
    movq -4368(%rbp), %r9
    movq -4376(%rbp), %r8
    movq -4384(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_274:
    movq %r15, %rdi
    movq $16, %rsi
    movq %rsi, 0(%r15)
    movq %rdx, -8(%r15)
    movq %r8, -16(%r15)
    movq %rcx, -24(%r15)
    movq %rsi, -32(%r15)
    movq %rcx, -40(%r15)
    movq %rcx, -48(%r15)
    movq %rcx, -56(%r15)
    movq %rcx, -64(%r15)
    movq %rcx, -72(%r15)
    movq %rsi, -80(%r15)
    movq %r10, -4344(%rbp)
    movq %rcx, -4352(%rbp)
    movq %rsi, -4360(%rbp)
    movq %r9, -4368(%rbp)
    movq %r8, -4376(%rbp)
    movq %rdx, -4384(%rbp)
    callq collect
    movq -4344(%rbp), %r10
    movq -4352(%rbp), %rcx
    movq -4360(%rbp), %rsi
    movq -4368(%rbp), %r9
    movq -4376(%rbp), %r8
    movq -4384(%rbp), %rdx
    jmp block_273

	.align 16
block_275:
    movq free_ptr(%rip), %r11
    addq $24, free_ptr(%rip)
    movq $132, 0(%r11)
    movq %r11, %rcx
    movq %rcx, %r8
    movq %r8, %r11
    movq %rsi, 8(%r11)
    movq %r8, %r11
    movq %rdx, 16(%r11)
    movq %r8, %rcx
    movq %rcx, %rdx
    movq free_ptr(%rip), %rcx
    addq $16, %rcx
    cmpq fromspace_end(%rip), %rcx
    jl block_273
    jmp block_274

	.align 16
block_276:
    movq %r15, %rdi
    movq $24, %rsi
    movq %rsi, 0(%r15)
    movq %rdx, -8(%r15)
    movq %r8, -16(%r15)
    movq %rcx, -24(%r15)
    movq %rsi, -32(%r15)
    movq %rcx, -40(%r15)
    movq %rcx, -48(%r15)
    movq %rcx, -56(%r15)
    movq %rcx, -64(%r15)
    movq %rcx, -72(%r15)
    movq %rsi, -80(%r15)
    movq %r10, -4344(%rbp)
    movq %rcx, -4352(%rbp)
    movq %rsi, -4360(%rbp)
    movq %r9, -4368(%rbp)
    movq %r8, -4376(%rbp)
    movq %rdx, -4384(%rbp)
    callq collect
    movq -4344(%rbp), %r10
    movq -4352(%rbp), %rcx
    movq -4360(%rbp), %rsi
    movq -4368(%rbp), %r9
    movq -4376(%rbp), %r8
    movq -4384(%rbp), %rdx
    jmp block_275

	.align 16
block_277:
    movq free_ptr(%rip), %r11
    addq $16, free_ptr(%rip)
    movq $2, 0(%r11)
    movq %r11, %rcx
    movq %rcx, %rsi
    movq %rsi, %r11
    movq %rdx, 8(%r11)
    movq $42, %rdx
    movq free_ptr(%rip), %rcx
    addq $24, %rcx
    cmpq fromspace_end(%rip), %rcx
    jl block_275
    jmp block_276

	.align 16
block_278:
    movq %r15, %rdi
    movq $16, %rsi
    movq %rsi, 0(%r15)
    movq %rdx, -8(%r15)
    movq %r8, -16(%r15)
    movq %rcx, -24(%r15)
    movq %rsi, -32(%r15)
    movq %rcx, -40(%r15)
    movq %rcx, -48(%r15)
    movq %rcx, -56(%r15)
    movq %rcx, -64(%r15)
    movq %rcx, -72(%r15)
    movq %rsi, -80(%r15)
    movq %r10, -4344(%rbp)
    movq %rcx, -4352(%rbp)
    movq %rsi, -4360(%rbp)
    movq %r9, -4368(%rbp)
    movq %r8, -4376(%rbp)
    movq %rdx, -4384(%rbp)
    callq collect
    movq -4344(%rbp), %r10
    movq -4352(%rbp), %rcx
    movq -4360(%rbp), %rsi
    movq -4368(%rbp), %r9
    movq -4376(%rbp), %r8
    movq -4384(%rbp), %rdx
    jmp block_277

	.align 16
start:
    movq $7, %rdx
    movq free_ptr(%rip), %rcx
    addq $16, %rcx
    cmpq fromspace_end(%rip), %rcx
    jl block_277
    jmp block_278

	.align 16
conclusion:
    addq $4416, %rsp
    subq $88, %r15
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $4416, %rsp
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
    movq $0, 56(%r15)
    movq $0, 64(%r15)
    movq $0, 72(%r15)
    movq $0, 80(%r15)
    addq $88, %r15
    jmp start


