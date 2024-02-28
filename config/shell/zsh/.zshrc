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

# zim plugins
zstyle ':zim:git' aliases-prefix 'g'
zstyle ':fzf-tab:*' switch-group ',' '.'

# Start zim
source "$ZIM_HOME/init.zsh"

# Load fzf keybindings
source $HOME/.fzf.zsh

# Shared shell configuration
source "$DOTFILES/config/shell/init.sh"

# External
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

# Load NVM
source $(brew --prefix nvm)/nvm.sh

# Custom hooks
autoload -U add-zsh-hook
add-zsh-hook chpwd cwd_iterm_tab_color
# add-zsh-hook precmd dash_prompt_separator

