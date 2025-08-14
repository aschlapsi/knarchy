sudo pacman -S --noconfirm --needed \
  qtile nitrogen picom

: "${KNARCHY_DIR:=$HOME/.local/share/knarchy}"

rm -rf $HOME/.config/qtile/
mkdir -p $HOME/.config/qtile/
cp -R $KNARCHY_DIR/config/qtile/* $HOME/.config/qtile/

rm -rf $HOME/.config/picom/
mkdir -p $HOME/.config/picom/
cp -R $KNARCHY_DIR/config/picom/* $HOME/.config/picom/

