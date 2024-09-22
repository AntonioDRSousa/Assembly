all:
	nasm -f elf64 -o $(a).o $(a).asm
	ld -m elf_x86_64 -o $(a) $(a).o
	gdb $(a)
	clear
	
c:
	nasm -f elf64 -o $(a).o $(a).asm
	gcc -no-pie -m64 $(a).o -o $(a)
	./$(a)
	
x:
	nasm -f elf64 -o $(a).o $(a).asm
	ld -m elf_x86_64 -o $(a) $(a).o
	./$(a)
