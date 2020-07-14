# Level 22

bandit22:Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI

# Solution

`cat /etc/cron.d/`
@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null

`cat /usr/bin/cronjob_bandit22.sh`
#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

`cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv`
Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI