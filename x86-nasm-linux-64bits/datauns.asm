section .bss ; block starting symbol
	num RESB 3 ; (RES) reserve 3 bytes different (D) define
	
section .data
	num2 DB 3 DUP(2)
	
section .text
global _start

_start:
	mov bl,1
	mov [num],bl
	mov bl,2
	mov [num+1],bl
	mov bl,3
	mov [num+2],bl
	
	mov [num2],bl
	
	mov eax,1
	int 80h
