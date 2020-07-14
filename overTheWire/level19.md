# Level 19

bandit19:IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x

# Solution

Ssh defaults to /bin/bash but with last parameter you can make it to use /bin/dash

`ssh bandit18@$IP -p 2220 /bin/dash`