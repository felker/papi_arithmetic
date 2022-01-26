CC=gcc
CFLAGS=-O0
#CFLAGS=-O2
#CFLAGS=-O2 -ffast-math
LIBS=-lpapi
OBJ=arithmetic.o

%.o: %.c $(DEPS)
#	$(CC) -S -masm=intel $< $(CFLAGS)
	$(CC) -c -o $@ $< $(CFLAGS)

arithmetic: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f *.o arithmetic
