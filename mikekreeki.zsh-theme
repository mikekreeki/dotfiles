PROMPT='(%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ~"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}+"
ZSH_THEME_GIT_PROMPT_CLEAN=""
