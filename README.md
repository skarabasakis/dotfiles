# Dotfiles

## Requirements

- zsh
- brew (on macos) or apt (on debian)

## Dependencies

- [antidote](https://github.com/mattmc3/antidote): zsh plugin manager
- [1password-cli](https://1password.com/downloads/command-line/): for secrets management
- [github-cli](https://cli.github.com/): for github integration

## First run

1. Clone repo into $ZDOTDIR
2. Run setup-packages to install dependencies

Finally restart shell by running: `exec zsh`

# Features

## Manage dependencies

Add dependencies to
- `.zshconfig/packages/brew/packages` for macos
- `.zshconfig/packages/apt/packages` for ubuntu

Rerun `setup-packages` to install dependencies (TODO: Idempotent setup)

## Manage environment variables

Add environment variables and secrets from 1password to `.env.template`. Add local overrides to `.env.local`.

Rerun `load-env` to regenerate `.env`.
