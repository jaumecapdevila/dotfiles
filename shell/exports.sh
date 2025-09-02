export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"
export MOOD="Vesper"
export TRANSPARENCY="on"

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

if [[ "$MOOD" == "Kanagawa" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6F6E69,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#dcd7ba,bg:#1f1f28,hl:#FF9E3B
		--color=fg+:#dcd7ba,bg+:#2d4f67,hl+:#FF9E3B
		--color=border:#7e9cd8,header:#FF9E3B,gutter:#1f1f28
		--color=spinner:#6a9589,info:#6a9589,separator:#2d4f67
		--color=pointer:#c0a36e,marker:#7e9cd8,prompt:#c0a36e
	"
elif [[ "$MOOD" == "Melange" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#867462,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#ECE1D7,bg:#292522,hl:#E49B5D
		--color=fg+:#ECE1D7,bg+:#403A36,hl+:#E49B5D
		--color=border:#7F91B2,header:#E49B5D,gutter:#292522
		--color=spinner:#78997A,info:#78997A,separator:#403A36
		--color=pointer:#B380B0,marker:#7F91B2,prompt:#B380B0
	"
elif [[ "$MOOD" == "Rose Pine" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6e6a86,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
		--color=fg:#908caa,bg:#191724,hl:#ebbcba \
		--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba \
		--color=border:#403d52,header:#31748f,gutter:#191724 \
		--color=spinner:#f6c177,info:#9ccfd8 \
		--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa \
	"
elif [[ "$MOOD" == "Rose Pine Moon" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6e6a86,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
		--color=fg:#908caa,bg:#232136,hl:#ea9a97 \
		--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97 \
		--color=border:#44415a,header:#3e8fb0,gutter:#232136 \
		--color=spinner:#f6c177,info:#9ccfd8 \
		--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa \
	"
elif [[ "$MOOD" == "Solarized Dark" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#657b83,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#839496,bg:#002b36,hl:#6c71c4
		--color=fg+:#839496,bg+:#073642,hl+:#6c71c4
		--color=border:#268bd2,header:#6c71c4,gutter:#002b36
		--color=spinner:#2aa198,info:#2aa198,separator:#073642
		--color=pointer:#b58900,marker:#268bd2,prompt:#b58900
	"
elif [[ "$MOOD" == "Vesper" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7e7e7e,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#ffffff,bg:#101010,hl:#ffc799
		--color=fg+:#ffffff,bg+:#988049,hl+:#ffc799
		--color=border:#aca1cf,header:#ffc799,gutter:#101010
		--color=spinner:#90b99f,info:#90b99f,separator:#988049
		--color=pointer:#99ffe4,marker:#aca1cf,prompt:#99ffe4
	"
fi

export FZF_CTRL_R_OPTS="$FZF_CTRL_R_OPTS \
	--border-label=' History 🧠 ' \
"

export FZF_TMUX_OPTS="-p 55%,60%"

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

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
