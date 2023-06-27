# Enable aliases to be sudo’ed
alias sudo='sudo '

# editor
alias vi="vim"
alias vim="nvim"

# ls
alias l='exa -1a'                # Lists in one column, hidden files.
alias ll='exa -l'                # Lists human readable sizes.
alias lr='ll -R'                 # Lists human readable sizes, recursively.
alias la='ll -a'                 # Lists human readable sizes, hidden files.
alias lm='la | "$PAGER"'         # Lists human readable sizes, hidden files through pager.
alias lx='ll --sort=Extension'   # Lists sorted by extension (GNU only).
alias lk='ll --sort=size -r'     # Lists sorted by size, largest last.
alias lt='ll --sort=modified -r' # Lists sorted by date, most recent last.
alias lc='lt -m'                 # Lists sorted by date, most recent last, shows change time.
alias lu='lt -u'

# utils
alias cl="clear"
alias lg="lazygit"

# terraform
alias tf="terraform"

# python
alias py="python"

# tmux
alias tn="tmux new -s"
alias tna="tmux new -ADs"
alias ta="tmux a"
alias tat="tmux attach -t"
alias td="t dotfiles"
alias tk="tmux kill-server"

# jumps
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias tmp="cd ~/Desktop/tmp"
alias c='cd ~/coexdexe'
