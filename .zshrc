source ~/.dotfiles/.oh-my-zsh.zsh
source ~/.dotfiles/.aliases.zsh
source ~/.dotfiles/.autopair.zsh
source ~/.dotfiles/.colors.zsh
source ~/.dotfiles/.completion.zsh
source ~/.dotfiles/.functions.zsh
source ~/.dotfiles/.exports.zsh
source ~/.dotfiles/.setopt.zsh
source ~/.dotfiles/.custom.zsh
source ~/.dotfiles/mikekreeki.zsh-theme

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

export NVM_DIR="/Users/mikekreeki/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
