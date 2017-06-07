alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias sweep='find "$(pwd -P)" -type d -exec dot_clean -m "{}" \;'

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

function clear-image-exif-data() {
  exiftool -all= $1
  rm $1'_original'
}
