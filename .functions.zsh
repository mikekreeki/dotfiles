# Open file in EDITOR
function e() {
  if [ "$1" = "" ]
  then
    exec $EDITOR .
  else
    exec $EDITOR "$1"
  fi
}

# Switch projects
function p() {
  proj=$(ls ~/Projects | fzf --query="$1")
  if [[ -n "$proj" ]]; then
      cd ~/Projects/$proj
  fi
}

# Tail development log
function log(){
  tail -f -n 100 log/development.log
}

# Detect empty enter, execute git status if in git dir
magic-enter () {
  if [[ -z $BUFFER ]]; then
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
      echo -ne '\n'
      git status -s
    else
      lsa
    fi
    zle accept-line
  else
    zle accept-line
  fi
}
zle -N magic-enter
bindkey "^M" magic-enter

f() {
  eval $(([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

fe() {
  local file
  file=$(fzf --query="$1" --select-1 --exit-0)
  [ -n "$file" ] && ${EDITOR:-vim} "$file"
}

go() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
