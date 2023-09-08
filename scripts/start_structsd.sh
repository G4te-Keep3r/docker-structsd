#!/usr/bin/env bash

# launch the Structs blockchain

echo $PATH
# Check for the Ready file
while [ ! -f /var/structs/ready ]
do
	echo "Waiting for chain to the ready..."
	sleep 60
done

structsd start --home /var/structs/chain


