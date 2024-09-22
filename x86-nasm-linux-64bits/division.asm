section .text
global _start

_start:
	mov eax,11
	mov ecx,2
	div ecx
	
	mov eax,0xff
	mov ecx,2
	idiv ecx
	
	int 80h
