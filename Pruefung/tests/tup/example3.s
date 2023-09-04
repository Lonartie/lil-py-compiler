	.align 16
block_247:
    movq free_ptr(%rip), %r11
    addq $16, free_ptr(%rip)
    movq $130, 0(%r11)
    movq %r11, %rcx
    movq %rcx, %rdx
    movq %rdx, %r11
    movq %rsi, 8(%r11)
    movq %rdx, %rcx
    movq %rcx, %r11
    movq 8(%r11), %rcx
    movq %rcx, %r11
    movq 8(%r11), %rcx
    movq %rcx, %rdi
    movq %r10, -4184(%rbp)
    movq %rcx, -4192(%rbp)
    movq %rsi, -4200(%rbp)
    movq %r9, -4208(%rbp)
    movq %r8, -4216(%rbp)
    movq %rdx, -4224(%rbp)
    callq print_int
    movq -4184(%rbp), %r10
    movq -4192(%rbp), %rcx
    movq -4200(%rbp), %rsi
    movq -4208(%rbp), %r9
    movq -4216(%rbp), %r8
    movq -4224(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_248:
    movq %r15, %rdi
    movq $16, %rsi
    movq %rcx, 0(%r15)
    movq %rdx, -8(%r15)
    movq %rcx, -16(%r15)
    movq %rcx, -24(%r15)
    movq %rsi, -32(%r15)
    movq %rcx, -40(%r15)
    movq %rsi, -48(%r15)
    movq %rcx, -56(%r15)
    movq %r10, -4184(%rbp)
    movq %rcx, -4192(%rbp)
    movq %rsi, -4200(%rbp)
    movq %r9, -4208(%rbp)
    movq %r8, -4216(%rbp)
    movq %rdx, -4224(%rbp)
    callq collect
    movq -4184(%rbp), %r10
    movq -4192(%rbp), %rcx
    movq -4200(%rbp), %rsi
    movq -4208(%rbp), %r9
    movq -4216(%rbp), %r8
    movq -4224(%rbp), %rdx
    jmp block_247

	.align 16
block_249:
    movq free_ptr(%rip), %r11
    addq $16, free_ptr(%rip)
    movq $2, 0(%r11)
    movq %r11, %rcx
    movq %rcx, %rsi
    movq %rsi, %r11
    movq %rdx, 8(%r11)
    movq %rsi, %rcx
    movq %rcx, %rsi
    movq free_ptr(%rip), %rcx
    addq $16, %rcx
    cmpq fromspace_end(%rip), %rcx
    jl block_247
    jmp block_248

	.align 16
block_250:
    movq %r15, %rdi
    movq $16, %rsi
    movq %rcx, 0(%r15)
    movq %rdx, -8(%r15)
    movq %rcx, -16(%r15)
    movq %rcx, -24(%r15)
    movq %rsi, -32(%r15)
    movq %rcx, -40(%r15)
    movq %rsi, -48(%r15)
    movq %rcx, -56(%r15)
    movq %r10, -4184(%rbp)
    movq %rcx, -4192(%rbp)
    movq %rsi, -4200(%rbp)
    movq %r9, -4208(%rbp)
    movq %r8, -4216(%rbp)
    movq %rdx, -4224(%rbp)
    callq collect
    movq -4184(%rbp), %r10
    movq -4192(%rbp), %rcx
    movq -4200(%rbp), %rsi
    movq -4208(%rbp), %r9
    movq -4216(%rbp), %r8
    movq -4224(%rbp), %rdx
    jmp block_249

	.align 16
start:
    movq $42, %rdx
    movq free_ptr(%rip), %rcx
    addq $16, %rcx
    cmpq fromspace_end(%rip), %rcx
    jl block_249
    jmp block_250

	.align 16
conclusion:
    addq $4256, %rsp
    subq $64, %r15
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $4256, %rsp
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
    addq $64, %r15
    jmp start


