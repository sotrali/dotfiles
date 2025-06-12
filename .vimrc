" basic yummies 
syntax on
set showcmd
set incsearch
set hlsearch
set number
set relativenumber

" basic file explorer (p to preview hovered file, ctrl+w,z to close)
let g:netrw_winsize = 15
let g:netrw_banner = 0
let g:netrw_altv = 1
let g:netrw_alto = 1
let g:netrw_browse_split = 2
map <silent> <C-E> :Lexplore<CR>

" indentation
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set list
set listchars=multispace:\ \ ▸

" folding
set foldmethod=indent
set foldnestmax=10
nnoremap U :syntax sync fromstart<cr>:redraw!<cr> " fix syntax highlighting glitch

" splitting
set splitright
set splitbelow
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
