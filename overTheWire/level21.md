# Level 21

bandit21:gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr

# Solution

Confusing challenge description but the gist is to host a port 
that responds with the current password when called by the suid
file in the user root of bandit20

Lets host a port that responds a password
`nc -lp 8080`

After that we can call it in a new terminal
`./suconnect 8080`

and then respond the password of lvl20
`GbKksEFF4yrVs6il55v6gwY5aVje5f0j`
gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr

Read: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
Password matches, sending next password