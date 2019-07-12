FromDevice(veth2)-> 
Strip(14)->
Strip(20)-> 
Print("GOT IT" , CONTENTS ASCII)->
IPEncap(4,192.168.1.2,192.168.1.1)->
EtherEncap(0x0800,02:9d:c7:bb:1c:27,42:86:92:cb:69:9c)->
Queue->
Print("sending",CONTENTS ASCII)->
ToDevice(veth2);

