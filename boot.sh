#!/bin/bash

export KNARCHY_DIR=~/.local/share/knarchy/

echo -e
echo -e "***********"
echo -e "* KNARCHY *"
echo -e "***********"
echo -e "\nInstalling to $KNARCHY_DIR\n"

echo -e "\nUpdating system..."
sudo pacman -Syu

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning Knarchy..."
rm -rf ~/.local/share/knarchy/
git clone https://github.com/aschlapsi/knarchy.git ~/.local/share/knarchy >/dev/null

echo -e "\nInstallation starting..."
#source ~/.local/share/knarchy/install.sh

