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

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --no-info \
  --ansi \
	--prompt='󰈲 ' \
  --layout=reverse \
  --border=none
  --color=bg+:#163540 \
  --color=bg:#00212b \
  --color=border:#4689cc \
  --color=fg:#ece8d6 \
  --color=gutter:#00212b \
  --color=header:#ae8a2c \
  --color=hl+:#519e97 \
  --color=hl:#ae8a2c \
  --color=info:#869395 \
  --color=marker:#c24380 \
  --color=pointer:#c24380 \
  --color=prompt:#519e97 \
  --color=query:#ece8d6:regular \
  --color=scrollbar:#4689cc \
  --color=separator:#6c70be \
  --color=spinner:#c24380 \
"

export FZF_CTRL_R_OPTS=" \
	--prompt='󰈲 ' \
"

# plugins
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#95a0a0,bg=#163540,bold"

export ZOXIDE_CMD_OVERRIDE="cd"

export HOMEBREW_AUTO_UPDATE_SECS=604800 # 1 week
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"

export PIPENV_VERBOSITY=-1

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
