#!/bin/bash

#TODO
# - Input validation
# - Usage documentation
# - Check if openvpn is running and only one instance of it

# Is openvpn running?

if ! pgrep -x "openvpn" > /dev/null; then
	echo "Openvpn isn't running"
    exit
fi

# Create folder and readme

BOX_NAME=$1
IP=$2

mkdir $BOX_NAME
cd $BOX_NAME
echo "# $BOX_NAME

export IP=$IP

## Creds



## Nmap

" > readme.md

echo "Created working directory $BOX_NAME"

# Wait until the box is up

echo "Pinging the box"

MAX_COUNTER=500
COUNTER=0 # Slowing down scan rate
while ( ! ping $IP -o -c 1 -W 100 > /dev/null ) && [ $COUNTER -lt $MAX_COUNTER ]
do
    if [ $(($COUNTER % 10)) -eq 0 ] 
    then
    	printf "%c" "."
	fi
	COUNTER=$(($COUNTER+1))
done

if [ $COUNTER -eq $MAX_COUNTER ]; then
	echo "Timeout on scanning box"
	exit
fi

echo "Box is up"

# Run nmap scans

echo "Nmap inital scan"
mkdir "nmap"

nmap -sV -sC -oA nmap/inital $IP > /dev/null

# echo "Found ports:"

# echo "Port 80,443 is present so spawning gobuster"
echo "spawning gobuster"

gobuster dir -u $IP -w /opt/word_lists/DirBuster-Lists/directory-list-2.3-small.txt -o gobuster.log -x php,txt,html,sh &

# echo "Port 80,443 is present so spawning nikto"
echo "spawning nikto"

/opt/nikto/program/nikto.pl -h $IP -until 10m > nikto.txt &

# TODO
# echo "Port 139,445 is present so spawning smbdiscovery tool"

echo "Nmap full scan:"

nmap -A -p- -oA nmap/full $IP > /dev/null &

jobs
wait 
echo "All done"