#!/bin/bash

sudo pacman -S unzip

# FiraCode Nerd FontのダウンロードURL
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/AnonymousPro.zip"
FONT_DIR="$HOME/.local/share/fonts"
ZIP_FILE="AnonymicePro.zip"

mkdir -p "$FONT_DIR"

echo "Downloading Font..."
wget -O "$ZIP_FILE" "$FONT_URL"

echo "Unzipping Font..."
unzip "$ZIP_FILE" -d "$FONT_DIR"

echo "Updating font cache..."
fc-cache -fv

echo "Cleaning up..."
rm -rf "$ZIP_FILE"

echo "Font installation complete!"
