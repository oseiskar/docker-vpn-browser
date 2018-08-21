#!/bin/bash
set -e -o pipefail

CONF="$1"
sudo openvpn "$CONF" | tee "$HOME/openvpn.log" &

while [ `tail "$HOME/openvpn.log" | grep "Initialization Sequence Completed" | wc -l` == "0" ];
do
  echo "... still waiting for OpenVPN to start"
  sleep 2
done
