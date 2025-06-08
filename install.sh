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

FISH_DEST="~/.config/fish/config.fish"
FISH_DEST1="~/.config/fish/fish_variables"
FISH_SOURCE=".config/fish/config.fish"
FISH_SOURCE1=".config/fish/fish_variables"

WallpaperSOURCE="./assets/triangle.png"
WallpaperDIR="~/Pictures/Wallpaper"
WallpaperDEST="~/Pictures/Wallpaper/triangle.png"

if [ ! -d "$WallpaperDIR" ]; then
  mkdir -p "$WallpaperDIR"
fi

cp "$WallpaperSOURCE" "$WallpaperDEST"

nitrogen --set-scaled $WallpaperDEST  --save 
