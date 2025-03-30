#!/bin/bash

read -p "Enter ip address you want to check: " ip_address

while true
do
	if ping -q -c 2 -W 1 $ip_address  > /dev/null; then
		echo "System is Reachable"
		break
	else
		echo "System is not alive yet. Sending another ping request in 2 seconds"
	fi
sleep 2
done
