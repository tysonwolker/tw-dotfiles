# NVM
export NVM_DIR=$HOME/.nvm
source $(brew --prefix nvm)/nvm.sh

# Go
export GOPATH=/Users/$USER/go/

# path, the 0 in the filename causes this to load first
path=(
  $GEM_HOME/bin
  $HOME/.rvm/bin
	$path
	$HOME/.yadr/bin
	$HOME/.yadr/bin/yadr
  $GOPATH/bin
  ./node_modules/.bin
)
