	.align 16
block_184:
    movq %rcx, %rdi
    movq %r10, -3224(%rbp)
    movq %rcx, -3232(%rbp)
    movq %rsi, -3240(%rbp)
    movq %r9, -3248(%rbp)
    movq %r8, -3256(%rbp)
    movq %rdx, -3264(%rbp)
    callq print_int
    movq -3224(%rbp), %r10
    movq -3232(%rbp), %rcx
    movq -3240(%rbp), %rsi
    movq -3248(%rbp), %r9
    movq -3256(%rbp), %r8
    movq -3264(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_186:
    addq %rsi, %rcx
    jmp loop_185

	.align 16
loop_185:
    cmpq %rdx, %rcx
    jl block_186
    jmp block_184

	.align 16
start:
    movq %r10, -3224(%rbp)
    movq %rcx, -3232(%rbp)
    movq %rsi, -3240(%rbp)
    movq %r9, -3248(%rbp)
    movq %r8, -3256(%rbp)
    movq %rdx, -3264(%rbp)
    callq read_int
    movq -3224(%rbp), %r10
    movq -3232(%rbp), %rcx
    movq -3240(%rbp), %rsi
    movq -3248(%rbp), %r9
    movq -3256(%rbp), %r8
    movq -3264(%rbp), %rdx
    movq %rax, %rcx
    movq $1, %rsi
    movq %r10, -3224(%rbp)
    movq %rcx, -3232(%rbp)
    movq %rsi, -3240(%rbp)
    movq %r9, -3248(%rbp)
    movq %r8, -3256(%rbp)
    movq %rdx, -3264(%rbp)
    callq read_int
    movq -3224(%rbp), %r10
    movq -3232(%rbp), %rcx
    movq -3240(%rbp), %rsi
    movq -3248(%rbp), %r9
    movq -3256(%rbp), %r8
    movq -3264(%rbp), %rdx
    movq %rax, %rdx
    jmp loop_185

	.align 16
conclusion:
    addq $3296, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $3296, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


