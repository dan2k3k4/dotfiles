## Docker aliases
function dssh() {
  docker-compose exec cli bash || docker-compose exec --user drupal drupal bash
}

alias dstopall='docker stop $(docker ps -a -q)'
alias dup='docker-compose up -d'
alias dstop='docker-compose stop'
alias d='docker $*'
alias d-c='docker-compose $*'

## Amazee IO Lagoon Pygmy
alias aio='pygmy $*'
