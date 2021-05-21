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

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/mikekreeki/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

# export LDFLAGS="-L/usr/local/opt/postgresql@10/lib -L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/postgresql@10/include -I/usr/local/opt/openssl@1.1/include"

export LDFLAGS="-L/usr/local/opt/postgresql@10/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@10/include"
