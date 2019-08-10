#!/bin/bash
set -euo pipefail
shopt -s extdebug
IFS=$'\n\t'


HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp {"$HOME","$HERE"}/.tmux.conf
cp {"$HOME","$HERE"}/.config/nvim/init.vim
cp {"$HOME","$HERE"}/.zshrc
