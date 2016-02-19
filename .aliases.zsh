# SHELL
alias pwdc='pwd | pbcopy'

alias ll='ls -GFhl'
# alias ls='ls -GFhl'

# RUBYGEMS
alias gi='gem install'
alias gu='gem update'
alias gx='gem uninstall'

# BUNDLER
alias bi='bundle install && restart && stop'

# RSPEC
alias rspec='bin/rspec --format VimFormatter --out quickfix.out --format progress'

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

alias gd='git diff --color $@ | diff-so-fancy | less --tabs=1,5 -RFX'
alias gdc='git diff --cached --color $@ | diff-so-fancy | less --tabs=1,5 -RFX'
alias gdm='git diff master..HEAD'

alias gci='git commit'
alias gme='git merge'
alias grb='git rebase'

alias gls='git ls'
alias gld='git ld'

alias gsh='git show'

alias gwtf='git wtf'
alias gwtfa="git branch | sed 's/^..//' | grep '^\d' | xargs git wtf"

alias gh='git gh'

# SNX
alias snxs='echo druSEqE3 | snx'

# VIM
alias vim='nvim'
alias mvim='nvim'

# NOCORRECT
alias spring='nocorrect spring'
