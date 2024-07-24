export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"
export WARP_THEMES_DIR="$HOME/.warp/themes"


export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS=" \
--reverse \
--no-info \
--pointer='󰳟' \
--prompt='󰈲 ' \
--ansi \
--border rounded \
--color='16,bg+:-1,gutter:-1,prompt:5,pointer:5,marker:6,border:4,label:4,header:italic'"

export FZF_CTRL_R_OPTS=" \
--pointer='󰳟' \
--prompt='󰈲 '"

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
	"$DOTFILES/bin"
	"$GEM_HOME/bin"
	"$GOPATH/bin"
	"$HOME/.cargo/bin"
	"$HOME/.magento-cloud/bin"
	"$HOME/.orbstack/bin"
	"$JAVA_HOME/bin"
	"/opt/homebrew/opt/ruby/bin"
	"/opt/homebrew/opt/python@3.9/libexec/bin"
	"/opt/homebrew/bin"
	"/opt/homebrew/sbin"
	"/usr/local/bin"
	"/bin"
	"/usr/bin"
	"/usr/sbin"
	"/sbin"
)
