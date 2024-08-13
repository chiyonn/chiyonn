#!/bin/bash

# FiraCode Nerd FontのダウンロードURL
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip"
FONT_DIR="$HOME/.local/share/fonts"
TEMP_DIR=$(mktemp -d)

# 必要なディレクトリを作成
mkdir -p "$FONT_DIR"

# ZIPファイルをダウンロード
echo "Downloading FiraCode Nerd Font..."
wget -O "$TEMP_DIR/FiraCode.zip" "$FONT_URL"

# ZIPファイルを解凍
echo "Unzipping FiraCode Nerd Font..."
unzip "$TEMP_DIR/FiraCode.zip" -d "$TEMP_DIR/FiraCode"

# フォントファイルをフォントディレクトリにコピー
echo "Installing FiraCode Nerd Font..."
cp "$TEMP_DIR/FiraCode"/*.ttf "$FONT_DIR/"

# フォントキャッシュの更新
echo "Updating font cache..."
fc-cache -fv

# 一時ディレクトリとZIPファイルを削除
echo "Cleaning up..."
rm -rf "$TEMP_DIR"

echo "FiraCode Nerd Font installation complete!"

