#as: --64
#ld: -shared -melf_x86_64
#objdump: -dw

.*: +file format .*


#...
Disassembly of section .text:

#...
[a-f0-9]+ <_start>:
[ 	]*[a-f0-9]+:	f2 e9 [a-f0-9]+ 00 00 00    	bnd jmpq [a-f0-9]+ <foo1@plt>
[ 	]*[a-f0-9]+:	e8 [a-f0-9]+ 00 00 00       	callq  [a-f0-9]+ <foo2@plt>
[ 	]*[a-f0-9]+:	e9 [a-f0-9]+ 00 00 00       	jmpq   [a-f0-9]+ <foo3@plt>
[ 	]*[a-f0-9]+:	e8 [a-f0-9]+ 00 00 00       	callq  [a-f0-9]+ <foo4@plt>
[ 	]*[a-f0-9]+:	f2 e8 [a-f0-9]+ 00 00 00    	bnd callq [a-f0-9]+ <foo3@plt>
[ 	]*[a-f0-9]+:	e9 [a-f0-9]+ 00 00 00       	jmpq   [a-f0-9]+ <foo4@plt>
#pass
