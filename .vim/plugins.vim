call plug#begin('~/.vim/plugged')

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Terminal
Plug 'tpope/vim-dispatch'

" themes and pretty things
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'hzchirs/vim-material'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'
Plug 'haishanh/night-owl.vim'
Plug 'hzchirs/vim-material'
Plug 'embark-theme/vim', { 'as': 'embark' }

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

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Git
Plug 'tpope/vim-fugitive'

" Icons
Plug 'ryanoasis/vim-devicons'

call plug#end()
