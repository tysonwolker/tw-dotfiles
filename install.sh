#!/bin/sh

function removeInstallation {
	echo "Removing existing YADR installation"
	rm -rf ~/.yadr
}

while getopts ":f" opt; do
  case "$opt" in
    f)
      removeInstallation
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone --depth=1 https://github.com/tysonwolker/tw-dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "YADR is already installed"
fi
