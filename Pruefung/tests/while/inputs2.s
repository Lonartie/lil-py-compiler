	.align 16
block_234:
    movq %rcx, %rdi
    movq %r10, -4104(%rbp)
    movq %rcx, -4112(%rbp)
    movq %rsi, -4120(%rbp)
    movq %r9, -4128(%rbp)
    movq %r8, -4136(%rbp)
    movq %rdx, -4144(%rbp)
    callq print_int
    movq -4104(%rbp), %r10
    movq -4112(%rbp), %rcx
    movq -4120(%rbp), %rsi
    movq -4128(%rbp), %r9
    movq -4136(%rbp), %r8
    movq -4144(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
block_236:
    addq %rdx, %rcx
    addq %r9, %rcx
    addq %rsi, %rcx
    jmp loop_235

	.align 16
loop_235:
    cmpq %r8, %rcx
    jl block_236
    jmp block_234

	.align 16
start:
    movq $1, %rdx
    movq %r10, -4104(%rbp)
    movq %rcx, -4112(%rbp)
    movq %rsi, -4120(%rbp)
    movq %r9, -4128(%rbp)
    movq %r8, -4136(%rbp)
    movq %rdx, -4144(%rbp)
    callq read_int
    movq -4104(%rbp), %r10
    movq -4112(%rbp), %rcx
    movq -4120(%rbp), %rsi
    movq -4128(%rbp), %r9
    movq -4136(%rbp), %r8
    movq -4144(%rbp), %rdx
    movq %rax, %rcx
    movq $1, %r9
    movq $1, %rsi
    movq %r10, -4104(%rbp)
    movq %rcx, -4112(%rbp)
    movq %rsi, -4120(%rbp)
    movq %r9, -4128(%rbp)
    movq %r8, -4136(%rbp)
    movq %rdx, -4144(%rbp)
    callq read_int
    movq -4104(%rbp), %r10
    movq -4112(%rbp), %rcx
    movq -4120(%rbp), %rsi
    movq -4128(%rbp), %r9
    movq -4136(%rbp), %r8
    movq -4144(%rbp), %rdx
    movq %rax, %r8
    jmp loop_235

	.align 16
conclusion:
    addq $4176, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $4176, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


