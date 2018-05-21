# Makefile for combining flex, bison, and gcc.
#
# Prof. Joel Adams, CS 214 Lab 02 at Calvin College.
#
# Just change the value assigned to BIN to the beginning
# of the name of your lex and bison specification files.

BIN = example6

$(BIN): $(BIN).lex $(BIN).y
	flex $(BIN).lex
	bison -d $(BIN).y
	gcc lex.yy.c $(BIN).tab.c -o $(BIN) -lfl

clean:
	rm -f lex.yy.c *.tab.h *.tab.c $(BIN)


