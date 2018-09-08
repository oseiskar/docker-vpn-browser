#!/bin/bash
set -e
COMMAND="$1"
echo "$COMMAND"

# If no profile ...
if [ ! -d "$HOME/.mozilla" ]; then
  # create the default Firefox profile and put some settings there
  firefox -CreateProfile default
  mv $HOME/user.js `find $HOME/.mozilla/firefox -type d | grep .default`
fi

OPENVPN_CONF='/etc/openvpn/openvpn.conf'
if [ -f "$OPENVPN_CONF" ]; then
  "$HOME/start-openvpn-blocking.sh" "$OPENVPN_CONF"
else
  echo "no OpenVPN config"
fi

# revoke sudo privileges after OpenVPN start
sudo rm /etc/sudoers.d/user

if [ ! -z ${ASSERT_COUNTRY+x} ]; then
  IP_COUNTRY=`curl ifconfig.co/country`
  echo " ---------------------------------------------------------------"
  echo "      The IP of this container seems to be in $IP_COUNTRY"
  echo " ---------------------------------------------------------------"
  if [ "$IP_COUNTRY" != "$ASSERT_COUNTRY" ]; then
    echo "*** does not match $ASSERT_COUNTRY ***"
    exit 1
  fi
fi

# Start firefox
$COMMAND
