#!/bin/bash

bd="$( cd "$( dirname "$0" )" && pwd )/"

linkf(){
	if [ ! -f $2 ] || [ ! -d $2 ]; then 
		echo "$2 found, do you want to replace it?"
		read -p "->(Y/N) " conf
		if [ $conf == [yY] ]; then
			rm $2
			echo "Removed $2, linking..."
		else
			echo "$2 files untouched."
			return 0
		fi
	fi
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

linkf .vimrc ~/.vimrc
linkf .zshrc ~/.zshrc

git clone https://gitlab.com/imnotpua/comfyline_prompt.git
cd comfyline_prompt
./install.sh
cd ..
rm -rf comfyline_prompt


git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf ./fonts

