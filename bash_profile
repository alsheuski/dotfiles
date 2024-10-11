####################################################
#
# Exports
#
####################################################

export PATH="$PATH:`yarn global bin`"

####################################################
#
# Aliases
#
####################################################

alias l="ls -lah"
alias p="cd ~/Projects"

####################################################
#
# Sources
#
####################################################

source $HOME/.oh-my-git/prompt.sh

# added by Anaconda2 4.2.0 installer
export PATH="$HOME/anaconda/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm 

. "$HOME/.cargo/env"
