#!/usr/bin/env bash

export DOTFILES=$HOME/.dotfiles

# Custom alias and functions
source "$DOTFILES/config/shell/init.sh"

. "$HOME/.cargo/env"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
