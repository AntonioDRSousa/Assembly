section .text
global _start

_start:
	mov eax,12
	shr eax,2
	shl eax,2
	
	int 80h
