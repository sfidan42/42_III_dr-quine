	.file	"Sully.c"
	.text
	.globl	i
	.data
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.long	5
	.globl	filename
	.bss
	.align 32
	.type	filename, @object
	.size	filename, 50
filename:
	.zero	50
	.globl	cmd
	.align 32
	.type	cmd, @object
	.size	cmd, 100
cmd:
	.zero	100
	.section	.rodata
.LC0:
	.string	"Sully_%d.c"
.LC1:
	.string	"w"
	.align 8
.LC2:
	.ascii	"int\t\ti = %4$d;%1$cchar\tfilename[50];%1$cchar\tcmd[100];%1"
	.ascii	"$c#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$c#define S"
	.ascii	"TR %2$c%3$s%2$c%1$c%1$cint\tmain(void)%1$c{%1$c\tFILE\t*fd;%"
	.ascii	"1$c%1$c\tif (i-- <= 0)%1$c\t\treturn (1);%1$c\tsprintf(filen"
	.ascii	"ame, %2$cSully_%5$cd."
	.string	"c%2$c, i);%1$c\tfd = fopen(filename, %2$cw%2$c);%1$c\tfprintf(fd, STR, 10, 34, STR, i, 37);%1$c\tfclose(fd);%1$c\tsprintf(cmd, %2$cclang -Wall -Wextra -Werror %5$cs -o Sully_%5$cd && ./Sully_%5$cd%2$c, filename, i, i);%1$c\tsystem(cmd);%1$c\treturn (0);%1$c}%1$c"
	.align 8
.LC3:
	.string	"clang -Wall -Wextra -Werror %s -o Sully_%d && ./Sully_%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	i(%rip), %eax
	leal	-1(%rax), %edx
	movl	%edx, i(%rip)
	testl	%eax, %eax
	jg	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	i(%rip), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	filename(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	filename(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movl	i(%rip), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$37
	movl	%edx, %r9d
	leaq	.LC2(%rip), %r8
	movl	$34, %ecx
	movl	$10, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	i(%rip), %edx
	movl	i(%rip), %eax
	movl	%edx, %r8d
	movl	%eax, %ecx
	leaq	filename(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	cmd(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	cmd(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
