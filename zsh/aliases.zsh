alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias sweep='find "$(pwd -P)" -type d -exec dot_clean -m "{}" \;'

function clear-image-exif-data() {
  exiftool -all= $1
  rm $1'_original'
}
