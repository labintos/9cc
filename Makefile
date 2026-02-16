CFLAGS=-std=c11 -g -static

9cc: 9cc.c

test: 9cc
<<<<<<< HEAD
	./test.sh

clean:
	rm -f 9cc *.o *~ t,p*
=======
		./test.sh

clean:
		rm -f 9cc *.o *~ tmp*
>>>>>>> master

.PHONY: test clean
