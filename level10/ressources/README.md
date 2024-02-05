Level 10
========

*	We once again spawn with two files, one executable and one token file :
	```console
	level10@SnowCrash:~$ ls -l 
	total 16
	-rwsr-sr-x+ 1 flag10 level10 10817 Mar  5  2016 level10
	-rw-------  1 flag10 flag10     26 Mar  5  2016 token
	```
*	Once again, right to execute `level10` but no right to do nothing with `token`
	```console
	level10@SnowCrash:~$ ./level10 
	./level10 file host
	sends file to host if you have access to it
	level10@SnowCrash:~$ ./level10 token
	./level10 file host
	sends file to host if you have access to it
	```
*	So our next step would be to disassemble or gdb `level10`
	```console
	root@DESKTOP-69N2SL4:~# scp -P 4242 level10@192.168.29.3:/home/user/level10/level10 .
	root@DESKTOP-69N2SL4:~# objdump -M Intel -d level10 > dump.s
	```
*	The problem is that the code is too hard for me to understand in `asm` so I decided to translate it in *C* with the help of **Ghidra**