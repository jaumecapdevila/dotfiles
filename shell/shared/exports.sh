# Pygments
export ZSH_COLORIZE_STYLE="emacs"

# Zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=240"

# Work
export KLAM_BROWSER="Firefox"
export KLAM_PYTHON="/usr/bin/python"

# Utils
export MY_SSH_USERNAME='jaume.capdevila'
export FZF_DEFAULT_OPTS='--color=bg+:24 --reverse'
export PIPENV_IGNORE_VIRTUALENVS=1

# System
export HISTCONTROL=ignorespace

# Homebrew
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_BUNDLE_FILE_PATH=${DOTFILES_PATH}/mac/brew/Brewfile

# Docker
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120

# NVM
export NVM_DIR="$HOME/.nvm"

# Editors
export EDITOR='vim'
export TERM=xterm-256color

# Lang
export LANG=en_GB
export LC_CTYPE=UTF-8

# Work
export VAULT_ADDR="https://vault.or1.adobe.net"
export OMS_CODE="$HOME/Projects/Magento/oms"

# Languages
export GOPATH="$HOME/projects/golang"

# Propmt
export STARSHIP_CONFIG="$DOTFILES_PATH/shell/prompt/starship/powerline.toml"

# Path
PATH=/usr/local/sbin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/opt/ruby/bin:$PATH
PATH=/usr/local/opt/fzf/bin:$PATH
PATH=/opt/puppetlabs/pdk/bin:$PATH
PATH=$HOME/.composer/vendor/bin:$PATH
PATH=$HOME/.npm-global/bin:$PATH
PATH=${GOPATH}/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH
PATH=${DOTFILES_PATH}/git/bin:$PATH
PATH=${DOTFILES_PATH}/bin:$PATH

# Private exports
if [[ -f "$HOME/.private/exports.sh" && -r "$HOME/.private/exports.sh" ]]; then
   source "$HOME/.private/exports.sh"
 fi

export PATH=$PATH

# Remove duplicates in $PATH
typeset -U PATH
