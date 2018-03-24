# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gpl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff --color'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'
alias gm='cd $(git rev-parse --show-toplevel); git submodule --quiet sync ; git submodule update --init --recursive; cd -'
alias gl="git log --abbrev-commit --decorate --date=relative --format=format:'%C(auto)%h%C(reset) %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(green)<%an>%C(reset)%C(auto)%d%C(reset)'"
alias glg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(auto)%h%C(reset) %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(green)<%an>%C(reset)%C(auto)%d%C(reset)'"
alias gmb='git fetch && git merge-base origin/prod origin/dev'
alias gtree="git log --oneline --decorate --all --graph"
alias gitclean='git branch --merged | grep -Ev "(\*|master|prod|dev|develop|staging|beta)" | xargs -n 1 git branch -d'
