#!/usr/bin/env bash

DIR=$HOME/git/paru

# Paru
mkdir -p $DIR
git clone https://aur.archlinux.org/paru-bin.git $DIR
cd $DIR && makepkg -si --noconfirm

# BlackArch
curl -s https://blackarch.org/strap.sh -o /tmp/strap.sh
chmod +x /tmp/strap.sh
sudo /tmp/strap.sh
rm /tmp/strap.sh
