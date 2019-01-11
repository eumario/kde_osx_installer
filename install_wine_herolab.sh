#!/bin/bash

zenity --info --no-wrap --text="Press OK to start installing Wine..."
sudo pacman -S --noconfirm wine winetricks lib32-gnutls

zenity --info --no-wrap --text="Press OK to start downloading Windows Fonts..."
wget https://www.w7df.com/files0/Windows7DefaultFonts.zip?dl=1
unzip Windows7DefaultFonts.zip
sudo cp -R Windows7DefaultFonts/* /usr/local/share/fonts/
sudo fc-cache -vf

zenity --info --no-wrap --text="Press OK to start configuring Wine..."
winetricks atmlib
winetricks riched20
winetricks wsh57
winetricks mspatcha

zenity --info --no-wrap --text="Press OK to start installing Hero Lab..."
wget "http://www.lonewolfdevel.com/submit/get_product.asp?product=hp&platform=win" -O HeroLabInstaller.exe
wine HeroLabInstaller.exe
