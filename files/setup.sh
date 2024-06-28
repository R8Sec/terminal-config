#!/usr/bin/env bash

# Getting everything ready for terminal setup
# Node.js
curl -fsSL https://fnm.vercel.app/install | bash
fnm use --install-if-missing 20

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# fzf
/home/linuxbrew/.linuxbrew/bin/brew install fzf

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
