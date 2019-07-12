require (library /home/comnetsii/elements/routerport.click);

rp :: RouterPort(DEV $dev, IN_ADDR $in_addr, OUT_ADDR $out_addr, IN_PORT $in_port, OUT_PORT $out_port, IN_MAC $in_mac, OUT_MAC $out_mac);

rp->SimpleAgnosticElement(MAXPACKETSIZE 50)->changeContents(0, "Goodbye")->Print("Changing Packets")->rp;
