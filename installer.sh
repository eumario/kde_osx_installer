#!/bin/bash

rm -rf ~/.local/share/icons
rm -rf ~/.local/share/aurorae
rm -rf ~/.local/share/plasma
rm -rf ~/.local/share/rofi

cp -R .local/ ~/
cp -R .themes/ ~/
cp AppleN\(22px\).svg ~/Apple.svg
cp icon.svg ~/icon.svg

sudo pacman -S trizen mlocate net-tools latte-dock
