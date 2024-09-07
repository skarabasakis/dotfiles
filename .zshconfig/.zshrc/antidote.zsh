antidote_dir=${ZDOTDIR:-~}/${ZSHCONFIG_PACKAGE_DIR:-.packages}/antidote
if [ ! -d $antidote_dir ]; then
  return
fi

source $antidote_dir/antidote.zsh
antidote load
