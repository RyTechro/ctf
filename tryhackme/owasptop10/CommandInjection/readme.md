# Command Injection

export IP=10.10.137.11

## 1 - What strange text file is in the website root directory

The text said to navigate to `IP/evilshell.php`. From there running `ls` yields the following
```
css drpepper.txt evilshell.php index.php js
```
The answer to #1 is that drpepper file. For giggles I looked inside it and saw
```
I love Dr Pepper
```

## 2 - How many non-root/non-service/non-deamon users are there?

This question is a bit strangly worded but it seems to point to reading `/etc/passwd`. Catting that out yields the result that can be found in the `etc_passwd.txt` file.

Counting the results resulted on no (0) users on this system. This seems odd but is the correct answer

## 3 - What user is this app running as?

This question is simple. Running `whoami` returns `www-data`. Which is the correct answer.

## 4 - What is the user's shell set as?

Since there is no user on the box, I will assume this implies the www-data user. His shell is set to `/usr/sbin/nologin` which is the correct answer.


## 5 - What version of Ubuntu is running?

Taking this and #6 in the wrong order the MOTD shows `18.04.4`

## 6 - Print out the MOTD. What favorite beverage is shown?

This one I had to google for. MOTD stands for Message Of The Day. The message of the day can be generated with `run-parts /etc/update-motd.d`. First my attempts were to run this from the webshell, this yielded no results. Allong with the hint about 00-header I decided to make a remote shell into the server using the pentestmonkey php shell. After that catting out `cat /etc/update-motd.d/00-header` was easy and yielded the file. At the bottom of this file `DR PEPPER MAKES THE WORLD TASTE BETTER!` can be found. Making `DR PEPPER` the correct answer.
