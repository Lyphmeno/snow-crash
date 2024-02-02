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