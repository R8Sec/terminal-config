#!/usr/bin/env bash

DIR=$HOME/git

git clone https://aur.archlinux.org/paru.git $DIR
cd $DIR/paru && makepkg -si --noconfirm
