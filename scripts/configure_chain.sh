#!/usr/bin/env bash
# Prepare to launch chain

echo "Checking Chain Configuration"
# Check for the ready file marker
# if it exists, don't do it again
if [ ! -f /var/structs/ready ]
then
  echo "Configuring structsd Chain"
  if [ ! -f /var/structs/chain/config/config.toml ]
  then

    echo "Building latest structsd"
    git clone --branch v0.2.0-beta https://github.com/playstructs/structsd.git 
    cd structsd
    ignite chain build

    structsd keys add {$MONIKER}v
    structsd keys add {$MONIKER}p

  fi
	touch /var/structs/ready
fi
