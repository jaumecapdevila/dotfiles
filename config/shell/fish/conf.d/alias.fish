# Pnpm
alias pn pnpm

# Git
set git_log_fuller_format '%C(bold yellow)commit %H%C(auto)%d%n%C(bold)Author: %C(blue)%an <%ae> %C(reset)%C(cyan)%ai (%ar)%n%C(bold)Commit: %C(blue)%cn <%ce> %C(reset)%C(cyan)%ci (%cr)%C(reset)%n%+B'
set git_log_oneline_format '%C(bold yellow)%h%C(reset) %s%C(auto)%d%C(reset)'
set git_log_oneline_medium_format '%C(bold yellow)%h%C(reset) %<(50,trunc)%s %C(bold blue)<%an> %C(reset)%C(cyan)(%ar)%C(auto)%d%C(reset)'

alias g 'git'

# Branch (b)
alias gb 'git branch'
alias gbc 'git checkout -b'
alias gbd 'git checkout --detach'
alias gbl 'git branch -vv'
alias gbL 'git branch --all -vv'
alias gbm 'git branch --move'
alias gbM 'git branch --move --force'
alias gbR 'git branch --force'
alias gbs 'git show-branch'
alias gbS 'git show-branch --all'
alias gbu 'git branch --unset-upstream'
alias gbG 'git-branch-remote-tracking gone | xargs -r git branch --delete --force'
alias gbx 'git-branch-delete-interactive'
alias gbX 'git-branch-delete-interactive --force'

# Commit (c)
alias gc 'git commit --verbose'
alias gca 'git commit --verbose --all'
alias gcA 'git commit --verbose --patch'
alias gcm 'git commit --message'
alias gco 'git checkout'
alias gcO 'git checkout --patch'
alias gcf 'git commit --amend --reuse-message HEAD'
alias gcF 'git commit --verbose --amend'
alias gcp 'git cherry-pick'
alias gcP 'git cherry-pick --no-commit'
alias gcr 'git revert'
alias gcR 'git reset "HEAD^"'
alias gcs 'git show --pretty=format:"$git_log_fuller_format"'
alias gcS 'git commit --verbose -S'
alias gcu 'git commit --fixup'
alias gcU 'git commit --squash'
alias gcv 'git verify-commit'

# Conflict (C)
alias gCl 'git --no-pager diff --diff-filter=U --name-only'
alias gCa "git add \$(gCl)"
alias gCe "git mergetool \$(gCl)"
alias gCo 'git checkout --ours --'
alias gCO "gCo \$(gCl)"
alias gCt 'git checkout --theirs --'
alias gCT "gCt \$(gCl)"

# Data (d)
alias gd 'git ls-files'
alias gdc 'git ls-files --cached'
alias gdx 'git ls-files --deleted'
alias gdm 'git ls-files --modified'
alias gdu 'git ls-files --other --exclude-standard'
alias gdk 'git ls-files --killed'
alias gdi 'git status --porcelain --short --ignored | sed -n "s/^!! //p"'

# Fetch (f)
alias gf 'git fetch'
alias gfa 'git fetch --all'
alias gfp 'git fetch --all --prune'
alias gfc 'git clone'
alias gfm 'git pull --no-rebase'
alias gfr 'git pull --rebase'
alias gfu 'git pull --ff-only --all --prune'

# Grep (g)
alias gg 'git grep'
alias ggi 'git grep --ignore-case'
alias ggl 'git grep --files-with-matches'
alias ggL 'git grep --files-without-match'
alias ggv 'git grep --invert-match'
alias ggw 'git grep --word-regexp'

# Help (h)
alias gh 'git help'

# Index (i)
alias gia 'git add'
alias giA 'git add --patch'
alias giu 'git add --update'
alias gid 'git diff --no-ext-diff --cached'
alias giD 'git diff --no-ext-diff --cached --word-diff'
alias gir 'git reset'
alias giR 'git reset --patch'
alias gix 'git rm --cached -r'
alias giX 'git rm --cached -rf'

# Log (l)
alias gl 'git log --topo-order --pretty=format:"$git_log_fuller_format"'
alias gls 'git log --topo-order --stat --pretty=format:"$git_log_fuller_format"'
alias gld 'git log --topo-order --stat --patch --pretty=format:"$git_log_fuller_format"'
alias glf 'git log --topo-order --stat --patch --follow --pretty=format:"$git_log_fuller_format"'
alias glo 'git log --topo-order --pretty=format:"$git_log_oneline_format)"'
alias glO 'git log --topo-order --pretty=format:"$git_log_oneline_medium_format"'
alias glg 'git log --graph --pretty=format:"git_log_oneline_format"'
alias glG 'git log --graph --pretty=format:"git_log_oneline_medium_format"'
alias glv 'git log --topo-order --show-signature --pretty=format:"$git_log_fuller_format"'
alias glc 'git shortlog --summary --numbered'
alias glr 'git reflog'

# Merge (m)
alias gm 'git merge'
alias gma 'git merge --abort'
alias gmc 'git merge --continue'
alias gmC 'git merge --no-commit'
alias gmF 'git merge --no-ff'
alias gmS 'git merge -S'
alias gmv 'git merge --verify-signatures'
alias gmt 'git mergetool'

# Push (p)
alias gp 'git push'
alias gpf 'git push --force-with-lease'
alias gpF 'git push --force'
alias gpa 'git push --all'
alias gpA 'git push --all && git push --tags'
alias gpt 'git push --tags'
alias gpc 'git push --set-upstream origin "$(git-branch-current 2>/dev/null)"'
alias gpp 'git pull origin "$(git-branch-current 2>/dev/null)" && git push origin "$(git-branch-current 2>/dev/null)"'

# Rebase (r)
alias gr 'git rebase'
alias gra 'git rebase --abort'
alias grc 'git rebase --continue'
alias gri 'git rebase --interactive --autosquash'
alias grs 'git rebase --skip'
alias grS 'git rebase --exec "git commit --amend --no-edit --no-verify -S"'

# Remote (R)
alias gR 'git remote'
alias gRl 'git remote --verbose'
alias gRa 'git remote add'
alias gRx 'git remote rm'
alias gRm 'git remote rename'
alias gRu 'git remote update'
alias gRp 'git remote prune'
alias gRs 'git remote show'
alias gRS 'git remote set-url'

# Stash (s)
alias gs 'git stash'
alias gsa 'git stash apply'
alias gsx 'git stash drop'
alias gsX 'git-stash-clear-interactive'
alias gsl 'git stash list'
alias gsd 'git stash show --patch --stat'
alias gsp 'git stash pop'
alias gsr 'git-stash-recover'
alias gss 'git stash save --include-untracked'
alias gsS 'git stash save --patch --no-keep-index'
alias gsw 'git stash save --include-untracked --keep-index'
alias gsi 'git stash push --staged' # requires Git 2.35
alias gsu 'git stash show --patch | git apply --reverse'

# Submodule (S)
alias gS 'git submodule'
alias gSa 'git submodule add'
alias gSf 'git submodule foreach'
alias gSi 'git submodule init'
alias gSI 'git submodule update --init --recursive'
alias gSl 'git submodule status'
alias gSm 'git-submodule-move'
alias gSs 'git submodule sync'
alias gSu 'git submodule update --remote'
alias gSx 'git-submodule-remove'

# Tag (t)
alias gt 'git tag'
alias gts 'git tag --sign'
alias gtv 'git verify-tag'
alias gtx 'git tag --delete'

# Main working tree (w)
alias gws 'git status --short'
alias gwS 'git status'
alias gwd 'git diff --no-ext-diff'
alias gwD 'git diff --no-ext-diff --word-diff'
alias gwr 'git reset --soft'
alias gwR 'git reset --hard'
alias gwc 'git clean --dry-run'
alias gwC 'git clean -d --force'
alias gwm 'git mv'
alias gwM 'git mv -f'
alias gwx 'git rm -r'
alias gwX 'git rm -rf'

# Working trees (W)
alias gW 'git worktree'
alias gWa 'git worktree add'
alias gWl 'git worktree list'
alias gWm 'git worktree move'
alias gWp 'git worktree prune'
alias gWx 'git worktree remove'
alias gWX 'git worktree remove --force'

# Switch (y)
alias gy 'git switch' # requires Git 2.23
alias gyd 'git switch --detach'