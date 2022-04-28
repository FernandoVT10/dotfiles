call plug#begin('~/.vim/plugged')

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Terminal
Plug 'tpope/vim-dispatch'

" themes and pretty things
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'

" themes
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'haishanh/night-owl.vim'
Plug 'folke/tokyonight.nvim'
Plug 'hzchirs/vim-material'
Plug 'arcticicestudio/nord-vim'
Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Syntax highlight
Plug 'sheerun/vim-polyglot'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sirver/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'

" Testing
Plug 'vim-test/vim-test'

" Productivity
Plug 'easymotion/vim-easymotion'
Plug 'vimlab/split-term.vim'

" File Exploring
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Other
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/vimux'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Git
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'

" Icons
Plug 'ryanoasis/vim-devicons'

call plug#end()
