## Quick access to common used oneliners

# suid files
`find / -user root -perm -4000 -exec ls -ldb {} \; 2>/dev/null`

# LinEnum
Upload		`scp /opt/LinEnum.sh user@$IP:/tmp`
Run 		`chmod +x /tmp/LinEnum.sh && /tmp/LinEnum.sh | tee /tmp/linlog.txt` 
Download	`scp user@$IP:/tmp/linlog.txt linlog.txt`