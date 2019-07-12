LARRY LAM
DWIGHT RAMSEY
DANIEL HOLLASCH

- Ran sudo createNet2
- Ran sudo ifconfig veth1 192.168.1.1
- Ran sudo ifconfig veth2 192.168.1.2
- Ran sudo ifconfig veth2 192.168.1.3

- For r1.click, ran:
sudo ~/click/userlevel/click r1.click dev=veth2 in_addr=192.168.1.1 out_addr=192.168.1.2 in_port=10001 out_port=10002 in_mac=36:fe:c7:5b:1b:07 out_mac=a6:31:24:9f:df:6

- For r2.click, ran:
sudo ~/click/userlevel/click r2.click dev=veth3 in_addr=192.168.1.2 out_addr=192.168.1.3 in_port=10002 out_port=10003 in_mac=a6:31:24:9f:df:6c out_mac=12:ea:f3:6c:78:f3

- For r3.click, ran:
sudo ~/click/userlevel/click r3.click dev=veth2 in_addr=192.168.1.3 out_addr=192.168.1.2 in_port=10003 out_port=10002 in_mac=12:ea:f3:6c:78:f3 out_mac=a6:31:24:9f:df:6c

- r1 generates a packet with a messages inside. It then sends it to r2 using routerport. 

- r2 receieves the packet using routerport. r2 then, using our SimpleAgnosticElement and changeContents elements, changes the contents and sends it to r3.

- r3 finally receives the alerted packet using routerport and prints it out.