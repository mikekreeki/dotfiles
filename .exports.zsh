# GENERAL
export PATH="/Users/mikekreeki/.dotfiles/bin:$PATH"

# HOMEBREW
export PATH="/usr/local/bin:$PATH"

# RVM
export PATH="$HOME/.rvm/bin:$PATH"

# NPM
export PATH="/usr/local/share/npm/bin:$PATH"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Coreutils from Homebrew
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Bundler Binstubs
PATH=".git/safe/../../bin:$PATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Nvim
export NVIM_TUI_ENABLE_TRUE_COLOR=1
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# Java/JRUBY
export JAVA_OPTS="-XX:-UseConcMarkSweepGC"
export JRUBY_OPTS="-J-Xmx4g"

# notwaldorf/tiny-care-terminal
export TTC_WEATHER='Prague'
export TTC_APIKEYS=0
export TTC_REPOS='~/Projects/pb-frontend,~/Projects/pb-backend'

# Electron notarize
export APPLE_TEAM_ID=24KNYM7WQY
