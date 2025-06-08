echo "Installing packages"
sudo pacman -S i3-wm polybar ttf-jetbrains-mono-nerd alacritty fish nitrogen picom dmenu

echo "Installing starship"
curl -sS https://starship.rs/install.sh | sh

echo "Copying folders"

fishDEST="$HOME/.config/fish"
fishSOURCE=".config/fish"

if [ ! -d "$i3DEST" ]; then
  mkdir -p "$i3DEST"
fi

cp -r "$i3SOURCE/"* "$i3DEST"

i3DEST="$HOME/.config/i3"
i3SOURCE=".config/i3"

if [ ! -d "$i3DEST" ]; then
  mkdir -p "$i3DEST"
fi

cp -r "$i3SOURCE/"* "$i3DEST"

echo "Change default terminal"
chsh -s /usr/bin/fish
fish

echo "Setuping shell"
set -U fish_greeting ""
starship preset nerd-font-symbols > ~/.config/starship.toml

