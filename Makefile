all : all.out

all.out : test.o sum.o sqr.o
	gcc test.o sum.o sqr.o -o all.out
test.o : test.c myutils.h
	gcc test.c -c
sum.o : sum.c myutils.h
	gcc sum.c -c
sqr.o : sqr.c myutils.h
	gcc sqr.c -c
clean :
	rm -rf all.out test.o
