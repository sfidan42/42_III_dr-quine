; Grace ASM
%define STR fmt
%macro PRINT 0
	mov rsi, flag
	mov rdi, fname
	call _fopen
	mov [rbp - 0x8], rax
	mov rbx, STR
	mov [rbp - 0x10], rbx
	mov r9, 37
	mov r8, 59
	mov rcx, 34
	mov rdx, 10
	mov rsi, STR
	mov rdi, rax
	call _fprintf
	mov rdi, [rbp - 8]
	call _fclose
%endmacro
%macro MAIN 0
section .text
	global _main
	extern _fprintf
	extern _fopen
	extern _fclose
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	PRINT
	mov rax, 0
	leave
	ret
section .rodata
	fmt: db "%3$c Grace ASM%1$c%4$cdefine STR fmt%1$c%4$cmacro PRINT 0%1$c	mov rsi, flag%1$c	mov rdi, fname%1$c	call _fopen%1$c	mov [rbp - 0x8], rax%1$c	mov rbx, STR%1$c	mov [rbp - 0x10], rbx%1$c	mov r9, 37%1$c	mov r8, 59%1$c	mov rcx, 34%1$c	mov rdx, 10%1$c	mov rsi, STR%1$c	mov rdi, rax%1$c	call _fprintf%1$c	mov rdi, [rbp - 8]%1$c	call _fclose%1$c%4$cendmacro%1$c%4$cmacro MAIN 0%1$csection .text%1$c	global _main%1$c	extern _fprintf%1$c	extern _fopen%1$c	extern _fclose%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 0x10%1$c	PRINT%1$c	mov rax, 0%1$c	leave%1$c	ret%1$csection .rodata%1$c	fmt: db %2$c%5$s%2$c, 0%1$c	flag: db %2$cw%2$c, 0%1$c	fname: db %2$cGrace_kid.s%2$c, 0%1$c%4$cendmacro%1$cMAIN%1$c", 0
	flag: db "w", 0
	fname: db "Grace_kid.s", 0
%endmacro
MAIN
