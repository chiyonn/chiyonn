sudo sed -i 's/^# *\(ja_JP.UTF-8 UTF-8\)/\1/' /etc/locale.gen

sudo locale-gen

sudo pacman -S ttf-font-awesome noto-fonts-cjk fcitx5-im fcitx5-mozc

echo "GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
" >> $HOME/.xprofile

fcitx5 &
fcitx5-configtool &
