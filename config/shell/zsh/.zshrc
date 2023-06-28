# Uncomment for debug with `zprof`
# zmodload zsh/zprof

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
setopt +o nomatch
# setopt autopushd

# ZSH style
if [[ -z $TMUX ]]; then
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
else
  zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
fi;

# Customize zim modules
zstyle ':zim:git' aliases-prefix 'g'

# Start zim
source "$ZIM_HOME/init.zsh"

# Load Custom Config
source "$DOTFILES/config/shell/init.sh"
source "$DOTFILES/config/shell/zsh/key-bindings.zsh"

# Load fzf
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"

# Custom iterm tabs
[ -f "$DOTFILES/config/iterm/scripts/random_tab_color.sh" ] && source "$DOTFILES/config/iterm/scripts/random_tab_color.sh"

# External
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
