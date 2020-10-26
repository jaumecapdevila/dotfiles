export DOTFILES_PATH=$HOME/.dotfiles

# Load vars
source "${DOTFILES_PATH}/shell/zsh/vars.zsh"

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt autopushd

# Initializations
source $DOTFILES_PATH/shell/init.sh

# Theme configuration
MNML_PROMPT=(mnml_status mnml_cwd mnml_git mnml_keymap)
MNML_RPROMPT=()
MNML_INFOLN=()
MNML_MAGICENTER=(mnml_me_ls)

# Antigen configuration
source $DOTFILES_PATH/shell/zsh/antigen.zsh

# Loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load sdkman
source "$HOME/.sdkman/bin/sdkman-init.sh"
