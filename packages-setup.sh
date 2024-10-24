#!/bin/bash

# List of packages
packages=(
  spectle
  fastfetch
  nodejs
  npm
  htop
  unzip
  tree
  code
)

# Install all packages
sudo pacman -S --noconfirm "${packages[@]}"

echo "Packages setup completed!"
