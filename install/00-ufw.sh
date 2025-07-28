sudo pacman -S --noconfirm --needed ufw

sudo systemctl enable --now ufw.service
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
