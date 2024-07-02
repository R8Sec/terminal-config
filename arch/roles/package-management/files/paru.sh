#!/usr/bin/env bash

DIR=$HOME/git/paru

mkdir -p $DIR
git clone https://aur.archlinux.org/paru-bin.git $DIR
cd $DIR && makepkg -si --noconfirm
