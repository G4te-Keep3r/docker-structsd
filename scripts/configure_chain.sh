#!/usr/bin/env bash
# Prepare to launch chain

echo "Checking Chain Configuration"
# Check for the ready file marker
# if it exists, don't do it again
echo "Building latest structsd"
git clone --branch v0.2.0-beta https://github.com/playstructs/structsd.git 
cd structsd
ignite chain build

structsd keys add wallet1 --recover
structsd keys add wallet2 --recover

touch /var/structs/ready
