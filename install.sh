set -e

trap 'echo "Knarchy installation failed! You can retry by running: source ~/.local/share/knarchy/install.sh"' ERR

for f in ~/.local/share/knarchy/install/*.sh; do
  echo -e "\nRunning installer: $f"
  source "$f"
done

sudo updatedb

echo -e "Reboot to apply all settings!"

