Level 04
========

*   This time we spawn with one file, but like everytime -> We use find
	```console
    > `find / -group level04 2>/dev/null | grep -v find | grep -v proc | grep -v rofs`
    > _Those grep remove files without permissions and proc files_
	```
*   So we get these two files :
    > `/var/www/level04/level04.pl`
    > `/rofs/var/www/level04/level04.pl`
*   They have the exact same Perl script, the only difference here is the permissions they are given
    > `-rwsr-sr-x 1 flag04 level04 152 Mar 5 2016 level04.pl`
    > `-r-xr-x--- 1 flag04 level04 152 Mar 12 2016 level04.pl`
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