#!/bin/bash

sudo pacman -Syu

# Setup TLP
sudo pacman -S --needed tlp

if [ ! -e /etc/tlp.d/00-customization.conf ]; then
	sudo ln -s $(pwd)/tlp/00-customization.conf /etc/tlp.d/00-customization.conf
fi


