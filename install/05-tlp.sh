# Setup TLP
sudo pacman -S --noconfirm --needed tlp

if [ ! -e /etc/tlp.d/00-customization.conf ]; then
	sudo ln -s ~/.local/share/knarchy/config/tlp/00-customization.conf /etc/tlp.d/00-customization.conf
fi

