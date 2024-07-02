#!/bin/bash

# Check if ~/.local/bin exists, if not create it
if ! [ -e ~/.local/bin ]; then
    mkdir -p ~/.local/bin
fi

# Check if Neovim is installed
if command -v nvim &> /dev/null; then
    # Remove Neovim
    if [ -x "$(command -v apt-get)" ]; then
        sudo apt-get remove --purge neovim -y
        sudo apt-get autoremove -y
    elif [ -x "$(command -v yum)" ]; then
        sudo yum remove neovim -y
    elif [ -x "$(command -v dnf)" ]; then
        sudo dnf remove neovim -y
    elif [ -x "$(command -v pacman)" ]; then
        sudo pacman -Rns neovim --noconfirm
    elif [ -x "$(command -v zypper)" ]; then
        sudo zypper remove neovim -y
    elif [ -e ~./local/share/nvim-linux64 ]; then
        rm -rf ~/.local/share/nvim-linux64
        rm -rf ~/.local/bin/nvim
    fi
fi

# Backup config file and delete local neovim cache
if [ -e ~/.config/nvim ]; then
    if [ -e ~/.config/nvim.bak ]; then
        rm -rf ~/.config/nvim.bak
    fi
    mv ~/.config/nvim ~/.config/nvim.bak
fi
if [ -e ~/.local/share/nvim ]; then
    rm -rf ~/.local/share/nvim
fi
if [ -e ~/.cache/nvim ]; then
    rm -rf ~/.cache/nvim
fi

# Install Neovim
curl -sL https://github.com/neovim/neovim-releases/releases/download/v0.10.0/nvim-linux64.tar.gz -o /tmp/nvim-linux64.tar.gz
tar xvzf /tmp/nvim-linux64.tar.gz -C ~/.local/share/
ln -sf ~/.local/share/nvim-linux64/bin/nvim ~/.local/bin/nvim

# Install custom NvChad
git clone https://github.com/R8Sec/custom-nvchad.git ~/.config/nvim --depth 1
