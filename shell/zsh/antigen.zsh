# Antigen configuration
source /usr/local/share/antigen/antigen.zsh

# Bundle external plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle unixorn/fzf-zsh-plugin
antigen bundle subnixr/minimal

# Load plugins
antigen apply

# Theme configuration
MNML_PROMPT=(mnml_keymap)
MNML_RPROMPT=('mnml_cwd 1 0' mnml_files mnml_git)
MNML_MAGICENTER=(mnml_me_ls)
