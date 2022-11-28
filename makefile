assembler: main.o first_pass.o macro.o structLabels.o struct_ext.o second_pass.o utils.o
	gcc -g -ansi -Wall -pedantic main.o first_pass.o macro.o struct_ext.o second_pass.o utils.o structLabels.o -lm -o assembler

macro.o: macro.c macro.h 
	gcc -c -ansi -Wall -pedantic macro.c -o macro.o -lm

main.o: main.c prototypes.h assembler.h ext_vars.h structs.h utils.h
	gcc -c -ansi -Wall -pedantic main.c -o main.o -lm

first_pass.o: first_pass.c prototypes.h assembler.h ext_vars.h structs.h utils.h
	gcc -c -ansi -Wall -pedantic first_pass.c -o first_pass.o -lm

structLabels.o: structLabels.c prototypes.h assembler.h ext_vars.h structs.h utils.h
	gcc -c -ansi -Wall -pedantic structLabels.c -o structLabels.o -lm

utils.o: utils.c prototypes.h assembler.h ext_vars.h structs.h utils.h
	gcc -c -ansi -Wall -pedantic utils.c -o utils.o -lm

second_pass.o: second_pass.c prototypes.h assembler.h ext_vars.h structs.h
	gcc -c -ansi -Wall -pedantic second_pass.c -o second_pass.o -lm

struct_ext.o: struct_ext.c prototypes.h assembler.h ext_vars.h structs.h
	gcc -c -ansi -Wall -pedantic struct_ext.c -o struct_ext.o -lm

