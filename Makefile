# Makefile for ayacc
# Original author: Bell Labs
# Current author: ZeroCool32

CFLAGS=-O -DWORD32
head: ayacc 
ayacc: y1.o y2.o y3.o y4.o
	$(CC) -o ayacc y?.o 
y1.o y2.o y3.o y4.o: dextern files
install:
	install -s ayacc $(DESTDIR)/usr/local/bin
	install -c ayaccpar $(DESTDIR)/usr/local/lib
clean :
	rm -f *.o ayacc yacc.acts yacc.tmp y.tab.c
