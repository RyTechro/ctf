python3 -c 'import pty; pty.spawn("/bin/bash")'

stty raw -echo
fg
export TERM=xterm