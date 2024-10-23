#!/bin/bash

# Download neovim
sudo pacman -S --noconfirm neovim

# Apply configs
stow nvim

echo "Some changes require a system reboot!"
