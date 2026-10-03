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

Add dotfiles under the `dotfiles` directory.
Run `link-dotfiles` to link the dotfiles to the home directory.

## Manage dependencies

Add dependencies to the corresponding package file:
- `packages/brew/packages` for macos
- `packages/apt/packages` for ubuntu

Run `setup-packages` to install new dependencies

## Manage zshrc scripts

Add custom zshrc scripts to `$DOTFILES_DIR/zshrc`. The files should be named like `*.zsh` and will be automatically sourced when the shell starts.

Run `load-config` or simply restart the shell to load the configurations in the current shell.
