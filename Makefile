CC=i586-mingw32msvc-gcc
CFLAGS=-O2 -s -Wall -D_WIN32_WINNT=0x0500
WINDRES=i586-mingw32msvc-windres

all: debug

debug: main.c
	$(CC) $(CFLAGS) -D_DEBUG -o cncqm.exe main.c -lws2_32

clean:
	rm -f cncqm.exe
