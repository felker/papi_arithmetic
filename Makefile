CC=gcc
CFLAGS=
LIBS=-lpapi
OBJ=arithmetic.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

arithmetic: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f *.o arithmetic
