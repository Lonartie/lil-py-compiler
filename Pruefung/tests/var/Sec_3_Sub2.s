	.align 16
start:
    movq $6, %rcx
    movq %rcx, %rdx
    subq $2, %rdx
    movq $2, %rcx
    negq %rcx
    addq %rcx, %rdx
    movq %rdx, %rcx
    subq $2, %rcx
    movq %rcx, %rdi
    movq %r10, -168(%rbp)
    movq %rcx, -176(%rbp)
    movq %rsi, -184(%rbp)
    movq %r9, -192(%rbp)
    movq %r8, -200(%rbp)
    movq %rdx, -208(%rbp)
    callq print_int
    movq -168(%rbp), %r10
    movq -176(%rbp), %rcx
    movq -184(%rbp), %rsi
    movq -192(%rbp), %r9
    movq -200(%rbp), %r8
    movq -208(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
conclusion:
    addq $240, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


