## My Arch Linux rice

- Colortheme: Monokai Pro Spectrum (spectrum.json)
- Terminal: Alacritty
- WM: i3
- Bar: polybar 
- ???: dmenu

Install jetbrains nerdfont
```
sudo pacman -S ttf-jetbrains-mono-nerd
```

Turn off greeting message in fish shell
```
set -U fish_greeting ""
```

Install starship
```
curl -sS https://starship.rs/install.sh | sh
```

Fix most symbols for starship
```
starship preset nerd-font-symbols > ~/.config/starship.toml
```

VsCode Link
```
https://marketplace.visualstudio.com/items?itemName=monokai.theme-monokai-pro-vscode
```

Nvim Link
```
https://github.com/loctvl842/monokai-pro.nvim
```