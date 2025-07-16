# Setup TLP
sudo pacman -S --noconfirm --needed tlp
sudo rm -f /etc/tlp.d/00-customization.conf
sudo cp $KNARCHY_DIR/config/system/tlp/00-customization.conf /etc/tlp.d/00-customization.conf

sudo systemctl enable --now tlp.service

