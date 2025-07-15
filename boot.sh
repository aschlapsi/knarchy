#!/bin/bash

export KNARCHY_DIR=~/.local/share/knarchy/

echo -e
echo -e "***********"
echo -e "* KNARCHY *"
echo -e "***********"

echo -e "\nUpdating system..."
sudo pacman -Syu

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning Knarchy..."
rm -rf $KNARCHY_DIR
git clone https://github.com/aschlapsi/knarchy.git $KNARCHY_DIR >/dev/null

echo -e "\nInstallation starting..."
source $KNARCHY_DIR/install.sh

