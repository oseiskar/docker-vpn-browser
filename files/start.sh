#!/bin/bash
set -e

# If no profile ...
if [ ! -d "$HOME/.mozilla" ]; then
  # create the default Firefox profile and put some settings there
  firefox -CreateProfile default
  mv $HOME/user.js `find $HOME/.mozilla/firefox -type d | grep .default`
fi

# Start firefox
firefox
