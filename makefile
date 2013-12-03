# Makefile: A simple makefile for dnasequencer.

all: compile clean

compile: 
	@yacc -d dnasequencer.y	
	@flex -Ca dnasequencer.l
	@gcc -o dnasequencer y.tab.c lex.yy.c token.h -lfl
	@echo Compiled succesfully. File created dnasequencer
clean:
	@\rm y.tab.*
	@\rm lex.yy.c
	@echo Cleaned succesfully

