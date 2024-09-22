extern printf
extern scanf
extern exit

section .data
	string DB "x = ",0
	fmt DB "x = %d",10,0
	scf DB "%d",0
	x DB 2
	

section .text
global main

main:
	push rbp
	
	mov rdi,string
	call printf
	
	mov rsi,x
	mov rdi,scf
	call scanf
	
	mov rsi,[x]
	mov rdi,fmt
	call printf
	
	pop rbp
	
	mov rdi,0
	call exit
