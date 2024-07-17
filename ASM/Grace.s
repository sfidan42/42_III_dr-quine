; Colleen ASM
section .text
	global main
	extern printf
foo:
    ret
main:
	push rbp
	; printf args: rdi, rsi, rdx, rcx, r8d
    call foo
	mov r8d, fmt
	mov rcx, 59
	mov rdx, 34
	mov rsi, 10
	mov rdi, fmt
	call printf
	pop rbp
	mov rax, 0
	ret

section .data
	fmt: db "%3$c Colleen ASM%1$csection .text%1$c	global main%1$c	extern printf%1$cmain:%1$c	push rbp%1$c	%3$c printf args: rdi, rsi, rdx, rcx, r8d%1$c	mov r8d, fmt%1$c	mov rcx, 59%1$c	mov rdx, 34%1$c	mov rsi, 10%1$c	mov rdi, fmt%1$c	call printf%1$c	pop rbp%1$c	mov rax, 0%1$c	ret%1$c%1$csection .data%1$c	fmt: db %2$c%4$s%2$c, 0%1$c", 0
