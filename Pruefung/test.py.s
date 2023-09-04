	.align 16
block_9:
    movq $0, %rdi
    movq %rcx, -8(%rbp)
    movq %r8, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %rdx, -32(%rbp)
    movq %r9, -40(%rbp)
    movq %r10, -48(%rbp)
    callq print_int
    movq -8(%rbp), %rcx
    movq -16(%rbp), %r8
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    movq -40(%rbp), %r9
    movq -48(%rbp), %r10
    movq $0, %rax
    jmp conclusion

	.align 16
block_11:
    movq free_ptr(%rip), %r11
    addq $24, free_ptr(%rip)
    movq $132, 0(%r11)
    movq %r11, %r8
    movq %r8, %r11
    movq %rdx, 8(%r11)
    movq %r8, %r11
    movq %rcx, 16(%r11)
    movq %r8, %rcx
    addq $1, %rsi
    jmp loop_10

	.align 16
block_12:
    movq %r15, %rdi
    movq $24, %rsi
    movq %rcx, -8(%rbp)
    movq %r8, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %rdx, -32(%rbp)
    movq %r9, -40(%rbp)
    movq %r10, -48(%rbp)
    callq collect
    movq -8(%rbp), %rcx
    movq -16(%rbp), %r8
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    movq -40(%rbp), %r9
    movq -48(%rbp), %r10
    jmp block_11

	.align 16
block_13:
    movq $1, %rdi
    movq %rcx, -8(%rbp)
    movq %r8, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %rdx, -32(%rbp)
    movq %r9, -40(%rbp)
    movq %r10, -48(%rbp)
    callq print_int
    movq -8(%rbp), %rcx
    movq -16(%rbp), %r8
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    movq -40(%rbp), %r9
    movq -48(%rbp), %r10
    movq $1, %rcx
    movq free_ptr(%rip), %r8
    addq $24, %r8
    cmpq fromspace_end(%rip), %r8
    jl block_11
    jmp block_12

	.align 16
loop_10:
    cmpq $100000000, %rsi
    jl block_13
    jmp block_9

	.align 16
block_14:
    movq free_ptr(%rip), %r11
    addq $16, free_ptr(%rip)
    movq $2, 0(%r11)
    movq %r11, %rdx
    movq %rdx, %r11
    movq %rcx, 8(%r11)
    jmp loop_10

	.align 16
block_15:
    movq %r15, %rdi
    movq $16, %rsi
    movq %rcx, -8(%rbp)
    movq %r8, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %rdx, -32(%rbp)
    movq %r9, -40(%rbp)
    movq %r10, -48(%rbp)
    callq collect
    movq -8(%rbp), %rcx
    movq -16(%rbp), %r8
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    movq -40(%rbp), %r9
    movq -48(%rbp), %r10
    jmp block_14

	.align 16
start:
    movq $0, %rsi
    movq $1, %rcx
    movq free_ptr(%rip), %rdx
    addq $16, %rdx
    cmpq fromspace_end(%rip), %rdx
    jl block_14
    jmp block_15

	.align 16
conclusion:
    addq $80, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


