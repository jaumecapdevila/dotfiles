#!/usr/bin/env zsh

source "${HOME}/.zgenom/zgenom.zsh"

if ! zgenom saved; then
    # specify plugins here
    zgen load chrissicool/zsh-256color
    zgen load djui/alias-tips
    zgen load changyuheng/zsh-interactive-cd
    # zgen load nojhan/liquidprompt . stable
    # zgen load mafredri/zsh-async
    # zgen load sindresorhus/pure
    # zgen load romkatv/powerlevel10k powerlevel10k
    zgen load bhilburn/powerlevel9k powerlevel9k
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-completions
    # zgen load unixorn/autoupdate-zgen
    zgen load unixorn/fzf-zsh-plugin
    zgen load supercrabtree/k
    zgen load superbrothers/zsh-kubectl-prompt
    # zgen load unixorn/tumult.plugin.zsh
    # generate the init script from plugins above
    zgenom save
fi
