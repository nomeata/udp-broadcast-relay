udp-broadcast-relay: main.c
	gcc -g main.c -o udp-broadcast-relay

clean:
	rm -f udp-broadcast-relay
