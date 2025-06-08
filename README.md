## My Arch Linux rice

- Colortheme: Monokai Pro Spectrum (spectrum.json)



Install fish terminal and setup as default
```
sudo pacman -S fish
chsh -s /usr/bin/fish
```

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