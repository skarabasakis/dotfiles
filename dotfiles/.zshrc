scripts_dir=${DOTFILES_DIR:-$HOME/dotfiles}/scripts
export PATH="$scripts_dir:$PATH"

alias load-config="source $scripts_dir/load-config.sh"
alias setup-packages="source $scripts_dir/setup-packages.sh"
alias link-dotfiles="source $scripts_dir/link-dotfiles.sh"

load-config zshrc
