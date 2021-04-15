#!/usr/bin/env zsh

source /usr/local/share/antigen/antigen.zsh

antigen bundle chrissicool/zsh-256color
antigen bundle djui/alias-tips
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle unixorn/fzf-zsh-plugin
antigen theme romkatv/powerlevel10k
# antigen bundle nojhan/liquidprompt
# antigen bundle subnixr/minimal
antigen apply
