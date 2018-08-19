#!/bin/sh
docker run -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix docker-vpn-browser
