	.align 16
start:
    movq %r10, -8(%rbp)
    movq %rcx, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %r9, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %rdx, -48(%rbp)
    callq read_int
    movq -8(%rbp), %r10
    movq -16(%rbp), %rcx
    movq -24(%rbp), %rsi
    movq -32(%rbp), %r9
    movq -40(%rbp), %r8
    movq -48(%rbp), %rdx
    movq %rax, %rcx
    movq %rcx, %rdi
    movq %r10, -8(%rbp)
    movq %rcx, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %r9, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %rdx, -48(%rbp)
    callq print_int
    movq -8(%rbp), %r10
    movq -16(%rbp), %rcx
    movq -24(%rbp), %rsi
    movq -32(%rbp), %r9
    movq -40(%rbp), %r8
    movq -48(%rbp), %rdx
    movq %r10, -8(%rbp)
    movq %rcx, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %r9, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %rdx, -48(%rbp)
    callq read_int
    movq -8(%rbp), %r10
    movq -16(%rbp), %rcx
    movq -24(%rbp), %rsi
    movq -32(%rbp), %r9
    movq -40(%rbp), %r8
    movq -48(%rbp), %rdx
    movq %rax, %rcx
    movq %rcx, %rdi
    movq %r10, -8(%rbp)
    movq %rcx, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %r9, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %rdx, -48(%rbp)
    callq print_int
    movq -8(%rbp), %r10
    movq -16(%rbp), %rcx
    movq -24(%rbp), %rsi
    movq -32(%rbp), %r9
    movq -40(%rbp), %r8
    movq -48(%rbp), %rdx
    movq %r10, -8(%rbp)
    movq %rcx, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %r9, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %rdx, -48(%rbp)
    callq read_int
    movq -8(%rbp), %r10
    movq -16(%rbp), %rcx
    movq -24(%rbp), %rsi
    movq -32(%rbp), %r9
    movq -40(%rbp), %r8
    movq -48(%rbp), %rdx
    movq %rax, %rcx
    movq %rcx, %rdi
    movq %r10, -8(%rbp)
    movq %rcx, -16(%rbp)
    movq %rsi, -24(%rbp)
    movq %r9, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %rdx, -48(%rbp)
    callq print_int
    movq -8(%rbp), %r10
    movq -16(%rbp), %rcx
    movq -24(%rbp), %rsi
    movq -32(%rbp), %r9
    movq -40(%rbp), %r8
    movq -48(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

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


