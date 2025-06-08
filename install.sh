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

cp -fr "$SOURCE/"* "$DEST"

echo "Change default terminal"
chsh -s /usr/bin/fish
fish

FISH_DEST="$HOME/.config/fish/config.fish"
FISH_DEST1="$HOME/.config/fish/fish_variables"
FISH_SOURCE=".config/fish/config.fish"
FISH_SOURCE1=".config/fish/fish_variables"

mkdir -p "$FISH_DEST"
mv -f "$FISH_SOURCE" "$FISH_DEST"
mv -f "$FISH_SOURCE1" "$FISH_DEST1"

echo "Setuping shell"
set -U fish_greeting ""
starship preset nerd-font-symbols > ~/.config/starship.toml

