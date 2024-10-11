export ZSH="$HOME/.oh-my-zsh"

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


export NVM_DIR="$HOME/.nvm"
[ -s "$HOME/.nvm/nvm.sh" ] && \. $NVM_DIR/nvm.sh  # This loads NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# A neccessary configuration to play windows games with wine
export MESA_GL_VERSION_OVERRIDE=4.4

# use vim-like commands
bindkey -v

# some gpg config
[ -f "/home/fernando/.ghcup/env" ] && source "/home/fernando/.ghcup/env" # ghcup-env

export PATH=$PATH:$HOME/.local/bin

export TERM=xterm-256color

# This will allow me to use ranger with image preview
# "TERM" should be equal to "xterm-kitty" to render images correctly
alias ranger-fm="env TERM=xterm-kitty ranger"

# Use CTRL + W instead of Arrow-Up
bindkey "^W" history-beginning-search-backward
# Use CTRL + W instead of Arrow-Down
bindkey "^S" history-beginning-search-forward

# Use CapsLock as a second escape
setxkbmap -option caps:escape

# run neofetch in each new zsh terminal
neofetch
