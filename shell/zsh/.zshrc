export DOTFILES_PATH=$HOME/.dotfiles

# Load vars
source "${DOTFILES_PATH}/shell/zsh/vars.zsh"

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt autopushd

# Initializations
source $DOTFILES_PATH/shell/init.sh

# Theme configuration
export ALIEN_THEME="soft"
export ALIEN_PROMPT_SYM=""

export ALIEN_SECTIONS_LEFT=(
  battery
  user
  path
  vcs_branch
  vcs_status
  vcs_dirty
  newline
  prompt
)

export ALIEN_SECTIONS_RIGHT=()

# Antigen configuration
source $DOTFILES_PATH/shell/zsh/antigen.zsh

# Loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load sdkman
source "$HOME/.sdkman/bin/sdkman-init.sh"
