# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
#!/usr/bin/env bash

export DOTFILES=$HOME/.dotfiles

# Custom alias and functions
source "$DOTFILES/config/shell/init.sh"

. "$HOME/.cargo/env"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PATH=~/.console-ninja/.bin:$PATH

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
