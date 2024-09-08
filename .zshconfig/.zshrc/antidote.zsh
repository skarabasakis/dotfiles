antidote_dir=${ZDOTDIR:-~}/${ZSHCONFIG_PACKAGE_DIR:-.packages}/antidote
if [ ! -d $antidote_dir ]; then
  return
fi

autoload -U colors && colors
setopt promptsubst

source $antidote_dir/antidote.zsh
antidote load
