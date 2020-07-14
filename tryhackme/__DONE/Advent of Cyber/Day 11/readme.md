## Elf Applications

10.10.59.101

scanning services.

# Credentials

mysql database:
admin:bestpassword

mysql:
root:ff912ABD*

# nmap

First using `nmap -sS <ip>` for a quick scan, followd up by `nmap -p- <ip>` for a detailed scan.

# ftp

ftp (port 21)

default user: (`anonymous:anonymous`)

# nfs

(port 111:|2049)

Scan for nfs dirs with `showmount -e <ip>`
Then mount with `sudo mount -o resvport <ip>:/dir/to/mount /local/file/path`
After that `sudo unmount /local/file/path`

# MySQL

(port 3306)

No common misconfig

connect to remote `mysql -h <ip> -u <user> -p`

Found on remote a `data` database that has table `USERS`

# ssh

Only with public key

