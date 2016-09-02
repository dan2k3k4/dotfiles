## Drupal
alias dsh='drush $1 ssh'

function dsql() {
  drush sql-sync $1 default -d -v
}

function dfiles() {
  drush rsync $1:%files default:%files -d -v
}

