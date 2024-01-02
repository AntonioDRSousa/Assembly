section .data
	msg db 'Hello World!', 10
	len equ $-msg
	
section .text

global _start

_start:

	; write msg
	mov rax,1   ; sys_write
	mov rdi,1   ; stdout
	mov rsi,msg ; string msg
	mov rdx,len ; len of string msg
	syscall
	
	; end program
	mov rax,60 ; sys_exit
	mov rdi,0  ; return 0
	syscall
