Snow-Crash Project
===================

Welcome to the Snow-Crash !

This one is the first CTF type project I did at 42.

Description
-----------

This project aims to make you discover, through several little challenges, cyber security in various fields.
You will log on a Virtual Machine as `level00` user. The goal is to find the password of the next user until `level09`or `level14`.
The command `getflag` will allow you to retrieve the password if you are logged as `flagXX`.

Exemple :
```console
level00@SnowCrash:~$ su flag00
Password :
flag00@SnowCrash:~$ getflag
*******************************
flag00@SnowCrash:~$ su level01
Password :
level01@SnowCrash:~$
```

Requierements
-------------

-  Keep everything you used to resolve a level
-  You cannot bruteforce the ssh connection
-  You will have to do it all during the correction so you can help yourself with your own documentation
-  You are forbidden to put any binary in the repository

Levels
------
### Mandatory :

- [level00](level00) : File finding and decypher
- [level01](level01) : Password finding and SHA1 bruteforce
- [level02](level02) : Retrieve TCP data to find Password
- [level03](level03) : GDB exploit env PATH built-in
- [level04](level04) : Perl CGI interpretation vulnerability
- [level05](level05) : Crontab DIR execution
- [level06](level06) : PHP regex vulnerability
- [level07](level07) : ENV vulnerability
- [level08](level08) : Symbolic link filename protection
- [level09](level09) : Non-printable reverse rot

#### Bonus :
- [level10](level10) : Race condition on file execution
- [level11](level11) : LUA pipe interpretation exploit
- [level12](level12) : Perl CGI URL encoding execution
- [level13](level13) : GBD uid value set
- [level14](level14) : GDB binary exploit with uids 

Getting started
---------------

- First of all I recommend to have done the [libasm](https://github.com/Lyphmeno/libasm) project with bonuses because it will help you understand most of the dump executable dumps without having to translate them to C
- The project is pretty easy even without any knowledge of CTF
- The most important command in the first levels will be `find` !

Ressources
----------

[GDB Documentation](https://sourceware.org/gdb/current/onlinedocs/gdb.html/)
[NASM Doctumentation](https://www.nasm.us/docs.php)
*The rest of my documentation will be in the readme of each levels*
