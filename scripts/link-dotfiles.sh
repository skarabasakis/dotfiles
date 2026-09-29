# Save previous glob settings and enable it
resetopt=$(setopt | grep -q '^globdots$' && echo "setopt" || echo "unsetopt")
setopt globdots

for file in "${DOTFILES_DIR:-$HOME/dotfiles}"/dotfiles/*; do
  # If target file exists and is not a symlink, rename it to .<current_date>
  if [ -e "$HOME/$(basename "$file")" ] && ! [ -L "$HOME/$(basename "$file")" ]; then
    cp "$HOME/$(basename "$file")" "$HOME/$(basename "$file").$(date +%Y%m%d%H%M%S)"
  fi

  ln -sf "$file" "$HOME/$(basename "$file")"
done

eval $resetopt globdots
