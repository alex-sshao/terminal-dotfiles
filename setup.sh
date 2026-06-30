#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r .vim ~
ln -sf "$(exec pwd)"/.vimrc ~/.vimrc
ln -sf "$(exec pwd)"/.zsh ~/.zsh
git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf ./fonts
