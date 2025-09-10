export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"
export NVM_DIR="$HOME/.nvm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="$EDITOR"
export MOOD="Vesper"
export TRANSPARENCY="off"

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
elif [[ "$MOOD" == "Everforest" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#859289,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#D3C6AA,bg:#272E33,hl:#DBBC7F
		--color=fg+:#D3C6AA,bg+:#374145,hl+:#DBBC7F
		--color=border:#7FBBB3,header:#DBBC7F,gutter:#272E33
		--color=spinner:#A7C080,info:#A7C080,separator:#374145
		--color=pointer:#83C092,marker:#7FBBB3,prompt:#83C092
	"
elif [[ "$MOOD" == "Gruvbox" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#a89984,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#ebdbb2,bg:#1d2021,hl:#d79921
		--color=fg+:#ebdbb2,bg+:#665c54,hl+:#d79921
		--color=border:#458588,header:#d79921,gutter:#1d2021
		--color=spinner:#98971a,info:#98971a,separator:#665c54
		--color=pointer:#b16286,marker:#458588,prompt:#b16286
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
elif [[ "$MOOD" == "Solarized" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#657b83,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#839496,bg:#002b36,hl:#d33682
		--color=fg+:#839496,bg+:#073642,hl+:#d33682
		--color=border:#268bd2,header:#d33682,gutter:#002b36
		--color=spinner:#2aa198,info:#2aa198,separator:#073642
		--color=pointer:#b58900,marker:#268bd2,prompt:#b58900
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
elif [[ "$MOOD" == "Vesper" ]]; then
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7e7e7e,bold"
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  	--color=fg:#ffffff,bg:#101010,hl:#ffc799
		--color=fg+:#ffffff,bg+:#2a2a2a,hl+:#ffc799
		--color=border:#99ffe4,header:#ffc799,gutter:#101010
		--color=spinner:#a0a0a0,info:#a0a0a0,separator:#2a2a2a
		--color=pointer:#99ffe4,marker:#99ffe4,prompt:#99ffe4
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
