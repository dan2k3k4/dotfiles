## Drupal
alias dsh='drush $1 ssh'

function dsql() {
  drush sql-sync $1 default -d -v
}

function dfiles() {
  drush rsync $1:%files default:%files -d -v
}

alias drupal-truncate-cache-tables="Q=''; drush sqlq 'SHOW TABLES' | grep cache | { while read table; do Q=$Q\"TRUNCATE TABLE $table; \"; done; drush sqlq \"$Q\"; }"

alias drupalcs="phpcs --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

alias drupalcsp="phpcs --standard=DrupalPractice --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

alias drupalcbf="phpcbf --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

