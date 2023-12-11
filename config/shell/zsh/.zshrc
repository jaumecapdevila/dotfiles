# Uncomment for debug with `zprof`
# zmodload zsh/zprof

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
setopt +o nomatch
# setopt autopushd

# Customize zim modules
zstyle ':zim:git' aliases-prefix 'g'

# Start zim
source "$ZIM_HOME/init.zsh"

# Load Custom Config
source "$DOTFILES/config/shell/init.sh"
source "$DOTFILES/config/shell/zsh/key-bindings.zsh"

# External
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
