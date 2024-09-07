# https://asdf-vm.com/guide/getting-started.html
export ASDF_DIR="${ZDOTDIR:-~}/.packages/asdf"

source "$ASDF_DIR/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
