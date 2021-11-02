let mapleader=" "

" NERDTree
nmap <Leader>nt :NERDTreeFind<CR>

" Easy Motion
nmap <Leader>s <Plug>(easymotion-s2)

" Save file and quit file
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" MOve tab to left and right
nmap <Leader>l :tabmove +1<CR>
nmap <Leader>h :tabmove -1<CR>

" Testing
nmap <Leader>t :TestNearest<CR>
nmap <Leader>T :TestFile<CR>
nmap <Leader>TT :TestSuite<CR>

" Files
nmap <Leader>f :Files<CR>
nmap <Leader>ag :Ag<CR>

" Coc nvim gotos
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Coc nvim enter autocompletation
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function RunTest()
  let s:directory = expand("%:r") .. "." .. expand("%:e")
   :execute "Dispatch !node_modules/.bin/jest --coverage -- " .. s:directory
endfunction

nmap <Leader>tc :call RunTest()<CR>
