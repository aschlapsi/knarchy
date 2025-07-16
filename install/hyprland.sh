yay -S --noconfirm --needed \
  hyprland hyprshot hyprpicker hyprlock hypridle hyprland-qtutils \
  hyprpaper wofi waybar swaync xdg-desktop-portal-hyprland \
  xdg-desktop-portal-gtk cliphist

# Start Hyprland on first session
#echo "[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland" >~/.bash_profile

rm -rf $HOME/.config/hypr
rm -rf $HOME/.config/waybar
cp -R $KNARCHY_DIR/config/hyprland/* $HOME/.config/hypr/
cp -R $KNARCHY_DIR/config/waybar/* $HOME/.config/waybar/
# Set defaults
ln -s $HOME/.config/hypr/backgrounds/solitude.jpg $HOME/.config/hypr/backgrounds/wallpaper.jpg
ln -s $HOME/.config/hypr/device-dependent/none.conf $HOME/.config/hypr/device-dependent/current.conf

