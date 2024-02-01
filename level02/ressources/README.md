Level 02
========

*	We spawn with a `level02.pcap` file in root repository
*	First thing we do is to retrieve it on our machine
	```console
	root@DESKTOP-69N2SL4:~# scp -P 4242 level02@192.168.29.3:/home/user/level02/level02.pcap .
	```
*	Next we need to understand what we need to do with this file
*	PCAP file are meant to contain packet data
*	We need something to read it so at first I used _tcpdump_ but I wasn't able to undeerstand the result
*	Best result I got was using _tcpick_
	```console
	root@DESKTOP-69N2SL4:~# tcpick -yP -r level02.pcap | tr -d '\n' > picktest.tx
	```
*	We cant see the result in the _picktest.txt_ file. WE HAVE A PASSWORD -> `ft_wandr...NDRel.L0L`
*	But hold on, it doesn't work
*	I tried `tr -d "."` but the password wasn't good.
*	Last thing I did was considering that dots where actually backspace since its like a log entry and the person using it must've type the `ndr` in minuscule but was wrong so deleted them and wrote them back in caps. Did the same thing for the `l`.
*	So I tried `ft_waNDReL0L` AND IT WORKED