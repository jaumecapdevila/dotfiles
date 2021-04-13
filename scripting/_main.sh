#!/usr/bin/env bash

if ! ${DOT_MAIN_SOURCED:-false}; then
  for file in $DOTFILES_PATH/scripting/{docs,git,log}.sh; do
    source "$file";
  done;
  unset file;

  readonly DOT_MAIN_SOURCED=true
fi
