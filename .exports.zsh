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
export ANDROID_HOME=/usr/local/opt/android-sdk

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Nvim
export NVIM_TUI_ENABLE_TRUE_COLOR=1
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# export VIMRUNTIME=/Applications/MacVim.app/Contents/Resources/vim/runtime/nvim
