export DOTFILES_PATH=$HOME/.dotfiles

# Load vars
source "${DOTFILES_PATH}/shell/zsh/vars.zsh"

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt autopushd

# Initializations
source $DOTFILES_PATH/shell/init.sh

# Theme configuration
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_STATUS_CROSS=true

# Antigen configuration
source $DOTFILES_PATH/shell/zsh/antigen.zsh

# Loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load sdkman
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Load starship prompt
# eval "$(starship init zsh)"
