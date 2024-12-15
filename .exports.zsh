# GENERAL
export PATH="/Users/mikekreeki/.dotfiles/bin:$PATH"

# HOMEBREW
export PATH="/usr/local/bin:$PATH"

# OPENSSL
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH" # have openssl@1.1 first in your PATH

export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib" # For compilers to find openssl@1.1
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include" # For compilers to find openssl@1.1

export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig" # For pkg-config to find openssl@1.1

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
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# notwaldorf/tiny-care-terminal
export TTC_WEATHER='Prague'
export TTC_APIKEYS=0
export TTC_REPOS='~/Projects/pb-frontend,~/Projects/pb-backend'

# Electron notarize
export APPLE_TEAM_ID=24KNYM7WQY
