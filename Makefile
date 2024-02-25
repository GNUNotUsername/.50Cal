CC=gcc
CFLAGS= -Wall -pedantic --std=gnu99 -g

.PHONY: 50Cal install clean
.DEFAULT_GOAL := 50Cal

50Cal: 50Cal.c
	$(CC) $(CFLAGS) 50Cal.c -o 50Cal

install:
	cp ./50Cal /usr/local/bin/50Cal

clean:
	rm -f 50Cal *.o
