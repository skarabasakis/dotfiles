local config_dir=${DOTFILES_DIR:-$HOME/dotfiles}/$1

if [[ ! -d $config_dir ]]; then
  echo "Directory $config_dir does not exist. Home: $HOME"
  return 1
fi

for script in $config_dir/**/*.zsh; do
  source $script
done
