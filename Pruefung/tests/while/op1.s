	.align 16
block_226:
    movq %rcx, %rdi
    movq %r10, -3944(%rbp)
    movq %rcx, -3952(%rbp)
    movq %rsi, -3960(%rbp)
    movq %r9, -3968(%rbp)
    movq %r8, -3976(%rbp)
    movq %rdx, -3984(%rbp)
    callq print_int
    movq -3944(%rbp), %r10
    movq -3952(%rbp), %rcx
    movq -3960(%rbp), %rsi
    movq -3968(%rbp), %r9
    movq -3976(%rbp), %r8
    movq -3984(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_228:
    addq $1, %rcx
    jmp loop_227

	.align 16
loop_227:
    cmpq $10, %rcx
    jl block_228
    jmp block_226

	.align 16
start:
    movq $0, %rcx
    jmp loop_227

	.align 16
conclusion:
    addq $4016, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $4016, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


