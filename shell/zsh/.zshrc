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

# Theme configuration
# [[ ! -f "$DOTFILES_PATH/shell/prompt/p10k/config.zsh" ]] || source "$DOTFILES_PATH/shell/prompt/p10k/config.zsh"

# Random tab colors
source $DOTFILES_PATH/shell/zsh/random_colors.zsh

# Loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load sdkman
source "$HOME/.sdkman/bin/sdkman-init.sh"
