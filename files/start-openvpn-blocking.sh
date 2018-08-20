#!/bin/bash
set -eux -o pipefail

CONF="$1"
sudo openvpn "$CONF" > "$HOME/openvpn.log" &

while [ `tail "$HOME/openvpn.log" | grep "Initialization Sequence Completed" | wc -l` == "0" ];
do
  # echo "still not done"
  sleep 2
done
