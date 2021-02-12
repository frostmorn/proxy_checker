SHELL = /bin/sh
SYSTEM = $(shell uname)
C++ = g++
CC = gcc
DFLAGS = 
OFLAGS = -O3
LFLAGS = -lpthread
CFLAGS = -g3 -Wall
OBJS = 
COBJS = log.o proxy.o sblist.o socks4.o socks5.o main.o http.o
PROGS = ./proxy_checker

all: $(OBJS) $(COBJS) $(PROGS)

./proxy_checker: $(OBJS) $(COBJS)
	$(CC) -o proxy_checker $(OBJS) $(COBJS) $(LFLAGS)

clean:
	rm -f $(OBJS) $(COBJS) $(PROGS)

$(OBJS): %.o: %.cpp
	$(C++) -o $@ $(CFLAGS) -c $<

$(COBJS): %.o: %.c
	$(CC) -o $@ $(CFLAGS) -c $<

all: $(PROGS)
