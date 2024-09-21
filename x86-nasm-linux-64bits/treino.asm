section .data
	msg db 'Hello, World!', 10, 20, 'I code in Assembly!', 10
	len equ $-msg ;constant
	
	qst db 'Whats your name?',10
	lenqst equ $-qst
	
	hi db 'Hi, '
	lenhi equ $-hi
	
	maxlen equ 30
	
section .bss
	name resb maxlen
	

section .text
	global _start
	
_start:
	; write
	mov rax, 1 ;identificador da chamada sys_write
	mov rdi, 1 ;saida padrao
	mov rsi, msg
	mov rdx, len
	syscall
	
	mov rax, 1
	mov rdi, 1
	mov rsi, qst
	mov rdx, lenqst
	syscall
	
	;read
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, maxlen
	syscall
	
	;write
	mov rax,1
	mov rdi,1
	mov rsi,hi
	mov rdx, lenhi
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,name
	mov rdx,maxlen
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,48
	mov rdx,1
	syscall
	
	; end program
	mov rax, 60 ;identificador de chamada sys_exit
	mov rdi, 0
	syscall
