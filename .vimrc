" set 265 colours
set t_Co=256

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compability
set nocompatible

syntax on
set mouse=a
set showmatch

set winaltkeys=no

set autoindent
set cindent
set backspace=2
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set timeoutlen=150

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" syntastic
let g:syntastic_cpp_checkers = ['cppcheck']

set textwidth=120

set comments=sl:/*,mb:\ *,elx:\ */

set number
set smarttab
colorscheme default

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap jj     <Esc>A;<Esc>
inoremap jk     <Esc>

" moving around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" sane search
nnoremap <silent> n nzz
nnoremap <silent> N Nzz

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
vnoremap < <gv  
vnoremap > >gv 

set iskeyword-=_
imap <A-Space> <Esc>

set nocp
filetype plugin on

set hlsearch
set ignorecase
set incsearch

execute pathogen#infect()
execute pathogen#helptags()
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler = '-std=c++11'

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
 if exists("t:expl_buf_num")
     let expl_win_num = bufwinnr(t:expl_buf_num)
     if expl_win_num != -1
         let cur_win_nr = winnr()
         exec expl_win_num . 'wincmd w'
         close
         exec cur_win_nr . 'wincmd w'
         unlet t:expl_buf_num
     else
         unlet t:expl_buf_num
     endif
 else
     exec '1wincmd w'
     Vexplore
     let t:expl_buf_num = bufnr("%")
 endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Change directory to the current buffer when opening files.
set autochdir

let g:netrw_winsize = 20
