#!/usr/bin/env bash

WD="$(echo $HOME)/Downloads"

if [ -d "$WD" ]; then
  if dpkg -s "discord" &> /dev/null; then
    rm -rf $WD/discord*

    INSTALLED_DISCORD_VERSION=$(dpkg -s discord | grep -P "\d{1}.\d{1}.\d{3}" | sed 's/[^0-9]//g')
    
    URL="https://discord.com/api/download?platform=linux&format=deb"
    wget -O $WD/discord.deb $URL

    REMOTE_DISCORD_VERSION=$(dpkg-deb -I $WD/discord*.deb | grep "Version" | grep -P "\d{1}.\d{1}.\d{3}" | sed 's/[^0-9]//g') 
    
    if [[ "$INSTALLED_DISCORD_VERSION" != "$REMOTE_DISCORD_VERSION" ]]; then
      sudo dpkg -i $WD/discord.deb
    else 
      echo "Latest version already installed"
    fi

    rm -rf $WD/discord.deb 
  fi
fi
