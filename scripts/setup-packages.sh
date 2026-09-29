#!/bin/zsh
SETUP_DIR="${DOTFILES_DIR:-$HOME/dotfiles}/packages"

[ $# -gt 0 ] && package_sources=("$@")

[ -z $package_sources ] && case $(uname -s) in
  Darwin) package_sources=("brew") ;;
  Linux) package_sources=("apt") ;;
esac

for source in ${package_sources[@]};
do
  if [ $source = "brew" ]; then
    for script in $SETUP_DIR/brew/*.sh(N); do
      source $script
    done

    packages=($(cat $SETUP_DIR/brew/packages))
    for package in ${packages[@]}; do
      brew list $package > /dev/null 2>&1 || brew install $package
    done

    brew completions link
  fi

  if [ $source = "apt" ]; then
    for script in $SETUP_DIR/apt/*.sh(N); do
      source $script
    done

    packages=($(cat $SETUP_DIR/apt/packages))
    packages_to_install=()
    sudo apt update
    for package in ${packages[@]}; do
      dpkg -l $package > /dev/null 2>&1 || packages_to_install+=($package)
    done
    [ ${#packages_to_install[@]} -gt 0 ] && sudo apt install ${packages_to_install[@]}
  fi
done
