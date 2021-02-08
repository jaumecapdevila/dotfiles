#!/usr/bin/env zsh

# dotfiles directory
export DOTFILES_PATH=$HOME/.dotfiles

# Initializations
source $DOTFILES_PATH/shell/init.sh

# Antigen configuration
source $DOTFILES_PATH/shell/zsh/antigen.zsh

# Theme configuration
[[ ! -f "$DOTFILES_PATH/shell/themes/p10k/config.zsh" ]] || source "$DOTFILES_PATH/shell/themes/p10k/config.zsh"

# Random tab colors
# source $DOTFILES_PATH/shell/zsh/random_colors.zsh

# Load sdks
source $DOTFILES_PATH/shell/zsh/sdks.zsh
