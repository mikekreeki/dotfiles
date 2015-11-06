source ~/.dotfiles/.oh-my-zsh.zsh
source ~/.dotfiles/.aliases.zsh
source ~/.dotfiles/.colors.zsh
source ~/.dotfiles/.completion.zsh
source ~/.dotfiles/.functions.zsh
source ~/.dotfiles/.exports.zsh
source ~/.dotfiles/.setopt.zsh
source ~/.dotfiles/.custom.zsh
source ~/.dotfiles/mikekreeki.zsh-theme

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
