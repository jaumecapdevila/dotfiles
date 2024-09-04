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
source "$DOTFILES/config/shell/exports.sh"

# disable automatic updates entirely
zstyle ':omz:update' mode disabled
# defer nvm's load until its first usage to speed-up your zsh startup
zstyle ':omz:plugins:nvm' lazy yes

plugins=(
  alias-tips
  fzf
  git
  nvm
  starship
  zoxide
)

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Load custom alias and bindings
source "$DOTFILES/config/shell/alias.sh"
source "$DOTFILES/config/shell/funcs.sh"
source "$DOTFILES/config/shell/bindings.sh"

