section .data

section .text
global _start

_start:
	mov eax,1
	mov ebx,2
	add eax,ebx
	mov cl,0b11111111
	mov dl,0b00000001
	add cl,dl
	adc ch,0
	int 80h
