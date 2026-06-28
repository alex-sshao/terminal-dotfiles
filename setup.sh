sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv .git git
cp -r .* ..
mv git .git
git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf ./fonts
