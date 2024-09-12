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
	cppcheck --enable=all simple.c sum.c sqr.c
memcheck: all.out
	valgrind ./all.out
