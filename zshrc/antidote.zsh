autoload -U colors && colors
setopt promptsubst

case $(uname -s) in
  Linux) source $HOME/.antidote/antidote.zsh ;;
esac

antidote load
