set -e

trap 'echo "Knarchy installation failed! You can retry by running: source $KNARCHY_DIR/install.sh"' ERR

for f in $KNARCHY_DIR/install/*.sh; do
  echo -e "\nRunning installer: $f"
  source "$f"
done

#sudo updatedb

git clone https://github.com/aschlapsi/dotfiles.git ~/.local/share/dotfiles >/dev/null
cd ~/.local/share/dotfiles
stow hyprland
stow hypridle
stow hyprlock
stow hyprpaper
stow waybar
stow backgrounds

echo -e "Reboot to apply all settings!"

