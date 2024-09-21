section .data

section .text
global _start

_start:
	mov al,2
	mov bl,3
	mul bl
	mov al,0xff
	mov bl,2
	mul bl
	mov al,0xff
	mov bl,2
	imul bl
	int 80h
