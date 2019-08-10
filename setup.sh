#!/bin/bash
set -euo pipefail
shopt -s extdebug
IFS=$'\n\t'

if [[ $USER == root ]]; then
    echo Do not sudo -- need your username
    exit 1
fi

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# copy config files
# do before switching to root
cp {"$HERE","$HOME"}/.tmux.conf
mkdir -p "$HOME"/.config/nvim
cp {"$HERE","$HOME"}/.config/nvim/init.vim
cp {"$HERE","$HOME"}/.zshrc

sudo apt update
sudo apt upgrade

# zsh
sudo apt -y install zsh
chsh -s /usr/bin/zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# tmux
sudo apt -y install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# neovim
sudo apt -y install neovim python-neovim python3-neovim

# install vimplug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
nvim +PlugInstall +qall

# python3.8
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt -y install python3.8
sudo apt -y install python3-pip
sudo apt -y install python3-virtualenv

# node 12
sudo curl -sL https://deb.nodesource.com/setup_12.x | -E bash -
sudo apt -y install nodejs

# fd (find)
wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb
sudo dpkg -i fd-musl_7.3.0_amd64.deb
rm fd-musl_7.3.0_amd64.deb
