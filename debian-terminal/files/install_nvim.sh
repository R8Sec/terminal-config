#!/bin/bash

# Check if ~/.local/bin exists, if not create it
if ! [ -e ~/.local/bin ]; then
    mkdir -p ~/.local/bin
fi

# Install Neovim
curl -sL https://github.com/neovim/neovim-releases/releases/download/v0.10.0/nvim-linux64.tar.gz -o /tmp/nvim-linux64.tar.gz
tar xvzf /tmp/nvim-linux64.tar.gz -C ~/.local/share/
ln -sf ~/.local/share/nvim-linux64/bin/nvim ~/.local/bin/nvim
