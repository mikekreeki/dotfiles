# SHELL
alias pwdc='pwd | pbcopy'

alias ll='ls -GFhl --color=tty'
alias lsa='ls -GFhla --color=tty'

# RUBYGEMS
alias gi='gem install'
alias gu='gem update'
alias gx='gem uninstall'

# BUNDLER
alias bi='bundle install && touch tmp/restart.txt && spring stop'

# RAILS
alias restart='mkdir -p tmp && touch tmp/restart.txt'
alias stop='spring stop 2>/dev/null'

# GIT
alias gs='git status -s'
alias ga='git add'

alias gbr='git branch'
alias gbf='git branch | cut -c3- | fzf | xargs git checkout'
alias gcl='git clone'
alias gco='git checkout'

alias gd='git diff --color $@'
alias gdc='git diff --cached --color $@'
alias gdm='git diff master..HEAD'

alias gci='git commit'
alias gme='git merge'
alias grb='git rebase'
alias grbm='git fetch && git rebase origin/master'

alias gls='git ls'
alias gld='git ld'

alias gsh='git show'

alias gwtf='git wtf'
alias gwtfa="git branch | sed 's/^..//' | grep '^\d' | xargs git wtf"

alias gh='git gh'
alias up='git up'

# SNX
alias snxs='echo druSEqE3 | snx'

# VIM
alias vim='nvim'
alias mvim='nvim'

# NOCORRECT
alias spring='nocorrect spring'

# REACT NATIVE
alias packager='./node_modules/react-native/packager/packager.sh'

# Dokku
alias dokku='$HOME/.dokku/contrib/dokku_client.sh'

# Misc
alias weather='curl wttr.in'
alias parrot='curl parrot.live'
