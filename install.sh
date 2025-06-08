echo "Installing packages"
sudo pacman -S i3-wm polybar ttf-jetbrains-mono-nerd alacritty fish nitrogen picom dmenu

echo "Installing starship"
curl -sS https://starship.rs/install.sh | sh

echo "Copying folders"

DEST="$HOME/.config"
SOURCE=".config"

if [ ! -d "$DEST" ]; then
  mkdir -p "$DEST"
fi

cp -rf "$SOURCE/"* "$DEST"

echo "Change default terminal"
chsh -s /usr/bin/fish
fish

echo "Setuping shell"
set -U fish_greeting ""
starship preset nerd-font-symbols > ~/.config/starship.toml

