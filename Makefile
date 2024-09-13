all : all.out

all.out : simple.o sum.o sqr.o
	gcc simple.o sum.o sqr.o -o all.out
simple.o : simple.c myutils.h
	gcc simple.c -c
sum.o : sum.c myutils.h
	gcc sum.c -c
sqr.o : sqr.c myutils.h
	gcc sqr.c -c
clean :
	rm -rf all.out test.o
cppcheck:
	cppcheck  simple.c sum.c sqr.c --error-exitcode=5
memcheck: all.out
	valgrind --leak-check=full --error-exitcode=1 ./all.out 
