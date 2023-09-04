	.align 16
start:
    movq %r10, -248(%rbp)
    movq %rcx, -256(%rbp)
    movq %rsi, -264(%rbp)
    movq %r9, -272(%rbp)
    movq %r8, -280(%rbp)
    movq %rdx, -288(%rbp)
    callq read_int
    movq -248(%rbp), %r10
    movq -256(%rbp), %rcx
    movq -264(%rbp), %rsi
    movq -272(%rbp), %r9
    movq -280(%rbp), %r8
    movq -288(%rbp), %rdx
    movq %rax, %rcx
    movq %r10, -248(%rbp)
    movq %rcx, -256(%rbp)
    movq %rsi, -264(%rbp)
    movq %r9, -272(%rbp)
    movq %r8, -280(%rbp)
    movq %rdx, -288(%rbp)
    callq read_int
    movq -248(%rbp), %r10
    movq -256(%rbp), %rcx
    movq -264(%rbp), %rsi
    movq -272(%rbp), %r9
    movq -280(%rbp), %r8
    movq -288(%rbp), %rdx
    movq %rax, %rdx
    addq %rdx, %rcx
    movq %r10, -248(%rbp)
    movq %rcx, -256(%rbp)
    movq %rsi, -264(%rbp)
    movq %r9, -272(%rbp)
    movq %r8, -280(%rbp)
    movq %rdx, -288(%rbp)
    callq read_int
    movq -248(%rbp), %r10
    movq -256(%rbp), %rcx
    movq -264(%rbp), %rsi
    movq -272(%rbp), %r9
    movq -280(%rbp), %r8
    movq -288(%rbp), %rdx
    movq %rax, %rdx
    addq %rdx, %rcx
    movq %rcx, %rdi
    movq %r10, -248(%rbp)
    movq %rcx, -256(%rbp)
    movq %rsi, -264(%rbp)
    movq %r9, -272(%rbp)
    movq %r8, -280(%rbp)
    movq %rdx, -288(%rbp)
    callq print_int
    movq -248(%rbp), %r10
    movq -256(%rbp), %rcx
    movq -264(%rbp), %rsi
    movq -272(%rbp), %r9
    movq -280(%rbp), %r8
    movq -288(%rbp), %rdx
    movq %rcx, %rdi
    movq %r10, -248(%rbp)
    movq %rcx, -256(%rbp)
    movq %rsi, -264(%rbp)
    movq %r9, -272(%rbp)
    movq %r8, -280(%rbp)
    movq %rdx, -288(%rbp)
    callq print_int
    movq -248(%rbp), %r10
    movq -256(%rbp), %rcx
    movq -264(%rbp), %rsi
    movq -272(%rbp), %r9
    movq -280(%rbp), %r8
    movq -288(%rbp), %rdx
    movq %rcx, %rdi
    movq %r10, -248(%rbp)
    movq %rcx, -256(%rbp)
    movq %rsi, -264(%rbp)
    movq %r9, -272(%rbp)
    movq %r8, -280(%rbp)
    movq %rdx, -288(%rbp)
    callq print_int
    movq -248(%rbp), %r10
    movq -256(%rbp), %rcx
    movq -264(%rbp), %rsi
    movq -272(%rbp), %r9
    movq -280(%rbp), %r8
    movq -288(%rbp), %rdx
    movq $0, %rax
    jmp conclusion

	.align 16
conclusion:
    addq $320, %rsp
    popq %rbp
    retq 

	.globl main
	.align 16
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq $16384, %rdi
    movq $16384, %rsi
    callq initialize
    movq rootstack_begin(%rip), %r15
    jmp start


