extern printf
extern exit

section .data
	; printf (fmt,val)
	msg DD "Hello World!",0
	fmt DB "Output is: %s",10,0
	
section .text
global main

main:
	push rbp ; push stack
	
	; amd64 is RDI, RSI, RDX, RCX, R8, R9, then stack
	mov rsi,msg
	mov rdi,fmt
	call printf
	
	pop rbp ; pop stack
	
	mov rdi,1
	call exit
