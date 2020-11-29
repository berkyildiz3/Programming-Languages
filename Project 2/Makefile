LEX = lex
YACC = yacc -d

CC = gcc


all: parser clean

parser: y.tab.o lex.yy.o
	$(CC) -o parser y.tab.o lex.yy.o 
	./parser < CS315s20_group26.test


lex.yy.o: lex.yy.c y.tab.h
lex.yy.o y.tab.o: y.tab.c


y.tab.c y.tab.h: CS315s20_group26.yacc.y
	$(YACC) -v CS315s20_group26.yacc.y


lex.yy.c: CS315s20_group26.lex.l
	$(LEX) CS315s20_group26.lex.l
clean:
	-rm -f *.o lex.yy.c *.tab.* *.output
