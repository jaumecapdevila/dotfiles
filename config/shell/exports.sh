export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"

export FZF_DEFAULT_OPTS=" \
--reverse \
--border rounded \
--border-label=' Fuzzy Search ' \
--no-info \
--prompt='󰳟  ' \
--pointer='󰗠 ' \
--marker='󰐃' \
--ansi \
--color='16,bg+:-1,gutter:-1,prompt:5,pointer:5,marker:6,border:4,label:4,header:italic'"

export FZF_CTRL_R_OPTS=" \
--border-label=' History ' \
--prompt='󰞌 '"

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244,bg=default"
export ZSH_AUTOSUGGEST_USE_ASYNC=true

export HOMEBREW_AUTO_UPDATE_SECS=604800 # 1 week
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"

export BAT_THEME='base16'

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
	"/opt/homebrew/opt/python@3.9/libexec/bin"
	"/opt/homebrew/bin"
	"/opt/homebrew/sbin"
	"/usr/local/bin"
	"/bin"
	"/usr/bin"
	"/usr/sbin"
	"/sbin"
	"$HOME/.magento-cloud/bin"
)
