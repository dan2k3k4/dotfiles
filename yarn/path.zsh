# sup yarn
# https://yarnpkg.com

if (( $+commands[yarn] ))
then
  export PATH="$PATH:`yarn global bin`"
fi

if (( $+commands[npm] ))
then
  export PATH="$PATH:`npm -g bin`"
fi

