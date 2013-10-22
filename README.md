UDP Broadcast Packet Relay
==========================

This program listens for packets on a specified UDP broadcast port. When
a packet is received, it sends that packet to all specified interfaces
but the one it came from as though it originated from the original
sender.

The primary purpose of this is to allow games on machines on separated
local networks (Ethernet, WLAN) that use udp broadcasts to find each
other to do so.

It also works on ppp links, so you can log in from windows boxes (e.g.
using pptp) and play LAN-based games together. Currently, you have to
care about upcoming or downgoing interfaces yourself.

INSTALL
-------

    make 
    cp udp-broadcast-relay /some/where

USAGE
-----

    /some/where/udp-broadcast-relay id udp-port eth0 eth1...

udp-broadcast-relay must be run as root to be able to create a raw
socket (necessary) to send packets as though they originated from the
original sender.

COMPATIBILITY
-------------

-   I run debian woody with Linux 2.4.20, and here it works.

EXAMPLE
-------

    /some/where/udp-broadcast-relay -f 1 6112 eth0 eth1  # forward Warcraft 3 broadcast packets

CONTRIBUTORS
-----------------

Over the last years, various people submitted code to the project. Note that I
do not use udp-broadcast-relay any more myself, so these changes were not
tested by me.

-   Patrick Huesmann submitted a patch to make udp-broadcast-relay send
    the packes to those NICs it did not recieve it from, based on the
    actual socket, not the broadcast IP. This is useful if more than one
    physical networks share the same broadcast range.
-   Савченко В. М. submitted an `ip-up.local` an `ip-down.local` file to
    automatically restart udp-broadcast-relay when new ppp-interfaces
    come up, see `ppp-if.up-local` for details.
-   Roman Hoog Antink contributed the option `-s` to spoof the source IP of
    forwarded packages.

Thanks to all contributors!

BUGS/CRITICISM/PATCHES/ETC
--------------------------

-   Web: <http://www.joachim-breitner.de/udp-broadcast-relay/>
-   e-mail:   Joachim Breitner <<mail@joachim-breitner.de>>
-   Github: <https://github.com/nomeata/udp-broadcast-relay/>

HISTORY
-------

*   0.3 2003-09-28

    Sending packets also to ppp addresses

*   0.2 2003-09-18

    Flags for debugging and forking, Compilefixes, Makefile-Target
    "clean"

*   0.1 2003-09-15

    Initial rewrite of udp_broadcast_fw

CREDITS
-------

This is based upon [udp_broadcast_fw](http://www.serverquery.com/udp_broadcast_fw/) by Nathan O'Sullivan.

HISTORY of udp_broadcast_fw
---------------------------

*   0.1.1 - 19 Feb 02

    Moved fork() code to just before main loop so that errors would
    appear

*   0.1 - 18 Feb 02

    Initial release

LICENSE
-------

This code is made available under the GPL. Read the COPYING file inside
the archive for more info.
