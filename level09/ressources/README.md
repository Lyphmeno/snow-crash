Level 09
========

*	Same pattern than last time:
	```console
	level09@SnowCrash:~$ ls -l 
	total 12
	-rwsr-sr-x 1 flag09 level09 7640 Mar  5  2016 level09
	----r--r-- 1 flag09 level09   26 Mar  5  2016 token
	```
	Except this time we can read `token`
*	When we try to execute `level09` we can see that it is a simpler *ceasar's cipher* depending on the position of each letter
	```console
	level09@SnowCrash:~$ ./level09 abcdef
	acegik
	level09@SnowCrash:~$ ./level09 aaaaaa
	abcdef
	```
*	When we print `token` we got this (Added `-e` since we got some non printable characters)
	```console
	level09@SnowCrash:~$ cat -e token
	f4kmm6p|=M-^B^?pM-^BnM-^CM-^BDBM-^CDu{^?M-^LM-^I
	```
*	So as we can guess, the code must've been applied to the password. We have to reverse it
*	Most basic way is to do it manually but I though it was cleaner to make a program instead because we could've had a much bigger line
*	I had a hard time using my code with `non-printable` char so what I did was retrieving the `token` file and then use my program on the file
	```console
	root@DESKTOP-69N2SL4:~# scp -P 4242 level09@192.168.29.3:/home/user/level09/token .
	root@DESKTOP-69N2SL4:~# gcc rot.c; ./a.out token
	f3iji1ju5yuevaus41q1afiuq
	```
*	And now we just have to get the flag
	```console
	level09@SnowCrash:~$ su flag09
	Password: 
	Don't forget to launch getflag !
	flag09@SnowCrash:~$ getflag
	Check flag.Here is your token : s5cAJpM8ev6XHw998pRWG728z
	```