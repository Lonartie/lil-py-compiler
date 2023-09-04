	.align 16
start:
    movq %r10, -888(%rbp)
    movq %rcx, -896(%rbp)
    movq %rsi, -904(%rbp)
    movq %r9, -912(%rbp)
    movq %r8, -920(%rbp)
    movq %rdx, -928(%rbp)
    callq read_int
    movq -888(%rbp), %r10
    movq -896(%rbp), %rcx
    movq -904(%rbp), %rsi
    movq -912(%rbp), %r9
    movq -920(%rbp), %r8
    movq -928(%rbp), %rdx
    movq %rax, %rcx
    movq %r10, -888(%rbp)
    movq %rcx, -896(%rbp)
    movq %rsi, -904(%rbp)
    movq %r9, -912(%rbp)
    movq %r8, -920(%rbp)
    movq %rdx, -928(%rbp)
    callq read_int
    movq -888(%rbp), %r10
    movq -896(%rbp), %rcx
    movq -904(%rbp), %rsi
    movq -912(%rbp), %r9
    movq -920(%rbp), %r8
    movq -928(%rbp), %rdx
    movq %rax, %rdx
    addq %rdx, %rcx
    movq %r10, -888(%rbp)
    movq %rcx, -896(%rbp)
    movq %rsi, -904(%rbp)
    movq %r9, -912(%rbp)
    movq %r8, -920(%rbp)
    movq %rdx, -928(%rbp)
    callq read_int
    movq -888(%rbp), %r10
    movq -896(%rbp), %rcx
    movq -904(%rbp), %rsi
    movq -912(%rbp), %r9
    movq -920(%rbp), %r8
    movq -928(%rbp), %rdx
    movq %rax, %rdx
    addq %rdx, %rcx
    movq %rcx, %rdi
    movq %r10, -888(%rbp)
    movq %rcx, -896(%rbp)
    movq %rsi, -904(%rbp)
    movq %r9, -912(%rbp)
    movq %r8, -920(%rbp)
    movq %rdx, -928(%rbp)
    callq print_int
    movq -888(%rbp), %r10
    movq -896(%rbp), %rcx
    movq -904(%rbp), %rsi
    movq -912(%rbp), %r9
    movq -920(%rbp), %r8
    movq -928(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
conclusion:
    addq $960, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $960, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


