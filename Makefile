all: udp-broadcast-relay
.PHONY: all clean

udp-broadcast-relay: main.c
	$(CC) $(CFLAGS) $(LDFLAGS) -Wall main.c -o udp-broadcast-relay

clean:
	rm -f udp-broadcast-relay
