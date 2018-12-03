tar:open.o asm_read.o asmopen.o
	gcc open.o asm_read.o asmopen.o -o tar
open.o:open.c
	gcc -c open.c -o open.o
asm_read.o:asm_read.s
	as asm_read.s -o asm_read.o
asmopen.o:asmopen.s
	as asmopen.s -o asmopen.o 
