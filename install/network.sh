if ! command -v iwd &>/dev/null; then
  paru -S --noconfirm --needed iwd
  sudo systemctl enable --now iwd.service
fi

