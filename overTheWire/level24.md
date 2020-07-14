# Level 24

bandit24:UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

# Solution

`cat /etc/cron.d/cronjob_bandit24`
@reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
* * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null

`cat /usr/bin/cronjob_bandit24.sh`
```
#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname
echo "Executing and deleting all scripts in /var/spool/$myname:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        owner="$(stat --format "%U" ./$i)"
        if [ "${owner}" = "bandit23" ]; then
            timeout -s 9 60 ./$i
        fi
        rm -f ./$i
    fi
done
```

Leaking with copy does not seem to work due to permission rights. So I ended up
creating a nc listener and calling that from the crontab

bandit23@bandit:~$ nc -lp 8080
UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ