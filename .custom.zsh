# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Always sets the tab title to current dir (requires DISABLE_AUTO_TITLE enabled in oh-my-zsh)
precmd() {
  echo -ne "\e]1;${PWD##*/}\a"
}
