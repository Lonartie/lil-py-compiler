	.align 16
block_202:
    movq %rcx, %rdi
    movq %r10, -3624(%rbp)
    movq %rcx, -3632(%rbp)
    movq %rsi, -3640(%rbp)
    movq %r9, -3648(%rbp)
    movq %r8, -3656(%rbp)
    movq %rdx, -3664(%rbp)
    callq print_int
    movq -3624(%rbp), %r10
    movq -3632(%rbp), %rcx
    movq -3640(%rbp), %rsi
    movq -3648(%rbp), %r9
    movq -3656(%rbp), %r8
    movq -3664(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_204:
    addq $1, %rcx
    jmp loop_203

	.align 16
loop_203:
    cmpq $10, %rcx
    jle block_204
    jmp block_202

	.align 16
start:
    movq $0, %rcx
    jmp loop_203

	.align 16
conclusion:
    addq $3696, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $3696, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


