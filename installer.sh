#!/bin/bash

cd ~

# zsh
sudo apt install -y zsh
chsh -s $(which zsh)

# omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# nvim
sudo apt-get install -y ninja-build gettext cmake curl build-essential
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

