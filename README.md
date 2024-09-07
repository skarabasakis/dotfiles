# Dotfiles

## Requirements

- zsh
- brew (on macos) or apt (on debian)
- git

## Dependencies

- [antidote](https://github.com/mattmc3/antidote): zsh plugin manager
- [1password-cli](https://1password.com/downloads/command-line/): for secrets management
- [asdf](https://asdf-vm.com/#/): for managing runtime versions

## Install

```shell
git clone skarabasakis/dotfiles $ZDOTDIR
setup-packages
```

Finally restart shell by running: `exec zsh`

# Features

## Manage dependencies

Add dependencies to
- `.zshconfig/packages/brew/packages` for macos
- `.zshconfig/packages/apt/packages` for ubuntu

Rerun `setup-packages` to install new dependencies

## Manage environment variables

Add environment variables and secrets from 1password to `.env.template`. Add local overrides to `.env.local`.

Rerun `load-env` to regenerate `.env`.

## Manage configurations

Instead of adding configurations to `.zshrc`, add them to `.zshconfig/.zshrc`.
