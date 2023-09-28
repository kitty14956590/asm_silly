.globl main
main:
	lea 3(%rip), %rsi
	dec %rax
	movq $1, %rax
	movq $1, %rdi
	movq $1, %rdx
	syscall
	lea 2(%rip), %rsi
	pcmpgtw %xmm0, %xmm1
	syscall
	lea 6(%rip), %rsi
	lea 1(%rsi), %rcx
	call *%rcx
	insb
	syscall
	syscall
	lea 2(%rip), %rsi
	movdqu %xmm1, %xmm2
	syscall
	lea 1(%rip), %rsi
	and %rcx, %rcx
	syscall
	lea 3(%rip), %rsi
	psignd %xmm1, %xmm2
	syscall
	movq $60, %rax
	movq $0, %rdi
	syscall
