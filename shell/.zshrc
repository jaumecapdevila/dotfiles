#!/usr/bin/env zsh

export DOTFILES_PATH=$HOME/.dotfiles

# Shell options
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
setopt +o nomatch

# Custom alias, exports and functions
source "$DOTFILES_PATH/shell/core/alias.zsh"
source "$DOTFILES_PATH/shell/core/exports.zsh"
source "$DOTFILES_PATH/shell/core/functions.zsh"

# Load styles for current theme
source "$DOTFILES_PATH/shell/config/styles.zsh"

# Load plugins
source "$DOTFILES_PATH/shell/dep/zgenom.zsh"

# Load external SDK
source "$HOME/.sdkman/bin/sdkman-init.sh"

