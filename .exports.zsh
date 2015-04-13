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

# Bundler Binstubs
PATH=".git/safe/../../bin:$PATH"

# Android SDK
export PATH="/Users/Kreeki/Development/adt-bundle/sdk/platform-tools:$PATH"
export PATH="/Users/Kreeki/Development/adt-bundle/sdk/tools:$PATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# export VIMRUNTIME=/Applications/MacVim.app/Contents/Resources/vim/runtime/nvim
