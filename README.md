# Dotfiles

## Dependencies

- [antidote](https://github.com/mattmc3/antidote): zsh plugin manager
- [1password-cli](https://1password.com/downloads/command-line/): for secrets management

## First run

Install dependencies on your shell:

### On macos

```bash
source ~/.zshconfig/setup brew
```

### On linux

```bash
source ~/.zshconfig/setup apt
```
# Features

## Manage dependencies

Add dependencies to
- `.zshconfig/setup-scripts/brew/packages` for macos
- `.zshconfig/setup-scripts/apt/packages` for ubuntu

Rerun `setup` to install dependencies (TODO: Idempotent setup)

