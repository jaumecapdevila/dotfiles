# Antigen configuration
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundle external plugins
antigen_load zsh-users/zsh-syntax-highlighting
antigen_load zsh-users/zsh-autosuggestions
antigen_load zsh-users/zsh-completions

# Select theme
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
antigen apply
