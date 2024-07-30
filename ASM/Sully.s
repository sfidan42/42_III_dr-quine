section .text
	global _main
	extern _fprintf
	extern _fopen
	extern _fclose
	extern _system
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	mov rbx, i
	mov al, [rbx]
	dec al
	mov [rbx], al
	cmp al, 48
	jl .end
	mov [qword fname + 6], al
	mov [qword cmd + 29], al
	mov [qword cmd + 42], al
	mov [qword cmd + 59], al
	mov [qword cmd + 72], al
	mov [qword cmd + 97], al
	mov rsi, flag
	mov rdi, fname
	call _fopen
	mov [rbp - 0x8], rax
	mov rax, i
	mov rbx, 0
	mov bl, [rax]
	mov [rbp - 0x10], rbx
	mov r9, fmt
	mov r8, 37
	mov rcx, 34
	mov rdx, 10
	mov rsi, fmt
	mov rdi, [rbp - 0x8]
	call _fprintf
	mov rdi, [rbp - 0x8]
	call _fclose
	mov rdi, cmd
	call _system
.end:
	mov rax, 0
	leave
	ret
section .data
	i: db 53
	fname: db "Sully_X.s", 0
	cmd: db "./nasm/nasm -f macho64 Sully_X.s -o Sully_X.o && gcc Sully_X.o -o Sully_X -Wl,-no_pie && ./Sully_X", 0
section .rodata
	fmt: db "section .text%1$c	global _main%1$c	extern _fprintf%1$c	extern _fopen%1$c	extern _fclose%1$c	extern _system%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 0x10%1$c	mov rbx, i%1$c	mov al, [rbx]%1$c	dec al%1$c	mov [rbx], al%1$c	cmp al, 48%1$c	jl .end%1$cmov [qword fname + 6], al%1$c	mov [qword cmd + 29], al%1$c	mov [qword cmd + 42], al%1$c	mov [qword cmd + 59], al%1$c	mov [qword cmd + 72], al%1$c	mov [qword cmd + 97], al%1$c	mov [qword fname + 6], al%1$c	mov rsi, flag%1$c	mov rdi, fname%1$c	call _fopen%1$c	mov [rbp - 0x8], rax%1$c	mov rax, i%1$c	mov rbx, 0%1$c	mov bl, [rax]%1$c	mov [rbp - 0x10], rbx%1$c	mov r9, fmt%1$c	mov r8, 37%1$c	mov rcx, 34%1$c	mov rdx, 10%1$c	mov rsi, fmt%1$c	mov rdi, [rbp - 0x8]%1$c	call _fprintf%1$c	mov rdi, [rbp - 0x8]%1$c	call _fclose%1$c	mov rdi, cmd%1$c	call _system%1$c.end:%1$c	mov rax, 0%1$c	leave%1$c	ret%1$csection .data%1$c	i: db %5$d%1$c	fname: db %2$cSully_X.s%2$c, 0%1$c	cmd: db %2$c./nasm/nasm -f macho64 Sully_X.s -o Sully_X.o && gcc Sully_X.o -o Sully_X -Wl,-no_pie && ./Sully_X%2$c, 0%1$csection .rodata%1$c	fmt: db %2$c%4$s%2$c, 0%1$c	flag: db %2$cw%2$c, 0%1$c", 0
	flag: db "w", 0
