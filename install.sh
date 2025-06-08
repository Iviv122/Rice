echo "Installing packages"
sudo pacman -S i3-wm polybar ttf-jetbrains-mono-nerd alacritty fish nitrogen picom dmenu

echo "Installing starship"
curl -sS https://starship.rs/install.sh | sh

echo "Copying folders"

DEST="$HOME/.config"
SOURCE=".config"

mkdir -p "$DEST"
cp -fr "$SOURCE/"* "$DEST"

echo "Change default terminal"
chsh -s /usr/bin/fish


WallpaperSOURCE="./assets/triangle.png"
WallpaperDIR="$HOME/Pictures/Wallpaper"
WallpaperDEST="$WallpaperDIR/triangle.png"

mkdir -p "$WallpaperDIR"
cp "$WallpaperSOURCE" "$WallpaperDEST"

nitrogen --no-recurse --set-scaled "$WallpaperDEST" --save
