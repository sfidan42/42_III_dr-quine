; Grace ASM
%define STR fmt
%macro PRINT 0
	mov rsi, flag
	mov rdi, fname
	call fopen
	mov [rbp - 8], rax
	push fmt
	mov r9d, 37
	mov r8d, 59
	mov rcx, 34
	mov rdx, 10
	mov rsi, fmt
	mov rdi, rax
	call fprintf
	mov rdi, [rbp - 8]
	call fclose
%endmacro
%macro MAIN 0
section .text
	global main
	extern fprintf
	extern fopen
	extern fclose
main:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	PRINT
	mov rax, 0
	leave
	ret
section .rodata
	fmt: db "%3$c Grace ASM%1$c%4$cdefine STR fmt%1$c%4$cmacro PRINT 0%1$c	mov rsi, flag%1$c	mov rdi, fname%1$c	call fopen%1$c	mov [rbp - 8], rax%1$c	push fmt%1$c	mov r9d, 37%1$c	mov r8d, 59%1$c	mov rcx, 34%1$c	mov rdx, 10%1$c	mov rsi, fmt%1$c	mov rdi, rax%1$c	call fprintf%1$c	mov rdi, [rbp - 8]%1$c	call fclose%1$c%4$cendmacro%1$c%4$cmacro MAIN 0%1$csection .text%1$c	global main%1$c	extern fprintf%1$c	extern fopen%1$c	extern fclose%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 8%1$c	PRINT%1$c	mov rax, 0%1$c	leave%1$c	ret%1$csection .rodata%1$c	fmt: db %2$c%5$s%2$c, 0%1$c	flag: db %2$cw%2$c, 0%1$c	fname: db %2$cGrace_kid.s%2$c, 0%1$c%4$cendmacro%1$cMAIN%1$c", 0
	flag: db "w", 0
	fname: db "Grace_kid.s", 0
%endmacro
MAIN
