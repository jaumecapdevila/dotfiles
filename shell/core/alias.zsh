 #!/usr/bin/env zsh

###################
# General
###################

alias bat='bat --theme=DarkNeon --show-all'

###################
# Package managers
###################
# Brew

alias br='brew'
alias bri='brew install'
alias brl='brew list'
alias brs='brew search'
alias bru='brew update'
alias brug='brew upgrade'
alias brc='brew cleanup'

###################
# Navigation
###################

alias p='pwd'
alias ll='exa -l --icons'
alias lo='exa -l --sort=old --icons'
alias la='exa -la --icons'
alias lf='ls -d */'
alias lc='colorls -lA --sd'
alias ctree='exa -T'
alias j='z'
alias wls='watch -n 5 ls -la'

# Jumps
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias projects='cd ~/Projects'
alias slides='cd ~/Documents/Slides'
alias salle='cd ~/Projects/Salle'
alias udr='cd ~/Projects/Personal/Unaderecetas'
alias pers='cd ~/Projects/Personal'
alias .f='cd $DOTFILES_PATH'
alias magento='cd ~/Projects/Magento'
alias sublime='cd ~/Library/Application\ Support/Sublime\ Text/Packages/User'

###################
# Kubectl
###################
alias kb='kubectl'
alias kbcf='kubectl create -f'
alias kbg='kubectl get'
alias kbr='kubectl run'

###################
# Docker
###################

# General
alias d="docker"
alias dv="docker -v"
alias dl="docker login --username=jaumecapdevila"
alias dsp="docker system prune"

# Images
alias di="docker images"
alias dip="docker image prune -f"
alias drmi="docker rmi"
alias dpl="docker pull"

# Containers
alias dps='docker ps --format "Container {{.Names}}:{{.ID}} ({{.Image}}) - {{.Status}}"'
alias dpsa="docker ps -a"
alias dcp="docker container prune -f"
alias dci="docker inspect"
alias dciip="docker inspect -f \"{{ .NetworkSettings.IPAddress }}\""
alias de="docker exec -it"
alias drm="docker rm"
alias dstp="docker stop"

# Networks
alias dnls="docker network ls"
alias dni="docker network inspect"
alias dnrm="docker network rm"
alias dnp="docker network prune -f"

# Volumes
alias dvc="docker volume create"
alias dvls="docker volume ls"
alias dvrm="docker volume rm"
alias dvp="docker volume prune -f"
alias dvi="docker volume inspect"

# Compose
alias dc="docker compose"
alias dcv="docker compose -v"
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcd="docker compose down"
alias dcst="docker compose stop"
alias dcb="docker compose build --no-cache"
alias dcc="docker compose config"

###################
# Editors
###################

# Editors
alias s.='subl .'
alias c.='code .'
alias i.='idea .'
alias v.='vim .'

# Edit
alias edit-github-profile='subl ~/Projects/Personal/github-profile'
alias sr='subl ~/Projects/Unaderecetas/recipes-book'

###################
# Git
###################

# Basic git commands
alias g='git'
alias gs='git status -sb'
alias ga='git add'
alias ga.='git add .'
alias gap='git add -p'
alias gaa='git add -A'

# Committing
alias gc='git commit -v'
alias gcm='git commit -v -m'
alias gce='git commit -v --allow-empty'
alias gac='git commit -a -v'
alias gc!='git commit -v --amend'
alias gc!m='git commit -v --amend -m'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

# Comparing
alias gd='git diff --color'
alias gds='git diff --staged --color'

# Working with remotes
alias clone='git clone'
alias gf='git fetch'
alias gft='git fetch --tags'
alias gfa='git fetch --all -p'
alias glt='git describe --abbrev=0 --tags' # last tag from current branch
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpl='git pull --rebase --autostash'
alias gpom='git push origin master'
alias gplom='git pull origin master'
alias gplum='git pull upstream master'

# Working with branches
alias gb='git branch'
alias gbd='git branch -d'
alias gbD='git:branch-remove'
alias gm='git merge --no-ff'
alias gco='git-checkout-branch'
alias gcom='git checkout master'
alias gcob='git checkout -b'

# Tagging
alias gt='git tag'

# Restore
alias gr='git restore'
alias gr.='git restore .'
alias grs='git restore --staged'

# Rebase
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbq='git rebase --quit'

# Logging
alias gl="git-pretty-log"
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias glgp='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit -p'

# Cleanup
alias gcl='git clean'
alias gclf='git clean -f'
alias gclfd='git clean -fd'

###################
# Github cli
###################
# PR
alias pr='gh pr create'
alias prv='gh pr view --web'
alias prd='gh pr diff'
alias prs='gh pr status'
alias prr='gh pr review'
alias prci='gh pr checks'
alias prcm='gh pr comment --web'
alias prcl='gh pr close'
alias prl='gh pr list --state open'
# Repos
alias repo:clone='gh repo clone'
# Releases
alias rlc='gh release create'
alias rld='gh release delete'
alias rlv='gh release view --web'
alias rll='gh release list'

###################
# Languages
###################

# Python
alias python='python3'

# Makefile
alias mk='make'

# PHP
alias php:has="php -m | grep -i"
alias c="composer"
alias ci="composer install"
alias cu="composer update"
alias cul="composer update --lock"
alias cr="composer require"
alias crm="composer remove"
alias crd="composer require --dev"

# Golang
alias gog='go get'
alias got='go test'
alias gomi='go mod init'
alias golm='go list -m all'

###################
# Tmux
###################
alias nmux='tmux attach || tmux new -s main'
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

###################
# Others
###################

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Utils
alias aux='ps uax'
alias fuck='sudo !!'
alias edithosts='sudo vim /etc/hosts'
alias cl='clear'
alias copy='pbcopy'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias count_files_recursive='find . -type f -print | wc -l'
alias count_files_recursive_per_directory='ls -d */ | xargs -I _ sh -c "find \"_\" -type f | wc -l | xargs echo _"'
alias emptytrash='sudo empty_trash'
alias find_broken_symlinks='find -L . -type l'
alias flat_this_dir="sudo find . -mindepth 2 -type f -exec mv -i '{}' . ';'"
alias k='kill -9'
alias map="xargs -n1"
alias ping='prettyping --nolegend'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias r='realpath'
alias reveal='open .'
alias size_of_directory="ncdu --color dark -rr -x"
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias t='time'
alias privateip='ipconfig getifaddr en0'
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias catimg='imgcat'
alias optimize_zsh='source ${ZDOTDIR:-${HOME}}/.zlogin'
alias phpqa='docker run --init -it --rm -v $(pwd):/project -v $(pwd)/tmp-phpqa:/tmp -w /project jakzal/phpqa:alpine'
alias md='glow -s dark -w 80'
alias empty='cat /dev/null >'

# Mac
alias wall='change_wallpaper'
alias out='outdated_apps'
alias up='update_apps'
alias ziper='zip -er'

# iTerm
alias supported_colors='for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"'

# SSH
alias sshkg='ssh-keygen -t rsa -b 4096'
alias sshD='ssh-add -D'
alias sshl='ssh-add -l'
alias ssha='ssh-add'

# Dotfiles
alias .ef='subl ~/.dotfiles'

# Digital garden
alias dg='subl ~/Projects/Personal/inside-out'

# Slides
alias present='reveal-md --theme solarized --highlight-theme monokai-sublime'
