Level 00
========

This one was quite fast.

*	First of all I went to the `/etc/passwd` file to check if there was something
*	I think I found the password of the **flag01** which I saved for later
    ```
	flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash
	```
*	Then I just used the `find` command on the **flag00** group to see if there was something interesting
	```console
	level00@SnowCrash:~$ find / -group flag00 2>/dev/null | grep -v find | grep -v proc | grep -v rofs
	/usr/sbin/john
	```
*	Decided to `cat` it and it had this inside : `cdiiddwpgswtgt`. I immediately understood that this was a **caesar code** so I used a website to find the best fitting rotation.
*	It was finally a _ROT+15_ and gave us : `nottoohardhere`