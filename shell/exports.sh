export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"
export MOOD="Solarized Dark"
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

if [[ "$MOOD" == "Ayu Dark" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#686868,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#bfbdb6,bg:#0b0e14,hl:#f9af4f
  	--color=fg+:#bfbdb6,bg+:#253340,hl+:#f9af4f
		--color=border:#53bdfa,header:#f9af4f,gutter:#0b0e14
		--color=spinner:#7fd962,info:#7fd962,separator:#253340
		--color=pointer:#90e1c6,marker:#53bdfa,prompt:#90e1c6
	"
elif [[ "$MOOD" == "Ayu Mirage" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#686868,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#cbccc6,bg:#1f2430,hl:#ffcc66
		--color=fg+:#cbccc6,bg+:#33415e,hl+:#ffcc66
		--color=border:#6dcbfa,header:#ffcc66,gutter:#1f2430
		--color=spinner:#a6cc70,info:#a6cc70,separator:#33415e
		--color=pointer:#90e1c6,marker:#6dcbfa,prompt:#90e1c6
	"
elif [[ "$MOOD" == "Gruvbox Dark" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#a89984,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#ebdbb2,bg:#1d2021,hl:#d79921
		--color=fg+:#ebdbb2,bg+:#665c54,hl+:#d79921
		--color=border:#458588,header:#d79921,gutter:#1d2021
		--color=spinner:#98971a,info:#98971a,separator:#665c54
		--color=pointer:#b16286,marker:#458588,prompt:#b16286
	"
elif [[ "$MOOD" == "Iceberg" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6b7089,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#c6c8d1,bg:#161821,hl:#e2a478
		--color=fg+:#c6c8d1,bg+:#1e2132,hl+:#e2a478
		--color=border:#84a0c6,header:#e2a478,gutter:#161821
		--color=spinner:#b4be82,info:#b4be82,separator:#1e2132
		--color=pointer:#a093c7,marker:#84a0c6,prompt:#a093c7
	"
elif [[ "$MOOD" == "Kanagawa Wave" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6F6E69,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#dcd7ba,bg:#1f1f28,hl:#FF9E3B
		--color=fg+:#dcd7ba,bg+:#2d4f67,hl+:#FF9E3B
		--color=border:#7e9cd8,header:#FF9E3B,gutter:#1f1f28
		--color=spinner:#6a9589,info:#6a9589,separator:#2d4f67
		--color=pointer:#c0a36e,marker:#7e9cd8,prompt:#c0a36e
	"
elif [[ "$MOOD" == "Palenight" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#c792ea,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#969cc7,bg:#292d3e,hl:#ffe585
		--color=fg+:#969cc7,bg+:#434758,hl+:#ffe585
		--color=border:#82aaff,header:#ffe585,gutter:#292d3e
		--color=spinner:#c3e88d,info:#c3e88d,separator:#434758
		--color=pointer:#a3f7ff,marker:#82aaff,prompt:#a3f7ff
	"
elif [[ "$MOOD" == "OneDarkPro Black" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#434852,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#abb2bf,bg:#000000,hl:#e5c07b
		--color=fg+:#abb2bf,bg+:#434852,hl+:#e5c07b
		--color=border:#61afef,header:#e5c07b,gutter:#000000
		--color=spinner:#89ca78,info:#89ca78,separator:#434852
		--color=pointer:#2bbac5,marker:#61afef,prompt:#2bbac5
	"
elif [[ "$MOOD" == "OneDarkPro" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5c6370,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#abb2bf,bg:#282c34,hl:#e5c07b
		--color=fg+:#abb2bf,bg+:#5c6370,hl+:#e5c07b
		--color=border:#61afef,header:#e5c07b,gutter:#282c34
		--color=spinner:#89ca78,info:#89ca78,separator:#5c6370
		--color=pointer:#2bbac5,marker:#61afef,prompt:#2bbac5
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
  	--color=fg:#839496,bg:#002b36,hl:#d33682
		--color=fg+:#839496,bg+:#073642,hl+:#d33682
		--color=border:#268bd2,header:#d33682,gutter:#002b36
		--color=spinner:#2aa198,info:#2aa198,separator:#073642
		--color=pointer:#b58900,marker:#268bd2,prompt:#b58900
	"
elif [[ "$MOOD" == "VSCode Dark" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#D4D4D4,bg:#1F1F1F,hl:#DCDCAA
		--color=fg+:#D4D4D4,bg+:#264F78,hl+:#DCDCAA
		--color=border:#569CD6,header:#DCDCAA,gutter:#1F1F1F
		--color=spinner:#6A9955,info:#6A9955,separator:#264F78
		--color=pointer:#C586C0,marker:#569CD6,prompt:#C586C0
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
