	.align 16
start:
    movq $1, %rdx
    movq $1, %rsi
    movq $1, %r8
    movq %rdx, %rcx
    addq %rsi, %rcx
    movq %rcx, %rdi
    movq %r10, -1960(%rbp)
    movq %rcx, -1968(%rbp)
    movq %rsi, -1976(%rbp)
    movq %r9, -1984(%rbp)
    movq %r8, -1992(%rbp)
    movq %rdx, -2000(%rbp)
    callq print_int
    movq -1960(%rbp), %r10
    movq -1968(%rbp), %rcx
    movq -1976(%rbp), %rsi
    movq -1984(%rbp), %r9
    movq -1992(%rbp), %r8
    movq -2000(%rbp), %rdx
    movq %rdx, %rcx
    addq %rsi, %rcx
    addq %r8, %rcx
    movq %rcx, %rdi
    movq %r10, -1960(%rbp)
    movq %rcx, -1968(%rbp)
    movq %rsi, -1976(%rbp)
    movq %r9, -1984(%rbp)
    movq %r8, -1992(%rbp)
    movq %rdx, -2000(%rbp)
    callq print_int
    movq -1960(%rbp), %r10
    movq -1968(%rbp), %rcx
    movq -1976(%rbp), %rsi
    movq -1984(%rbp), %r9
    movq -1992(%rbp), %r8
    movq -2000(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
conclusion:
    addq $2032, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $2032, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


