require (library /home/comnetsii/elements/routerport.click);

Idle-> rp::RouterPort(DEV $dev, IN_ADDR $in_addr, OUT_ADDR $out_addr, IN_PORT $in_port, OUT_PORT $out_port, IN_MAC $in_mac, OUT_MAC $out_mac);

rp ->Print("Changed",CONTENTS ASCII )->Discard;
