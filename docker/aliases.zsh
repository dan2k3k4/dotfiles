## Docker alias
alias dssh='docker-compose exec cli bash'
alias dstopall='docker stop $(docker ps -a -q)'
alias dup='docker-compose up -d'
alias dstop='docker-compose stop'
alias d='docker $*'
alias d-c='docker-compose $*'

## Amazee IO Lagoon Pygmy
alias aio='pygmy $*'
