source ~/.dotfiles/.oh-my-zsh.zsh
source ~/.dotfiles/.aliases.zsh
source ~/.dotfiles/.autopair.zsh
source ~/.dotfiles/.colors.zsh
source ~/.dotfiles/.completion.zsh
source ~/.dotfiles/.functions.zsh
source ~/.dotfiles/.exports.zsh
source ~/.dotfiles/.setopt.zsh
source ~/.dotfiles/.custom.zsh
source ~/.dotfiles/.excluded.zsh
source ~/.dotfiles/mikekreeki.zsh-theme

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# LOAD NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source ~/.dotfiles/.nvm.zsh

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/mikekreeki/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

# export LDFLAGS="-L/usr/local/opt/postgresql@10/lib -L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/postgresql@10/include -I/usr/local/opt/openssl@1.1/include"

# export LDFLAGS="-L/usr/local/opt/postgresql@14/lib"
# export CPPFLAGS="-I/usr/local/opt/postgresql@14/include"

# The next line updates PATH for Netlify's Git Credential Helper.
test -f '/Users/mikekreeki/Library/Preferences/netlify/helper/path.zsh.inc' && source '/Users/mikekreeki/Library/Preferences/netlify/helper/path.zsh.inc'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# activate the autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export ANDROID_HOME=$HOME/Library/Android/sdk

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
