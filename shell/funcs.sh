_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# Change the current working directory when exiting Yazi
function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Custom iTerm tab color based on current working directory
function cwd_iterm_tab_color () {
  python -c "import random; import os; \
    random.seed('red'   + os.getcwd()); print((\"\\033]6;1;bg;red;brightness;\"   + str((random.randint(0,255)+255)/2)) + \"\\a\", end=''); \
    random.seed('green' + os.getcwd()); print((\"\\033]6;1;bg;green;brightness;\" + str((random.randint(0,255)+255)/2)) + \"\\a\", end=''); \
    random.seed('blue'  + os.getcwd()); print((\"\\033]6;1;bg;blue;brightness;\"  + str((random.randint(0,255)+255)/2)) + \"\\a\", end='');"
}

# Quick session creation
tn() {
    if [ -z "$1" ]; then
        tmux new-session
    else
        tmux new-session -s "$1"
    fi
}

# Attach or create session
ta() {
    if [ -z "$1" ]; then
        tmux attach
    else
        tmux attach -t "$1" || tmux new-session -s "$1"
    fi
}

# Switch session with fzf
# ts() {
#     local session
#     session=$(tmux list-sessions -F "#{session_name}" | fzf --height 40% --reverse)
#     tmux switch-client -t "$session"
# }
