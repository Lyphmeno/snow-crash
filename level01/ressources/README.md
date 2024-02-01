Level 01
========

*	Came back to `/etc/passwd` file to retrieve the line on **flag01**
	```console
	level01@SnowCrash:~$ cat /etc/passwd
	flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash
	```
*	Then I tried to use the online cypher identifier on this `42hDRfypTqqnw` I used last time but it didn't find anything relevant
*	The last file was called john which helped me remember the existence of _johntheripper_
*	I installed it on my own machine
*	Created the file `tocrack.txt` and used _johntheripper_ on it
	```console
	root@DESKTOP-69N2SL4:~# john --show tocrack.txt 
	flag01:abcdefg:3001:3001::/home/flag/flag01:/bin/bash
	1 password hash cracked, 0 left
	```
*	So we can the the password here is : `abcdefg`