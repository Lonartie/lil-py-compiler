	.align 16
block_149:
    addq %rdx, %rcx
    movq %rcx, %rdi
    movq %r10, -2584(%rbp)
    movq %rcx, -2592(%rbp)
    movq %rsi, -2600(%rbp)
    movq %r9, -2608(%rbp)
    movq %r8, -2616(%rbp)
    movq %rdx, -2624(%rbp)
    callq print_int
    movq -2584(%rbp), %r10
    movq -2592(%rbp), %rcx
    movq -2600(%rbp), %rsi
    movq -2608(%rbp), %r9
    movq -2616(%rbp), %r8
    movq -2624(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_150:
    movq $0, %rdx
    jmp block_149

	.align 16
block_151:
    movq $2, %rdx
    jmp block_149

	.align 16
start:
    movq $4, %rcx
    jmp block_151

	.align 16
conclusion:
    addq $2656, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $2656, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


