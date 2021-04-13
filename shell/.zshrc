#!/usr/bin/env zsh
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
# By default, if a command line contains a glob expression which doesn't match anything, an error is shown
setopt +o nomatch

# dotfiles directory
export DOTFILES_PATH=$HOME/.dotfiles

# Core
source "$DOTFILES_PATH/shell/core/alias.sh"
source "$DOTFILES_PATH/shell/core/exports.sh"
source "$DOTFILES_PATH/shell/core/functions.sh"

# Deps
source $DOTFILES_PATH/shell/dep/antigen.zsh
source $DOTFILES_PATH/shell/dep/sdks.zsh

# Config
source $DOTFILES_PATH/shell/config/styling.zsh
