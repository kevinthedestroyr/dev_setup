#!/bin/bash
set -euo pipefail
shopt -s extdebug
IFS=$'\n\t'

function echocp() {
    echo cp "$@"
    cp "$@"
}

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echocp {"$HOME","$HERE"}/.tmux.conf
echocp {"$HOME","$HERE"}/.config/nvim/init.vim
for f in "$HOME"/.config/nvim/ftplugin/*; do
    echocp {"$HOME","$HERE"}/.config/nvim/ftplugin/$(basename $f)
done
echocp {"$HOME","$HERE"}/.zshrc
