# Dotfiles

Personal dotfiles for zsh, and some scripts to manage them.

## Targets

- macos (brew)
- debian / ubuntu (apt)

## Install on a new machine

```shell
git clone skarabasakis/dotfiles
echo "DOTFILES_DIR=$(pwd)" >> ~/.zshenv
source ~/.zshenv
source $DOTFILES_DIR/scripts/link-dotfiles.sh
source $DOTFILES_DIR/scripts/setup-packages.sh
```

# Features

## Manage dotfiles

Add dotfiles to `.zshconfig/dotfiles`.
Run `link-dotfiles` to link the dotfiles.

## Manage dependencies

Add dependencies to
- `.zshconfig/packages/brew/packages` for macos
- `.zshconfig/packages/apt/packages` for ubuntu

Run `setup-packages` to install new dependencies

## Manage configurations

Instead of adding configurations to `.zshrc`, add them to `$DOTFILES_DIR/zshrc`.

Run `load-config` or simply restart the shell to load the configurations.
