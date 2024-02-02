Level 08
========

*	We spawn with two files at root
	```console
	level08@SnowCrash:~$ ls -l 
	total 16
	-rwsr-s---+ 1 flag08 level08 8617 Mar  5  2016 level08
	-rw-------  1 flag08 flag08    26 Mar  5  2016 token
	```
*	We can't read token (I am guessing this is your password/flag)
*	But we can execute `level08`
	```console
	level08@SnowCrash:~$ ./level08 
	./level08 [file to read]
	```
*	We are obviously trying this one even thought I doubt it
	```console
	level08@SnowCrash:~$ ./level08 token
	You may not access 'token'
	```
*	From now on, nothing change, we still can't read token, so I decided to do like in the level03 and try to get a good look at the code
	```console
	root@DESKTOP-69N2SL4:~# scp -P 4242 level08@192.168.29.3:/home/user/level08/level08 .
	root@DESKTOP-69N2SL4:~# objdump -M Intel -d level08 > dump.s
	root@DESKTOP-69N2SL4:~# sh cutlines.sh
	```
*	After reading the code I could notice that it was searching for a namefile with strstr containing the word `token` in it
*	At the end, all we had to do is this (I added a mistake exemple to prove the strstr theory)
	```console
	level08@SnowCrash:~$ ln -s /home/user/level08/token /tmp/tokentest
	level08@SnowCrash:~$ ./level08 /tmp/tokentest
	You may not access '/tmp/tokentest'
	level08@SnowCrash:~$ ln -s /home/user/level08/token /tmp/link
	level08@SnowCrash:~$ ./level08 /tmp/link
	quif5eloekouj29ke0vouxean
	```