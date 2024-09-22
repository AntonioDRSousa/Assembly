section .text
global _start

_start:
	mov eax,0b1010
	mov ebx,0b1100
	and eax,ebx
	
	mov eax,0b1010
	mov ebx,0b1100
	or eax,ebx
	not eax
	
	mov eax,0b1010
	not eax
	and eax,0x0000000F ; mask
	
	mov eax,0b1010
	mov ebx,0b1100
	xor eax,ebx
	
	int 80h
