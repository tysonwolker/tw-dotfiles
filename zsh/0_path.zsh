# NVM
source $(brew --prefix nvm)/nvm.sh

# RVM
source ~/.rvm/scripts/rvm

NVM_DIR=$HOME/.nvm
GOPATH=/Users/$USER/go/
# path, the 0 in the filename causes this to load first
path=(
  $GEM_HOME/bin
  $HOME/.rvm/bin
	$path
	$HOME/.yadr/bin
	$HOME/.yadr/bin/yadr
  $GOPATH/bin
)
