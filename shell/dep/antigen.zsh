# Antigen configuration
source /usr/local/share/antigen/antigen.zsh

# Bundle external plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle unixorn/fzf-zsh-plugin
antigen theme romkatv/powerlevel10k
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure

# Load plugins
antigen apply
