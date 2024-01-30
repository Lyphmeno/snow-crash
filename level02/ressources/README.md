# Level02

- We spawn with a `level02.pcap` file in root repository
- First thing we do is to retrieve it on our machine 
	> `scp -P 4242 level02@192.168.29.3:/home/user/level02/level02.pcap .`
- Next we need to understand what we need to do with this file
- PCAP file are meant to contain packet data
- We need something to read it so at first I used *tcpdump* but I wasn't able to undeerstand the result
- Best result I  got was using *tcpick*
	> `tcpick -yP -r level02.pcap | tr -d '\n' > picktest.tx`
- We cant see the result in the *picktest.txt* file. WE HAVE A PASSWORD -> `ft_wandr...NDRel.L0L`
- But hold on, it doesn't work
- Instead of `tr -d "."`. Instead I saw thought that spaces could replace backspace
- So I tried `ft_waNDReL0L` AND THANK GOD IT WORKED