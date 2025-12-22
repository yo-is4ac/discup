#!/usr/bin/env bash

wd=$(pwd)

url="https://discord.com/api/download?platform=linux&format=deb"
wget -O ./discord.deb $url

sudo dpkg -i $wd/discord.deb
rm -rf $wd/discord.deb
