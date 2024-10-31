# Enable aliases to be sudo’ed
alias sudo='sudo '

# Editor
alias vi="vim"
alias vim="nvim"

# Files
# https://github.com/athityakumar/colorls?tab=readme-ov-file#flags
alias ls='colorls --sd --dark'
alias l='ls -l'                # List
alias la='ls -la'              # List, show all files
alias ll='ls -lA'              # List, show almost all files (excludes ./ and ../)
alias lt='ls --tree=5'         # Show tree heirarchy, capped at depth 5 just in case
alias lg='lgs --gs'            # List and display git status

# Brew
alias br="brew"
alias brs="brew services"

# Utils
alias cl="clear"
alias lg="lazygit"

# Terraform
alias tf="terraform"

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
alias gj="gitmoji"
alias gjc="gitmoji --commit"
