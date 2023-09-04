	.align 16
block_256:
    movq free_ptr(%rip), %r11
    addq $16, free_ptr(%rip)
    movq $2, 0(%r11)
    movq %r11, %rcx
    movq %rcx, %rsi
    movq %rsi, %r11
    movq %rdx, 8(%r11)
    movq %rsi, %rcx
    movq %rcx, %r11
    movq 8(%r11), %rcx
    movq %rcx, %rdi
    movq %r10, -4264(%rbp)
    movq %rcx, -4272(%rbp)
    movq %rsi, -4280(%rbp)
    movq %r9, -4288(%rbp)
    movq %r8, -4296(%rbp)
    movq %rdx, -4304(%rbp)
    callq print_int
    movq -4264(%rbp), %r10
    movq -4272(%rbp), %rcx
    movq -4280(%rbp), %rsi
    movq -4288(%rbp), %r9
    movq -4296(%rbp), %r8
    movq -4304(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_257:
    movq %r15, %rdi
    movq $16, %rsi
    movq %rcx, 0(%r15)
    movq %rsi, -8(%r15)
    movq %rcx, -16(%r15)
    movq %r10, -4264(%rbp)
    movq %rcx, -4272(%rbp)
    movq %rsi, -4280(%rbp)
    movq %r9, -4288(%rbp)
    movq %r8, -4296(%rbp)
    movq %rdx, -4304(%rbp)
    callq collect
    movq -4264(%rbp), %r10
    movq -4272(%rbp), %rcx
    movq -4280(%rbp), %rsi
    movq -4288(%rbp), %r9
    movq -4296(%rbp), %r8
    movq -4304(%rbp), %rdx
    jmp block_256

	.align 16
start:
    movq $42, %rdx
    movq free_ptr(%rip), %rcx
    addq $16, %rcx
    cmpq fromspace_end(%rip), %rcx
    jl block_256
    jmp block_257

	.align 16
conclusion:
    addq $4336, %rsp
    subq $24, %r15
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $4336, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    movq $0, 0(%r15)
    movq $0, 8(%r15)
    movq $0, 16(%r15)
    addq $24, %r15
    jmp start


