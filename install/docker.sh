paru -S --noconfirm --needed docker docker-compose

sudo systemctl enable docker

sudo usermod -aG docker ${USER}

