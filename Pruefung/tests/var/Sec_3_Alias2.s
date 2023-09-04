	.align 16
start:
    movq $1, %rcx
    movq %rcx, %rdi
    movq %r10, -808(%rbp)
    movq %rcx, -816(%rbp)
    movq %rsi, -824(%rbp)
    movq %r9, -832(%rbp)
    movq %r8, -840(%rbp)
    movq %rdx, -848(%rbp)
    callq print_int
    movq -808(%rbp), %r10
    movq -816(%rbp), %rcx
    movq -824(%rbp), %rsi
    movq -832(%rbp), %r9
    movq -840(%rbp), %r8
    movq -848(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
conclusion:
    addq $880, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $880, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


