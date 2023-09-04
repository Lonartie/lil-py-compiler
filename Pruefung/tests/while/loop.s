	.align 16
block_196:
    movq %r8, %rdi
    movq %r10, -3464(%rbp)
    movq %rcx, -3472(%rbp)
    movq %rsi, -3480(%rbp)
    movq %r9, -3488(%rbp)
    movq %r8, -3496(%rbp)
    movq %rdx, -3504(%rbp)
    callq print_int
    movq -3464(%rbp), %r10
    movq -3472(%rbp), %rcx
    movq -3480(%rbp), %rsi
    movq -3488(%rbp), %r9
    movq -3496(%rbp), %r8
    movq -3504(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_198:
    movq %rsi, %r8
    addq %r8, %rsi
    addq $1, %rcx
    jmp loop_197

	.align 16
loop_197:
    cmpq %rdx, %rcx
    jl block_198
    jmp block_196

	.align 16
start:
    movq $0, %r8
    movq $1, %rsi
    movq $0, %rcx
    movq %r10, -3464(%rbp)
    movq %rcx, -3472(%rbp)
    movq %rsi, -3480(%rbp)
    movq %r9, -3488(%rbp)
    movq %r8, -3496(%rbp)
    movq %rdx, -3504(%rbp)
    callq read_int
    movq -3464(%rbp), %r10
    movq -3472(%rbp), %rcx
    movq -3480(%rbp), %rsi
    movq -3488(%rbp), %r9
    movq -3496(%rbp), %r8
    movq -3504(%rbp), %rdx
    movq %rax, %rdx
    jmp loop_197

	.align 16
conclusion:
    addq $3536, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $3536, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


