section .data
	sout db 'Write a string: '
	len_sout equ $-sout
	len_sin equ 100
	
section .bss
	sin resb len_sin
	
section .text
global _start

_start:
	mov rax,1
	mov rdi,1
	mov rsi,sout
	mov rdx,len_sout
	syscall
	
	mov rax,0
	mov rdi,0
	mov rsi,sin
	mov rdx,len_sin
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,sin
	mov rdx,len_sin
	syscall
	
	mov rax,60
	mov rdi,0
	syscall

