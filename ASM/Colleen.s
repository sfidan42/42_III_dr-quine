; Colleen ASM
section .text
	global _main
	extern _printf
foo:
	ret
_main:
	push rbp
	call foo
	; printf args: rdi, rsi, rdx, rcx, r8
	mov r8, fmt
	mov rcx, 59
	mov rdx, 34
	mov rsi, 10
	mov rdi, fmt
	call _printf
	pop rbp
	mov rax, 0
	ret

section .data
	fmt: db "%3$c Colleen ASM%1$csection .text%1$c	global _main%1$c	extern _printf%1$cfoo:%1$c	ret%1$c_main:%1$c	push rbp%1$c	call foo%1$c	%3$c printf args: rdi, rsi, rdx, rcx, r8%1$c	mov r8, fmt%1$c	mov rcx, 59%1$c	mov rdx, 34%1$c	mov rsi, 10%1$c	mov rdi, fmt%1$c	call _printf%1$c	pop rbp%1$c	mov rax, 0%1$c	ret%1$c%1$csection .data%1$c	fmt: db %2$c%4$s%2$c, 0%1$c", 0
