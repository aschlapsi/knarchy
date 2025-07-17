sudo pacman -S --noconfirm --needed \
  qtile

rm -rf $HOME/.config/qtile/
mkdir -p $HOME/.config/qtile/
cp -R $KNARCHY_DIR/config/qtile/* $HOME/.config/qtile/

