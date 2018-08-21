#!/bin/bash
set -eux
docker run -ti --rm -e DISPLAY \
  --cap-add=NET_ADMIN --device /dev/net/tun \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v `pwd`/openvpn:/etc/openvpn \
  -e ASSERT_COUNTRY \
  --dns 1.1.1.1 \
  docker-vpn-browser
