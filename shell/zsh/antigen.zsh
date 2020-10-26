# Antigen configuration
source /usr/local/share/antigen/antigen.zsh

# Bundle external plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load theme
antigen theme eendroroy/alien alien

antigen apply
