export DOTFILES_PATH=$HOME/.dotfiles

# Load vars
source "${DOTFILES_PATH}/shell/zsh/vars.zsh"

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt autopushd

# Initializations
source $DOTFILES_PATH/shell/init.sh

# Antigen configuration
source $DOTFILES_PATH/shell/zsh/antigen.zsh

# Loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load sdkman
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Init prompt
eval "$(starship init zsh)"
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
