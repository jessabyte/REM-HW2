#!/bin/bash

if [ -f $1]; then
	echo "Usage: ./sasserScanner.sh  {IP address to scan}"
	exit 1
fi

echo "Welcome to the SasserScanner"

iptext="Scanning $1"
echo -e "Scanning $1 \n"

nc=`nc -z -vv $1 5554`

if [[ $? -eq 0 ]]; then
	echo -e "\nSasser is potentially active on the ip $1"
else
	echo -e "\nThis machine is Sasser-free!"
fi

exit 0
