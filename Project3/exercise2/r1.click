require (library /home/comnetsii/elements/routerport.click);

RatedSource(DATA "Hello!!")->Print(Sending, CONTENTS ASCII )->RouterPort(DEV $dev, IN_ADDR $in_addr, OUT_ADDR $out_addr, IN_PORT $in_port, OUT_PORT $out_port, IN_MAC $in_mac, OUT_MAC $out_mac)->Discard

