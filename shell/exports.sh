export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"
export MOOD="night"

# plugins
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
	--ansi \
	--border rounded \
	--border-label-pos=2 \
	--border-label=' Fuzzy 👀 ' \
	--layout=reverse-list \
	--marker=' ' \
	--no-info \
	--no-separator \
	--pointer='' \
	--prompt='  ' \
"

if [[ "$MOOD" == "night" ]]; then
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
		--color=bg+:#283457 \
		--color=bg:#16161e \
		--color=border:#27a1b9 \
		--color=fg:#c0caf5 \
		--color=gutter:#16161e \
		--color=header:#ff9e64 \
		--color=hl+:#2ac3de \
		--color=hl:#2ac3de \
		--color=info:#545c7e \
		--color=marker:#ff007c \
		--color=pointer:#ff007c \
		--color=prompt:#2ac3de \
		--color=query:#c0caf5:regular \
		--color=scrollbar:#27a1b9 \
		--color=separator:#ff9e64 \
		--color=spinner:#ff007c \
	"
elif [[ "$MOOD" == "storm" ]]; then
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
		--color=bg+:#2e3c64 \
		--color=bg:#1f2335 \
		--color=border:#29a4bd \
		--color=fg:#c0caf5 \
		--color=gutter:#1f2335 \
		--color=header:#ff9e64 \
		--color=hl+:#2ac3de \
		--color=hl:#2ac3de \
		--color=info:#545c7e \
		--color=marker:#ff007c \
		--color=pointer:#ff007c \
		--color=prompt:#2ac3de \
		--color=query:#c0caf5:regular \
		--color=scrollbar:#29a4bd \
		--color=separator:#ff9e64 \
		--color=spinner:#ff007c \
	"
elif [[ "$MOOD" == "moon" ]]; then
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
		--color=bg+:#2d3f76 \
		--color=bg:#1e2030 \
		--color=border:#589ed7 \
		--color=fg:#c8d3f5 \
		--color=gutter:#1e2030 \
		--color=header:#ff966c \
		--color=hl+:#65bcff \
		--color=hl:#65bcff \
		--color=info:#545c7e \
		--color=marker:#ff007c \
		--color=pointer:#ff007c \
		--color=prompt:#65bcff \
		--color=query:#c8d3f5:regular \
		--color=scrollbar:#589ed7 \
		--color=separator:#ff966c \
		--color=spinner:#ff007c \
	"
fi

export FZF_CTRL_R_OPTS="$FZF_CTRL_R_OPTS \
	--border-label=' History 🧠 ' \
"

export FZF_TMUX_OPTS="-p 55%,60%"

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6e6a86,bold"

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
