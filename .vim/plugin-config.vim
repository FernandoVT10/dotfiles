" lose tags file types
let g:closetag_filenames = '*.html,*.jsx,*.tsx'

let g:lightline = {
  \ 'colorscheme': 'embark',
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

" let g:material_style='oceanic'
" set background=dark
colorscheme embark

hi Comment guifg=#ABCDEF

" Set background transparetn
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

" NERDTree configutation
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

"Coc vim Configuration
autocmd CursorHold * silent call CocActionAsync("highlight")

" UltiSnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = "left"

" Testing configuration
let test#strategy = "dispatch"

" markdown preview
let g:mkdp_browser = 'google-chrome'
