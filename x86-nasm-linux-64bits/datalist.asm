section .data
	list DB 1,2,3,4

section .text
global _start

_start:
	mov bl,[list]
	mov eax,1
	int 80h
