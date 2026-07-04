#!/bin/bash

bd="$( cd "$( dirname "$0" )" && pwd )/"
link(){
	echo "Linking ${bd}$1 to $2"
	ln -sf ${bd}$1 $2
	if [ $? -eq 0 ]; then
		echo Success!
	else
		echo Fail!
	fi
}

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r .vim ~

link .vimrc ~/.vimrc
link .zshrc ~/.zshrc

git clone https://gitlab.com/imnotpua/comfyline_prompt.git
cd comfyline_prompt
./install.sh
cd ..
rm -rf comfyline_prompt


git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf ./fonts
