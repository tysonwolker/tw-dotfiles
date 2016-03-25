NVM_DIR=$HOME/.nvm
GOPATH=/Users/$USER/go/

# path, the 0 in the filename causes this to load first
path=(
	$path
	$HOME/.yadr/bin
	$HOME/.yadr/bin/yadr
  $GOPATH/bin
)

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# NVM
source $(brew --prefix nvm)/nvm.sh
