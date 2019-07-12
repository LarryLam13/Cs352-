RatedSource(DATA "HELLO WORLD!", RATE 1, LIMIT 1, STOP true)-> 
IPEncap(4,192.168.1.1,192.168.1.2)->
EtherEncap(0x0800,42:86:92:cb:69:9c,02:9d:c7:bb:1c:27)->
Queue->
ToDevice(veth1);



