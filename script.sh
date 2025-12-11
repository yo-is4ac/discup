#!/usr/bin/env bash

url="https://discord.com/api/download?platform=linux&format=deb"
wget -q -O ./discord.deb $url

sudo apt install ./discord.deb
rm -rf ./discord.deb
