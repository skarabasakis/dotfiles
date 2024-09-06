# Append .zshconfig/scripts to path
export PATH=${ZDOTDIR:-~}/.zshconfig/scripts:$PATH

load-env --existing
load-config .zshrc
