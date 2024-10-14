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

plugins=(
  fzf
  fzf-tab
  git
  nvm
  starship
  you-should-use
  zoxide
  zsh-syntax-highlighting
)

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Load custom alias and bindings
source "$DOTFILES/shell/alias.sh"
source "$DOTFILES/shell/funcs.sh"
source "$DOTFILES/shell/bindings.sh"

# Load custom hooks
autoload -U add-zsh-hook
add-zsh-hook chpwd cwd_iterm_tab_color
cwd_iterm_tab_color

