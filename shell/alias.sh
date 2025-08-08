# Enable aliases to be sudo’ed
alias sudo='sudo '

# Editor
alias vi="vim"
alias vim="nvim"

# Files
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Brew
alias br="brew"
alias brs="brew services"
alias bri="brew install"
alias brg="brew upgrade"
alias brx="brew-export"

# Tmux
alias tm="tmux"
alias tml="tmux list-sessions"
alias tma="tmux attach-session -t"

# Zellij
alias zl='zellij'
alias zls='zellij list-sessions'

# Utils
alias cl="clear"
alias lg="lazygit"

# Python
alias py="python3"

# Yarn
alias y="yarn"
alias yt="yarn test --coverage false"
alias ytc="yarn test --coverage true"
alias ytu="yarn test -u"
alias ys="yarn serve"

# Jumps
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias sublime="cd ~/Library/Application Support/Sublime Text/Packages/"

# Github
alias ai="gh copilot"
alias ais="gh copilot suggest"

# Git
alias glda="git log --diff-filter=A"
alias gpnv="git push --no-verify"
alias gj="gitmoji"
alias gjc="gitmoji --commit"

# Npm
alias lnl="list-npm-links"

# Magento
alias mc="magento-cloud"
alias mce="magento-cloud environment"
alias mcd="magento-cloud deploy"
alias mcr="magento-cloud redeploy"
alias mcs="magento-cloud ssh"
