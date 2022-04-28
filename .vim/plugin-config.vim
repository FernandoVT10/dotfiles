" lose tags file types
let g:closetag_filenames = '*.html,*.jsx,*.tsx'

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ 'active': {
  \   'left': [[ 'mode', 'paste' ], ['gitbranch'], [ 'readonly', 'filename',  'modified' ]],
  \   'right': [['lineinfo'], ['filetype']]
  \ },
  \ 'component': {
  \   'gitbranchicon': '',
  \ },
  \ 'component_function': {
  \   'gitbranch': 'GitBranch',
  \   'filetype': 'FileType',
  \ },
  \ }


function GitBranch() 
  return ' '.FugitiveHead()
endfunction

function FileType()
  return WebDevIconsGetFileTypeSymbol() . ' ' . &filetype
endfunction

"Emmet key leader
let g:user_emmet_leader_key=','

" Set theme
set termguicolors
colorscheme onedark

" Set the color of comments
hi Comment guifg=#ABCDEF

" Set background transparent
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

" NERDTree configutation
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

"Coc vim Configuration
autocmd CursorHold * silent call CocActionAsync("highlight")

" UltiSnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/dotfiles/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = "left"

" Testing configuration
let test#strategy = "neovim"

" markdown preview
let g:mkdp_browser = 'brave-browser'
