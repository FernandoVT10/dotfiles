export ZSH="/home/fernando/.oh-my-zsh"

ZSH_THEME="clean"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


# Aliases

# Update and upgrade apt
alias aptUp="sudo apt update && sudo apt upgrade"
alias cdconf="cd $HOME/dotfiles"

# start and stop mongodb service
alias mongoUp="sudo systemctl start mongod"
alias mongoDown="sudo systemctl stop mongod"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# A neccessary configuration to play windows games with wine
export MESA_GL_VERSION_OVERRIDE=4.4

# use vim-like commands
bindkey -v

# some gpg config
[ -f "/home/fernando/.ghcup/env" ] && source "/home/fernando/.ghcup/env" # ghcup-env

# run neofetch in each new zsh terminal
neofetch
