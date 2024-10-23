#!/bin/bash

# Download neovim and its clipboard
sudo pacman -S --noconfirm neovim xclip

# Apply configs
stow nvim
