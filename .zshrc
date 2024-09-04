alias load-env='source ${ZDOTDIR:-~}/.zshconfig/load-env'
alias load-config='source ${ZDOTDIR:-~}/.zshconfig/load-config'

load-env --existing
load-config .zshrc
