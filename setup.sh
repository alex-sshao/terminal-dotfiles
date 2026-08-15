#!/bin/bash

# Home directory absolute path var
bd="$( cd "$( dirname "$0" )" && pwd )/"

# checkf: helper function to see if a file/dir exists
# arg 1: path
checkf(){
	if [[ -e $1 ]]; then 
		echo "$1 found, do you want to replace it?"
		read -p "->(Y/N) " conf
		if [[ $conf == [yY] ]]; then
			rm -rf $1
			echo "Removed $1"
		else
			echo "$1 untouched."
			return 0
		fi
	else
		echo "$1 not found."
	fi
	return 1
}

# cfdo: Checks if a file is there, and if not, runs command
# arg 1: Directory to check for content
# arg 2: Command to run
# arg 3: (optional) What to print afterwards
cfdo(){
	checkf $1
	if [[ $? == 1 ]]; then
		eval $2
		if [[ ! $3 == '' ]]; then
			echo $3
		fi
	fi
	echo ""
}

# linkf: checks if there is a file
# 	if yes: asks to replace (Y/N)
# 	if no : links as new dir automatically
# arg 1: path in this repo
# arg 2: path of place in filesystem
linkf(){
	checkf $2
	if [[ $? == 1 ]]; then
		echo "Linking ${bd}$1 to $2"
		ln -sf ${bd}$1 $2
		if [ $? -eq 0 ]; then
			echo Success!
		else
			echo Fail!
		fi
	fi
	echo ""
}

cfdo ~/.oh-my-zsh 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'

cfdo ~/.vim 'cp -r .vim ~' 'Replaced ~/.vim file'
cfdo ~/.oh-my-zsh/custom/themes/comfyline.zsh-theme 'cp ${bd}comfyline.zsh-theme ~/.oh-my-zsh/custom/themes' 'Added comfyline theme to oh-my-zsh.'

linkf .vimrc ~/.vimrc
linkf .zshrc ~/.zshrc
linkf ./fastfetch ~/.config/fastfetch

echo "Powerline Fonts:"
cfdo ~/.local/share/fonts 'git clone https://github.com/powerline/fonts.git --depth=1 && ./fonts/install.sh && rm -rf ./fonts'
