function cwd_iterm_tab_color () {
  python -c "import random; import os; \
    random.seed('red'   + os.getcwd()); print((\"\\033]6;1;bg;red;brightness;\"   + str((random.randint(0,255)+255)/2)) + \"\\a\", end=''); \
    random.seed('green' + os.getcwd()); print((\"\\033]6;1;bg;green;brightness;\" + str((random.randint(0,255)+255)/2)) + \"\\a\", end=''); \
    random.seed('blue'  + os.getcwd()); print((\"\\033]6;1;bg;blue;brightness;\"  + str((random.randint(0,255)+255)/2)) + \"\\a\", end='');"
}

function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

