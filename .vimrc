" set 265 colours

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'bling/vim-airline'
Bundle 'morhetz/gruvbox'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'myusuf3/numbers.vim'
Bundle 'ervandew/supertab'
Bundle 'jiangmiao/auto-pairs'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'tmhedberg/SimpylFold'
Bundle 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'nvie/vim-flake8'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'hdima/python-syntax'
Bundle 'endel/vim-github-colorscheme'
Bundle 'kien/ctrlp.vim'
Bundle 'tomasr/molokai'

filetype plugin indent on

set t_Co=256
set exrc
set secure
set lazyredraw
set cursorline
set foldmethod=indent
set foldlevel=99

let python_version_2=1
let g:SimplyFold_docstring_preview=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <space> za

set splitright

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

syntax on
set mouse=a
set showmatch
set title

set winaltkeys=no
set nowrap
set autoindent
set cindent
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set nobackup
set shell=/bin/zsh

" timeout for commands
set timeoutlen=150

" tabs
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
let g:airline#extensions#branch#enabled = 1

" syntastic
let g:syntastic_cpp_checkers = ['cppcheck']
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ["pep8", "pylint", "python"]

let mapleader=","

" too long column
set textwidth=100
highlight ColorColumn ctermbg=red
set colorcolumn=101

set comments=sl:/*,mb:\ *,elx:\ */

" search
nnoremap <silent> n n:call HLNext(0.5)<CR>
nnoremap <silent> N N:call HLNext(0.5)<CR>

function! HLNext (blinktime)
    "highlight WhiteOnRed ctermfg=white ctermbg=red
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#'.@/
    let ring = matchadd('WhiteOnRed', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

set number
set smarttab

map <Leader>o ;NERDTreeToggle<CR>

nmap <F2> ;w<CR>
imap <F2> <ESC>;w<CR>a
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

inoremap (  ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap () ()
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" Esc binds
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
vnoremap <silent> n nzz
vnoremap <silent> N Nzz

" working with tabs
nnoremap th ;tabfirst<CR>
nnoremap tj ;tabnext<CR>
nnoremap tk ;tabprev<CR>
nnoremap tl ;tablast<CR>
nnoremap tt ;tabedit<Space>
nnoremap tn ;tabnew<CR>
vnoremap < <gv
vnoremap > >gv
cmap w!! w !sudo tee % >/dev/null

" switch : and ;
nnoremap ; :
nnoremap : ;

set iskeyword-=_
set iskeyword+=:
imap <A-Space> <Esc>

set nocp
filetype plugin on

set hlsearch
set ignorecase
set incsearch

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler = '-std=c++11'

autocmd FileType c,cpp autocmd BufWritePre <buffer> ;%s/\s\+$//e

" tags support
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.h set omnifunc=omni#cpp#complete#Main
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set ttyfast
set ttyscroll=3
set lazyredraw

map <Leader>e ;MBEOpen<CR>
map <Leader>c ;MBEClose<CR>
map <Leader>t ;MBEToggle<CR>
noremap <C-Tab> ;MBEbn<CR>
noremap <C-S-Tab> ;MBEbp<CR>

colorscheme molokai
set background=dark

let python_highlight_all=1

set visualbell t_vb=
set novisualbell

command! Fjson %!python -m json.tool

set wildignore+=*.pyc

let g:molokai_original = 1
