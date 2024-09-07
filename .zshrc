scripts_dir=${ZDOTDIR:-~}/.zshconfig/scripts
export PATH="$scripts_dir:$PATH"

alias load-env="source $scripts_dir/load-env.sh"
alias load-config="source $scripts_dir/load-config.sh"

load-env --existing
load-config .zshrc
