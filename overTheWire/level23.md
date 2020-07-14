# Level 23

bandit23:jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n

# Solution

`cat /etc/cron.d/cronjob_bandit23`
@reboot bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
* * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null

`cat /usr/bin/cronjob_bandit23.sh`
#!/bin/bash

myname=$(whoami)
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

cat /etc/bandit_pass/$myname > /tmp/$mytarget



We need to find the correct /tmp/ dir
`echo I am user bandit22 | md5sum | cut -d ' ' -f 1`
gives the current password
`echo I am user bandit23 | md5sum | cut -d ' ' -f 1`
gives the new password