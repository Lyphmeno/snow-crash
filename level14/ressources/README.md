Level 14
========

*	This one is quite original:
	*	Nothing in spawn
	*	Nothing about group `level14`
	*	Nothing about group `flag14`
*	So the only option here would be to play with the getfile command itself !
*	Let's use gdb :
	```gdb
	level14@SnowCrash:~$ gdb /bin/getflag
	...
	(gdb) run
	Starting program: /bin/getflag 
	You should not reverse this
	```
*	Seem's liek reverse is protected, how ?
	```gdb
	(gdb) disas main
	Dump of assembler code for function main:
	...
	0x08048989 <+67>:    call   0x8048540 <ptrace@plt>
	...
	```
	Looks like this line is protecting the reverse
	I also seems like we will need to change the uid
*	Let's finish this project
	```gdb
	(gdb) b ptrace
	Breakpoint 1 at 0x8048540
	(gdb) run
	(gdb) step
	Single stepping until exit from function ptrace,
	which has no line number information.
	0x0804898e in main ()
	(gdb) set $eax=0
	(gdb) b getuid
	Breakpoint 2 at 0xb7ee4cc0
	(gdb) step
	Single stepping until exit from function main,
	which has no line number information.

	Breakpoint 2, 0xb7ee4cc0 in getuid () from /lib/i386-linux-gnu/libc.so.6
	(gdb) step
	Single stepping until exit from function getuid,
	which has no line number information.
	0x08048b02 in main ()
	(gdb) set $eax=3014
	(gdb) step
	Single stepping until exit from function main,
	which has no line number information.
	Check flag.Here is your token : 7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ
	0xb7e454d3 in __libc_start_main () from /lib/i386-linux-gnu/libc.so.6
	```