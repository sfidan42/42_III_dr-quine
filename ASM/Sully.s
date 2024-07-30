section .text
	global _main
	extern _fopen
	extern _fprintf
	extern _fclose
	extern _system
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, i
	cmp rax, 48
	jle .end
	dec rax
	mov [qword i], al
	mov [qword cmd + 20], al
	mov [qword cmd + 33], al
	mov [qword cmd + 50], al
	mov [qword cmd + 63], al
	mov [qword cmd + 84], al
	mov [qword fname + 6], al
	mov rdi, fname
	mov rsi, flag
	call _fopen
	mov [rbp - 8], rax
	mov r9, i
	mov r8, fmt
	mov rcx, 34
	mov rdx, 10
	mov rsi, fmt
	mov rdi, rax
	call _fprintf
	mov rdi, [rbp - 8]
	call _fclose
	mov rdi, cmd
	call _system
.end:
	mov rax, 0
	leave
	ret
section .data
	i: dq 53
	fname: db "Sully_X.s", 0
	cmd: db "./nasm/nasm -f elf64 Sully_X.s -o Sully_X.o && gcc Sully_X.o -o Sully_X -static && ./Sully_X", 0
section .rodata
	fmt: db "section .text%1$c	global _main%1$c	extern _fopen%1$c	extern _fprintf%1$c	extern _fclose%1$c	extern _system%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 16%1$c	mov al, [i]%1$c	cmp al, 48%1$c	jle .end%1$c	dec al%1$c	mov [i], al%1$c	mov [cmd + 20], al%1$c	mov [cmd + 33], al%1$c	mov [cmd + 50], al%1$c	mov [cmd + 63], al%1$c	mov [cmd + 84], al%1$c	mov [fname + 6], al%1$c	mov rdi, fname%1$c	mov rsi, flag%1$c	call _fopen%1$c	mov [rbp - 8], rax%1$c	mov r9b, [i]%1$c	mov r8, fmt%1$c	mov rcx, 34%1$c	mov rdx, 10%1$c	mov rsi, fmt%1$c	mov rdi, rax%1$c	call _fprintf%1$c	mov rdi, [rbp - 8]%1$c	call _fclose%1$c	mov rdi, cmd%1$c	call _system%1$c.end:%1$c	mov rax, 0%1$c	leave%1$c	ret%1$csection .data%1$c	i: db %4$d%1$c	fname: db %2$cSully_X.s%2$c, 0%1$c	cmd: db %2$c./nasm/nasm -f elf64 Sully_X.s -o Sully_X.o && gcc Sully_X.o -o Sully_X -static && ./Sully_X%2$c, 0%1$csection .rodata%1$c	fmt: db %2$c%3$s%2$c, 0%1$c	flag: db %2$cw%2$c, 0%1$c", 0
	flag: db "w", 0
