#!/bin/sh

## zsh
sudo apt install zsh

## on my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## powerlevel9k theme
$ git clone --depth 1 https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sed -i -e 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel9k\/powerlevel9k"/g' ~/.zshrc

## TODO: add my params


## fonts
mkdir -p ~/.local/share/fonts/
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -P  ~/.local/share/fonts/
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -P  ~/.config/fontconfig/conf.d/
fc-cache -vf ~/.local/share/fonts/


## zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


## zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## TODO: plugins=(zsh-autosuggestions)


## Do I need it? https://github.com/popstas/zsh-command-time
