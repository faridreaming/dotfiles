#!/bin/bash

# Download terminal emulator and shell
sudo pacman -S --noconfirm kitty fish

# Download nerd fonts
yay -S ttf-jetbrains-mono-nerd

# Download shell fish theme
curl -L https://get.oh-my.fish | fish
omf install agnoster
omf theme agnoster

# Change shell for user
chsh -s /usr/bin/fish

# Apply configs
stow kitty fish fastfetch

echo "Terminal setup completed!"
echo "Some changes require a system reboot!"
