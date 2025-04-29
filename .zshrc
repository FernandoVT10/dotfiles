# ZSH Setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="clean"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Aliases
if command -v sudo &> /dev/null; then
    alias aptUp="sudo apt update && sudo apt upgrade"
else
    alias aptUp="doas apt update && doas apt upgrade"
fi

alias cdconf="cd $HOME/dotfiles"
alias cdnotes="cd $HOME/Notes"
alias gg="grep -irnI"
alias ff="find | grep -i"
alias pn=pnpm

# use vim-like commands
bindkey -v

# I don't know what this does, but may solve some problems :)
export TERM=xterm-256color

# Use CTRL + W instead of Arrow-Up
bindkey "^W" history-beginning-search-backward
# Use CTRL + W instead of Arrow-Down
bindkey "^S" history-beginning-search-forward

# Use CapsLock as a second escape
setxkbmap -option caps:escape

# run neofetch in each new zsh terminal
neofetch

# Binaries and $PATH

# PNPM
export PNPM_HOME=$HOME"/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# NVM (node version manager) Setup
export NVM_DIR="$HOME/.nvm"
[ -s "$HOME/.nvm/nvm.sh" ] && \. $NVM_DIR/nvm.sh  # This loads NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GOLang
export PATH=$PATH:/usr/local/go/bin

# append this folder for local binaries
export PATH=$PATH:$HOME/.local/bin
# binares from /usr/sbin folders (mainly nginx)
export PATH=$PATH:/usr/sbin
