all: 	
	flex --outfile=scanner.c scanner.l
	bison -v --yacc --defines --output=parser.c parser.y
	gcc -g -w scanner.c parser.c symbolTable.h

run:
	./a.out < test.txt
	cat quads.txt

clean:
	rm -rf *.c
	rm -rf *.output
	rm -rf *.out
	rm -rf *.h.gch
	rm -rf parser.h
	rm -rf quads.txt
