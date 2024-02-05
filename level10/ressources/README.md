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
	root@DESKTOP-69N2SL4:~# sh cutline.sh
	```
*	Not gonna lie, my asm isn't that good so I used an [online](https://dogbolt.org/) **Ghidra** to disassemble the file to *C* -> [level10.c](level10.c)
*	To summarize the file from what I understood, the program tries to access the file in argument and if possible, opens it and writes it into a *socket*
*	Next thing we have to do is to find the vulnerability in the code. I found a really good article about this [here](https://vulncat.fortify.com/en/detail?id=desc.controlflow.cpp.file_access_race_condition)
*	It tells us that there is a `race window` between when a file property is checked and when the file is used which can be exploited to launch a privilege escalation attack !!!
*	First thing is to find which *socket*
	```C
    uVar1 = htons(0x1b39);
	```
	`0x1b39 = 6969` - Don't forget to retrieve in a file what the port listenned
	```console
	level10@SnowCrash:~$ nc -lk 6969 > /tmp/level10port.log
	```
*	This is where it gets tricky, we need two scripts
	- The [first](loopCreate.sh) one will:
		1.	Create a file with permissions for evey user
		2.	Delete this file
		3.	Create a symlink on token with permissions for every user
		4.	Delete this link
	- And the [second](loopExe.sh) on will loop an execution of `level10` to our *symlink*
*	Let's do this!
*	Last but not least we need to grep those things the program wrote in the socket
	```C
    sVar4 = write(iVar2,".*( )*.\n",8);
	```
*	We should now be able to retrieve our flag password
	```console
	level10@SnowCrash:~$ cat /tmp/level10port.log | grep -v ".*( )*."
	woupa2yuojeeaaed06riuj63c
	level10@SnowCrash:~$ su flag10
	Password: 
	Don't forget to launch getflag !
	```
