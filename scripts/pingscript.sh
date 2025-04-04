#!/bin/bash

if [ "$1" == "" ]; then
	echo "Usage: ./pingscript.sh [network]"
	echo "Example: ./pingscript.sh 192.168.20"
else
	for x in $(seq 1 254); do
		ping -c 1 -W 1 "$1.$x" | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//' &
	done
fi
