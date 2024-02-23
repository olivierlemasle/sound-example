CC=gcc
CFLAGS=`pkg-config --cflags webkit2gtk-4.1`
LIBS=`pkg-config --libs webkit2gtk-4.1`

test: main.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm test