# Level01

- Came back to `/etc/passwd` file to retrieve the line on **flag01**
	> `flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash`
- Then I tried to use the online cypher identifier I used last time but it didn't find anything relevant
- The last file was called john which helped me remember the existence of *johntheripper*
- I installed it on my own machine
- Created the file `tocrack.txt` and used *johntheripper* on it
	> `john --show tocrack.txt`
	> `flag01:abcdefg:3001:3001::/home/flag/flag01:/bin/bash`
- So we can the the password here is : `abcdefg`