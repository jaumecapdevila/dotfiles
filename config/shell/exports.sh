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
--marker='󰐃' \
--pointer='  ' \
--prompt='󰳟  ' \
--ansi \
--color=bg+:#323844,bg:#282c34,border:#528bff,spinner:#528bff \
--color=hl:#abb2bf,fg:#abb2bf,header:#528bff,info:#e5c07b \
--color=pointer:-1,marker:#c678dd,fg+:#abb2bf,preview-bg:#323844 \
--color=gutter:-1,prompt:#528bff,hl+:#528bff"

export FZF_CTRL_R_OPTS=" \
--border-label=' History ' \
--pointer=' ' \
--prompt='󰞌  '"

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

export ZOXIDE_CMD_OVERRIDE="cd"

export HOMEBREW_AUTO_UPDATE_SECS=604800 # 1 week
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"

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
