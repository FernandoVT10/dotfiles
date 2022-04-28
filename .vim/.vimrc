set number
set mouse=
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch

set expandtab
set tabstop=2
set shiftwidth=2

set relativenumber
set laststatus=2
set noshowmode
set guifont=Suruma\ 11

let g:polyglot_disabled = ['autoindent']

so ~/dotfiles/.vim/plugins.vim
so ~/dotfiles/.vim/maps.vim
so ~/dotfiles/.vim/plugin-config.vim
