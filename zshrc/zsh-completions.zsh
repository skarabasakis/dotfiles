# https://docs.brew.sh/Shell-Completion
case $(uname) in
  Darwin) autoload -Uz compinit && compinit ;;
esac
