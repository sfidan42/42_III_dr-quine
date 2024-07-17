section .text
	global main
	extern fopen
	extern fprintf
	extern fclose
	extern system
main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov al, [i]
	cmp al, 48
	jle .end
	dec al
	mov [i], al
	mov [cmd + 20], al
	mov [cmd + 33], al
	mov [cmd + 50], al
	mov [cmd + 63], al
	mov [cmd + 84], al
	mov [fname + 6], al
	mov rdi, fname
	mov rsi, flag
	call fopen
	mov [rbp - 8], rax
	mov r9b, [i]
	mov r8d, fmt
	mov rcx, 34
	mov rdx, 10
	mov rsi, fmt
	mov rdi, rax
	call fprintf
	mov rdi, [rbp - 8]
	call fclose
	mov rdi, cmd
	call system
.end:
	mov rax, 0
	leave
	ret
section .data
	i: db 53
	fname: db "Sully_X.s", 0
	cmd: db "nasm -f elf64 Sully_X.s -o Sully_X.o && gcc Sully_X.o -o Sully_X -static && ./Sully_X", 0
section .rodata
	fmt: db "section .text%1$c	global main%1$c	extern fopen%1$c	extern fprintf%1$c	extern fclose%1$c	extern system%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 16%1$c	mov al, [i]%1$c	cmp al, 48%1$c	jle .end%1$c	dec al%1$c	mov [i], al%1$c	mov [cmd + 20], al%1$c	mov [cmd + 33], al%1$c	mov [cmd + 50], al%1$c	mov [cmd + 63], al%1$c	mov [cmd + 84], al%1$c	mov [fname + 6], al%1$c	mov rdi, fname%1$c	mov rsi, flag%1$c	call fopen%1$c	mov [rbp - 8], rax%1$c	mov r9b, [i]%1$c	mov r8d, fmt%1$c	mov rcx, 34%1$c	mov rdx, 10%1$c	mov rsi, fmt%1$c	mov rdi, rax%1$c	call fprintf%1$c	mov rdi, [rbp - 8]%1$c	call fclose%1$c	mov rdi, cmd%1$c	call system%1$c.end:%1$c	mov rax, 0%1$c	leave%1$c	ret%1$csection .data%1$c	i: db %4$d%1$c	fname: db %2$cSully_X.s%2$c, 0%1$c	cmd: db %2$cnasm -f elf64 Sully_X.s -o Sully_X.o && gcc Sully_X.o -o Sully_X -static && ./Sully_X%2$c, 0%1$csection .rodata%1$c	fmt: db %2$c%3$s%2$c, 0%1$c	flag: db %2$cw%2$c, 0%1$c", 0
	flag: db "w", 0
