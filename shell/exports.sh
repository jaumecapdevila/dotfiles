export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"

# plugins
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
	--ansi \
	--border rounded \
	--border-label=' Fuzzy 👀 ' \
	--color='16,bg+:-1,gutter:-1,prompt:5,pointer:5,marker:6,border:4,label:4,header:italic' \
	--layout=reverse-list \
	--marker=' ' \
	--no-info \
	--no-separator \
	--pointer='' \
	--prompt='  ' \
"

export FZF_CTRL_R_OPTS="$FZF_CTRL_R_OPTS \
	--border-label=' History 🧠 ' \
"

export FZF_TMUX_OPTS="-p 55%,60%"

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#908caa,bold"

export ZOXIDE_CMD_OVERRIDE="cd"

# brewing
export HOMEBREW_AUTO_UPDATE_SECS=604800 # 1 week
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"

# zellij
export ZELLIJ_AUTO_ATTACH=true
export ZELLIJ_AUTO_EXIT=false

# languages
export PIPENV_VERBOSITY=-1

GPG_TTY=$(tty)
export GPG_TTY

# path - the higher it is, the more priority it has
export path=(
	"$DOTFILES"/bin
	"$GEM_HOME/bin"
	"$GOPATH/bin"
	"$HOME/.cargo/bin"
	"$HOMEBREW_PREFIX"/opt/ruby/bin
	"$HOMEBREW_PREFIX"/opt/python@3.13/libexec/bin
	"$HOMEBREW_PREFIX"/opt/php@8.3/bin
	"$HOMEBREW_PREFIX"/opt/php@8.3/sbin
	"$HOMEBREW_PREFIX"/bin
	"$HOMEBREW_PREFIX"/sbin
	"$HOME"/.magento-cloud/bin
	$path
)
