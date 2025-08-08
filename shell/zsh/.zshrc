## History
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY
setopt HIST_FCNTL_LOCK
setopt HIST_NO_STORE

## Autocd
setopt +o nomatch

# Load config
source "$DOTFILES/shell/exports.sh"

# disable automatic updates entirely
zstyle ':omz:update' mode disabled
# defer nvm's load until its first usage to speed-up your zsh startup
zstyle ':omz:plugins:nvm' lazy yes
# configure fzf-tab layout
zstyle ':fzf-tab:*' fzf-flags --layout reverse-list

plugins=(
  fzf
  fzf-tab
  git
  nvm
  starship
  you-should-use
  zoxide
  zsh-autosuggestions
  zsh-syntax-highlighting
  # zsh-vi-mode
)

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Load custom alias, funcs and key-bindings
source "$DOTFILES/shell/alias.sh"
source "$DOTFILES/shell/funcs.sh"
source "$DOTFILES/shell/zsh/key-bindings.zsh"
