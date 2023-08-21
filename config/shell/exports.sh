export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"

export FZF_DEFAULT_OPTS="--reverse --no-info --border --prompt=' ' \
  --color gutter:-1,bg+:-1,header:4,separator:0,info:0,label:4,border:4,prompt:7,pointer:5,query:7,prompt:7"
export FZF_CTRL_R_OPTS="--border-label=' History ' --prompt='󰍉 '"
export FZF_DEFAULT_COMMAND="fd -H -E '.git'"
export FZF_TMUX_OPTS="-p --no-info --ansi \
  --color gutter:-1,bg+:-1,header:4,separator:0,info:0,label:4,border:4,prompt:7,pointer:5,query:7,prompt:7"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244,bg=default"
export ZSH_AUTOSUGGEST_USE_ASYNC=true

export HOMEBREW_AUTO_UPDATE_SECS=604800 # 1 week
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"

export BAT_THEME='ansi'

GPG_TTY=$(tty)
export GPG_TTY

# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------
export path=(
	"$HOME/bin"
	"$HOME/.local/bin"
	"$DOTFILES/bin"
	"$JAVA_HOME/bin"
	"$GEM_HOME/bin"
	"$GOPATH/bin"
	"$HOME/.cargo/bin"
	"/opt/homebrew/opt/ruby/bin"
	"/opt/homebrew/opt/node@14/bin"
	"/opt/homebrew/opt/python@3.9/libexec/bin"
	"/opt/homebrew/bin"
	"/opt/homebrew/sbin"
	"/usr/local/bin"
	"/bin"
	"/usr/bin"
	"/usr/sbin"
	"/sbin"
	"$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin"
	"$HOME/.magento-cloud/bin"
)
